using Xamarin.CommunityToolkit.ObjectModel;
using Urbexer.Services;
using System.Threading.Tasks;
using System.Collections.Generic;
using Xamarin.Essentials;
using Location = Urbexer.Models.Location;
using Urbexer.ViewModels.LocationModels;

namespace Urbexer.ViewModels {
    internal class MapViewModel : BaseLocationViewModel {
        public MapViewModel() : base() {
            InitializeLocations().Wait();
        }

        // Funkcja do pierwotnego zapełnienia mapy
        protected async Task InitializeLocations() {
            //Locations = new ObservableRangeCollection<Location>(locationService.GetLocationListAll().Result);

            /*
            List<int> idList = new List<int>();
            for (int i = 0; i < 2000; i++) {
                idList.Add(i);
            }
            Locations = new ObservableRangeCollection<Location>(locationService.GetLocationListByIds(idList).Result);
            */

            var location = await Geolocation.GetLastKnownLocationAsync();
            List<int> idList = LocationService.GetIdListInArea((float)location.Latitude, (float)location.Longitude, 20).Result;
            //List<int> idList = locationService.GetIdListInArea(52.2297f, 21.0122f, 20).Result;
            Locations = new ObservableRangeCollection<Location>(LocationService.GetLocationListByIds(idList).Result);

            ClearFilter();
        }
    }
}
