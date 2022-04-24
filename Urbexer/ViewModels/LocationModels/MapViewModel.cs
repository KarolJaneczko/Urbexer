using Urbexer.Models;
using Xamarin.CommunityToolkit.ObjectModel;
using Urbexer.Services;
using System.Threading.Tasks;
using Urbexer.Views;
using Xamarin.Forms;
using System.Windows.Input;
using System.Collections.Generic;
using Xamarin.Essentials;
using Location = Urbexer.Models.Location;
using Urbexer.ViewModels.LocationModels;

namespace Urbexer.ViewModels {
    internal class MapViewModel : BaseLocationViewModel{
        public MapViewModel() : base(){
            InitializeLocations();
        }

        // Funkcja do pierwotnego zapełnienia mapy
        protected async Task InitializeLocations() {
            var location = await Geolocation.GetLastKnownLocationAsync();
            List<int> idList = await LocationService.GetIdListInArea((float)location.Latitude, (float)location.Longitude, 20);
            LocationsFiltered.Add(new ObservableRangeCollection<Location>(await LocationService.GetLocationListByIds(idList)));

            ClearFilter();
        }
    }
}
