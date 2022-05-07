using Plugin.Connectivity;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using Urbexer.Services;
using Urbexer.ViewModels.LocationModels;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Location = Urbexer.Models.Location;

namespace Urbexer.ViewModels {
    internal class LocationListViewModel : BaseLocationViewModel {
        public AsyncCommand LoadMoreCommand { get; }
        private List<int> loadedLocationsIds = new List<int>();
        private int currentLoadRange = 0;
        private bool isLoading = false;
        private bool noInternet = false;
        public LocationListViewModel() : base() {
            LoadMoreCommand = new AsyncCommand(LoadMore);
        }

        #region Komendy
        public ICommand FilterLocationsByNameCommand =>
            new Command<string>((string query) => {
                currentNameFilter = query;
                ReapplyFilters();
            });

        // Powiększ zasięg wczytywania lokacji i pobierz nowe lokacje
        async Task LoadMore() {
            if (!CrossConnectivity.Current.IsConnected) noInternet = true;
            if (noInternet) return;
            if (isLoading) return; // Nie powzól na więcej niż jeden task LoadMore jednocześnie
            isLoading = true;

            List<int> newIds = new List<int>();
            Xamarin.Essentials.Location location = await Geolocation.GetLastKnownLocationAsync();
            while (newIds.Count() == 0) {
                currentLoadRange += 30;
                newIds = await LocationService.GetIdListInArea(
                    (float)location.Latitude, (float)location.Longitude, currentLoadRange).ConfigureAwait(false);
                newIds = newIds.Except(loadedLocationsIds).ToList();
            }
            var newLocations = await LocationService.GetLocationListByIds(newIds).ConfigureAwait(false);
            SortLocationsByDistance(newLocations);
            LocationsFiltered.AddRange(newLocations);
            loadedLocationsIds.AddRange(newIds);

            isLoading = false;
        }
        #endregion Komendy

        #region Metody
        // Sortuje daną liste lokacji
        private void SortLocationsByDistance(List<Location> locations) {
            if (locations == null) return;

            locations.Sort((location1, location2) => {
                if (location1.Distance == location2.Distance) return 0;
                return location1.Distance < location2.Distance ? -1 : 1;
            });
        }
        #endregion
    }
}
