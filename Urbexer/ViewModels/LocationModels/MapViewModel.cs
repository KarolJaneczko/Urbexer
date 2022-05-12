using System.Collections.Generic;
using System.Threading.Tasks;
using Urbexer.Services;
using Urbexer.ViewModels.LocationModels;
using Xamarin.Essentials;

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
            AddLocations(await LocationService.GetLocationListByIds(idList));

            ClearFilter();
        }
    }
}
