using System;
using System.Collections.Generic;
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
        public LocationListViewModel() : base(){

        }
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
            List<int> idList = locationService.GetIdListInArea((float)location.Latitude, (float)location.Longitude, 20).Result;
            //List<int> idList = locationService.GetIdListInArea(52.2297f, 21.0122f, 20).Result;
            Locations = new ObservableRangeCollection<Location>(locationService.GetLocationListByIds(idList).Result);


            ClearFilter();
        }

        #region Komendy
        public ICommand FilterLocationsByNameCommand =>
            new Command<string>((string query) => {
                currentNameFilter = query;
                ApplyFilters();
            });
        public ICommand LoadMoreCommand =>
            new Command(async => {
                var peepee = "poopoo"; // PLACEHOLDER
            });
        #endregion Komendy
    }
}
