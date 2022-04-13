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
            //Locations = new ObservableRangeCollection<Location>(locationService.GetLocationListAll().Result);
            /*
            Locations = new ObservableRangeCollection<Location>();
            for (int i = 0; i < 100; i++) {
                Location location = locationService.GetLocationById(i).Result;
                if (location != null) {
                    Locations.Add(location);
                }
            }
            */
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
