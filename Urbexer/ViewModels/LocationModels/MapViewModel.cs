using System.Collections.Generic;
using System.Threading.Tasks;
using Urbexer.Services;
using Urbexer.ViewModels.LocationModels;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Location = Urbexer.Models.Location;

namespace Urbexer.ViewModels {
    internal class MapViewModel : BaseLocationViewModel {
        public MapViewModel() : base() {
            Task.Run(async () => await InitializeLocations());
        }

        // Funkcja do pierwotnego zapełnienia mapy
        protected async Task InitializeLocations() {
            var location = await Geolocation.GetLastKnownLocationAsync();
            int range = 100;
            List<int> idList = await LocationService.GetIdListInArea((float)location.Latitude, (float)location.Longitude, range);
            LocationsFiltered.Add(new ObservableRangeCollection<Location>(await LocationService.GetLocationListByIds(idList)));

            ClearFilter();
        }
    }
}
