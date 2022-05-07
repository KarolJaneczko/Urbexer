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
        /// <summary>
        /// Przechowuje elementy expandera na HomePage.
        /// </summary>
        public class Question {
            /// <summary>
            /// Ścieżka do ikony.
            /// </summary>
            public string ImageIcon { get; set; }
            /// <summary>
            /// Zdjęcie pokazywane nad tekstem w expanderze.
            /// </summary>
            public string BackgroundSource { get; set; }
            /// <summary>
            /// Tytuł zakładki.
            /// </summary>
            public string Title { get; set; }
            /// <summary>
            /// Tekst przechowywany w expanderze.
            /// </summary>
            public string BodyDescription { get; set; }
        }
        public ICommand GoBackCommand { get; private set; }
        /// <summary>
        /// Przechowuje lokacje pobrane używając <see cref="LoadLocations"/>.
        /// </summary>
        public ObservableRangeCollection<Location> Locations { get; set; }
        /// <summary>
        /// Przechowuje faq o urbexach.
        /// </summary>
        public ObservableRangeCollection<Question> Questions { get; set; }
        public HomeViewModel() {
            Questions = new ObservableRangeCollection<Question>()
{
                new Question{ImageIcon = "pytajnik_icon" , BackgroundSource = "backgroundMain.png", Title= "CO TO URBEX?", BodyDescription = "Urbex to nic innego niż miejska eksploracja, jednakże zupełnie inna od tej turystycznej. Jest to wyzwanie dla osób, które odważą się przekroczyć próg starych fabryk, szpitali czy porzuconych posiadłości a czasami nawet podziemnych tuneli. Jest to przygoda dla osób o mocnych nerwach."},
                new Question{ImageIcon = "tips_icon" , BackgroundSource = "backgroundTips.png", Title= "Wskazówki", BodyDescription = "Planując swój pierwszy urbex warto pamiętać o bezpieczeństwie, stąd nieocenione będzie towarzystwo osoby bardziej doświadczonej w miejskiej eksploracji. Na początek warto odwiedzać miejsca z niższego pułapu tj. budynków w zasięgu naszych możliości. Rozpoczynając przygodę z urbexem nie warto eksplorować nocą, gdyż widoczność jest dużo bardziej ograniczona co może narazić nas na choćby zadrapania czy przecięcia skóry blachą co może skończyć się groźnym zakażeniem. Warto również zaopatrzeć się w odpowiedni sprzęt pomocny w przygodzie. "},
                new Question{ImageIcon = "kit_icon" , BackgroundSource = "BackgroundKit.png", Title= "Co zabrać?",BodyDescription = "Podczas wypraw, powinieneś mieć ze sobą przedmioty, które przede wszystkim zapewnią ci bezpieczeństwo. Należą do nich m.in odzież ochronna, latarka, mapa obiektu, apteczka, nóż/scyzoryk i maska przeciwpyłowa. Oprócz przedmiotów trzeba pamiętać o tym, że opuszczone miejsca zazwyczaj nie mają swoich numerów i ulic, to nie sią wprowadzone do map GPS. Korzystając ze współrzednych zawsze trafimy do poszukiwanego miejsca. Oprócz samej lokalizacji ważny jest również reserch odnośnie tego czy dany obszar jest chroniony, czy możemy natrafić na niebezpieczeństwo, czy choćby w jakiś sposób dostać się do środka." },
                new Question{ImageIcon = "rules_icon" , BackgroundSource = "backgroundRules.png", Title= "Zasady", BodyDescription = "Podstawową zasadą urbexowania jest słynne powiedzenie „zabierz tylko zdjęcia, zostaw tylko odciski stóp”. Nie nelaży niczego niszczyć ani zabierać ze sobą rzeczy napotkanych podczas eksploracji. Należy zachowywać ciszę a wszelkie kroki wykonywać powoli z dokładną obserwacją otoczenia. Spora część eksploratorów łączy tą pasję z fotografią czy historią, więc warto również skorzystać z aparatu. Niektóre z opuszczonych miejsc mogą mieć właścicieli, nie są ochraniane lub monitorowane, aby uniknąc mandatu warto zapytać o zgodę na wkroczenie na teren posesji. "},
                
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

        /// <summary>
        /// Pobiera i wyświetla 10 najbliższych nieodwiedzonych lokacji.
        /// </summary>
        private async Task LoadLocations() {
            int requiredLocationsCount = 10;
            int range = 0;
            List<int> ids = new List<int>();
            Xamarin.Essentials.Location userPosition = await Geolocation.GetLastKnownLocationAsync();

            // Pobieraj kolejne id lokacji dopóki nie jest ich tyle co wymagane
            while (ids.Count < requiredLocationsCount) {
                range += 30;
                ids.AddRange(await LocationService.GetIdListInArea(
                    (float)userPosition.Latitude, (float)userPosition.Longitude, range, unvisitedOnly: true));
            }
            var newLocations = await LocationService.GetLocationListByIds(ids);
            SortLocationsByDistance(newLocations);

            // Usuń nadwyżke lokacji
            if (newLocations.Count > requiredLocationsCount)
                newLocations.RemoveRange(10, newLocations.Count - requiredLocationsCount);
            Locations.AddRange(newLocations);
        }

        private void SortLocationsByDistance(List<Location> locations) {
            if (locations == null) return;

            locations.Sort((location1, location2) => {
                if (location1.Distance == location2.Distance) return 0;
                return location1.Distance < location2.Distance ? -1 : 1;
            });
        }
    }
}