using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Services;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Location = Urbexer.Models.Location;

namespace Urbexer.ViewModels {
    public class HomeViewModel : BaseViewModel {
        public ICommand GoBackCommand { get; private set; }
        public ObservableRangeCollection<Location> Locations { get; set; }
        public HomeViewModel() {
            GoBackCommand = new Command(async (x) => {
                if (await LogoutPopout()) {
                    UserInfo.Logout();
                    await Shell.Current.GoToAsync("WelcomePage");
                }
            });
            Locations = new ObservableRangeCollection<Location>();
            Task.Run(async () => await LoadLocations());
        }
        public async Task<bool> LogoutPopout() {
            var result = await Shell.Current.DisplayAlert("Uwaga", "Czy chcesz się wylogować?", "Nie", "Tak");
            if (result != true)
                return true;
            else
                return false;
        }

        private async Task LoadLocations() {
            int requiredLocationsCount = 10;
            int range = 0;
            List<int> ids = new List<int>();
            Xamarin.Essentials.Location userPosition = await Geolocation.GetLastKnownLocationAsync();
            
            // Pobieraj kolejne id lokacji dopóki nie jest ich tyle co wymagane
            while (ids.Count < requiredLocationsCount) {
                range += 30;
                ids.AddRange(await LocationService.GetIdListInArea(
                    (float)userPosition.Latitude, (float)userPosition.Longitude, range, unvisitedOnly: false));
            }
            var newLocations = await LocationService.GetLocationListByIds(ids);
            SortLocationsByDistance(newLocations);

            // Usuń nadwyżke lokacji
            if (newLocations.Count > requiredLocationsCount)
                newLocations.RemoveRange(10, newLocations.Count - requiredLocationsCount);
            Locations.AddRange(newLocations);
        }

        // Sortuje daną liste lokacji
        private void SortLocationsByDistance(List<Location> locations) {
            if (locations == null) return;

            locations.Sort((location1, location2) => {
                if (location1.Distance == location2.Distance) return 0;
                return location1.Distance < location2.Distance ? -1 : 1;
            });
        }
    }
}