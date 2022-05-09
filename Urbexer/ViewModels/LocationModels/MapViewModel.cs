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
        /// <summary>
        /// ViewModel mapy.
        /// </summary>
        public MapViewModel() : base() { }

        /// <summary>
        /// Wczytuje wszystkie lokacje w danym zasięgu. <para/>
        /// W razie potrzeby pobiera dodatkowe lokacje z bazy.
        /// </summary>
        public async Task LoadLocations(int range) {
            var location = await Geolocation.GetLastKnownLocationAsync();
            List<int> idList = await LocationService.GetIdListInArea((float)location.Latitude, (float)location.Longitude, range);
            LocationsFiltered.Add(new ObservableRangeCollection<Location>(await LocationService.GetLocationListByIds(idList)));

            ClearFilter();
        }
    }
}
