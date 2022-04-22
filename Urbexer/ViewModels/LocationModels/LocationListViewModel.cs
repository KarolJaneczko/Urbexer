using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Services;
using Urbexer.ViewModels.LocationModels;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Location = Urbexer.Models.Location;

namespace Urbexer.ViewModels {
    internal class LocationListViewModel : BaseLocationViewModel{
        public AsyncCommand LoadMoreCommand { get; }
        private List<int> loadedLocationsIds = new List<int>();
        private int currentLoadRange = 0;
        public LocationListViewModel() : base(){
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
                currentLoadRange += 30;
                Xamarin.Essentials.Location location = await Geolocation.GetLastKnownLocationAsync();
                newIds = await LocationService.GetIdListInArea((float)location.Latitude, (float)location.Longitude, currentLoadRange);
                newIds = newIds.Except(loadedLocationsIds).ToList();
            }
            var newLocations = await LocationService.GetLocationListByIds(newIds);
            SortLocationsByDistance(newLocations);
            //Locations.AddRange(newLocations);
            LocationsFiltered.AddRange(newLocations);
            loadedLocationsIds.AddRange(newIds);
            
            //ReapplyFilters();
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
