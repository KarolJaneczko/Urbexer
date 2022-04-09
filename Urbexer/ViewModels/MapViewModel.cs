using Urbexer.Models;
using Xamarin.CommunityToolkit.ObjectModel;
using Urbexer.Services;
using System.Threading.Tasks;
using Urbexer.Views;
using Xamarin.Forms;
using System.Windows.Input;

namespace Urbexer.ViewModels {
    public class MapViewModel {
        public ObservableRangeCollection<Location> Locations { get; set; } // Przechowuje wszystkie wczytane lokacje
        public ObservableRangeCollection<Location> LocationsFiltered { get; set; } // Przechowuje wyświetlane lokacje

        public AsyncCommand<Location> CardSelectedCommand { get; }
        //public Command<string> FilterLocationByNameCommand { get; }
        protected readonly LocationService locationService;
        public MapViewModel() {
            locationService = new LocationService();
            LocationsFiltered = new ObservableRangeCollection<Location> { };

            InitializeLocations().Wait();

            CardSelectedCommand = new AsyncCommand<Location>(CardSelected);
            //FilterLocationByNameCommand = new Command<string>(FilterLocationsByName);
        }

        // Funkcja do pierwotnego zapełnienia mapy
        protected async Task InitializeLocations() {
            Locations = new ObservableRangeCollection<Location>(locationService.GetAllLocations().Result);
            ClearFilter();
        }

        // Funkcje i zmienne filtrowania

        protected string currentNameFilter = "";

        // Usuń filtrowanie lokacji
        protected void ClearFilter() {
            LocationsFiltered.Clear();
            if (Locations == null) return;
            // Skopiuj lokacje z Locations do LocationsFiltered
            foreach (var location in Locations) {
                LocationsFiltered.Add(location);
            }
        }
        // Odśwież filtry
        protected void ApplyFilters() {
            ClearFilter();
            SetFilterByName(currentNameFilter);
        }
        // Nie pokazuj lokalizacji, które nie zawierają danego stringa
        protected void SetFilterByName(string s) {
            if (string.IsNullOrEmpty(s)) return; // Jeśli string jest pusty to nie filtruj
            foreach (var location in Locations) {
                if (!location.Name.ToLower().Contains(s.ToLower())) {
                    LocationsFiltered.Remove(location);
                }
            }
        }

        // Przenosi do strony lokacji o odpowiednim id
        protected async Task CardSelected(Location location) {
            if (location.Id < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={location.Id}";
            await Shell.Current.GoToAsync(route);
        }

        public ICommand FilterLocationsByNameCommand =>
            new Command<string>(async (string query) => {
                //SetFilterByName(query);
                currentNameFilter = query;
                ApplyFilters();
            });
    }
}
