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
        public LocationListViewModel() : base() {
            LoadMore();
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
            List<int> newIds = new List<int>();
            while (newIds.Count() == 0) {
                currentLoadRange += 5;
                Xamarin.Essentials.Location location = await Geolocation.GetLastKnownLocationAsync();
                newIds = await LocationService.GetIdListInArea((float)location.Latitude, (float)location.Longitude, currentLoadRange);
                newIds = newIds.Except(loadedLocationsIds).ToList();
            }
            Locations.AddRange(await LocationService.GetLocationListByIds(newIds));
            loadedLocationsIds.AddRange(newIds);

            ReapplyFilters();
        }
        #endregion Komendy
    }
}
