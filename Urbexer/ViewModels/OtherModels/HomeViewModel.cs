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
        public class Question {
            public string ImageIcon { get; set; }
            public string BackgroundSource { get; set; }
            public string Title { get; set; }
            public string BodyDescription { get; set; }
        }
        public ICommand GoBackCommand { get; private set; }
        public ObservableRangeCollection<Location> Locations { get; set; }
        public ObservableRangeCollection<Question> Questions { get; set; }
        public HomeViewModel() {
            Questions = new ObservableRangeCollection<Question>()
{
                new Question{ImageIcon = "pytajnik_icon" , BackgroundSource = "backgroundMain.png", Title= "CO TO URBEX?", BodyDescription = "Urbex (urban exploration), to eksploracja miejsc, które są efektem rozwoju ludzkiej cywilizacji; opuszczonych, zapomnianych, trudno dostępnych. Im obiekt jest bardziej tajemniczy, tym ciekawszy da eksploratora. Urbex służy przede wszystkim osobom, którym los opuszczonych budynków nie jest obojętny. Wręcz przeciwnie – jest on dla nich pasjonujący. Nie sposób pominąć również edukacyjnej funkcji eksploracji miejskiej, która przyczynia się do przywrócenia pamięci o zabytkowych obiektach, a czasem nawet do ich odratowania."},
                new Question{ImageIcon = "tips_icon" , BackgroundSource = "backgroundTips.png", Title= "Wskazówki", BodyDescription = "Swój pierwszy urbex możesz oczywiście zaplanować samemu. Każdy eksplorator przyzna jednak, że opłaca się korzystać z wiedzy bardziej doświadczonych osób. Możesz to zrobić na stronie urbexy.pl – znajdziesz tu cenne pomoce, jak mapa urbexów, historie innych eksploratorów oraz ich materiały zdjęciowe. Sam również możesz dzielić się tu swoimi przygodami, by uzyskać ocenę i radę osób, które z urbexem mierzą się od lat. Zamiast działać na własną rękę, dołącz do społeczności, która pozwoli ci się rozwijać w tej wyjątkowej pasji."},
                new Question{ImageIcon = "rules_icon" , BackgroundSource = "backgroundRules.png", Title= "Zasady", BodyDescription = "Aby rozpocząć zabawę z urbexem, nie musisz posiadać żadnej, specjalistycznej wiedzy. Nie musisz mieć też bardzo drogiego wyposażenia. Najważniejsze jest przestrzeganie dwóch zasad:Take only pictures,Leave only footprints.Sprowadzają się one do głównego przesłania: eksplorator pełni jedynie funkcję obserwatora.Z miejsc urbexu nie należy niczego wynosić.Niedopuszczalne są akty dewastacji. Jedyne pamiątki, które powinny pozostać po tobie w miejscu eksploracji, to ślady butów oraz zdjęcia, które wykonasz."},
                new Question{ImageIcon = "kit_icon" , BackgroundSource = "BackgroundKit.png", Title= "Co zabrać?",BodyDescription = "Podczas wypraw, powinieneś mieć ze sobą przedmioty, które przede wszystkim zapewnią ci bezpieczeństwo." },
            };

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