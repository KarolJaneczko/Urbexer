using Xamarin.CommunityToolkit.ObjectModel;
using System.Threading.Tasks;
using Urbexer.Views;
using Xamarin.Forms;
using Location = Urbexer.Models.Location;

namespace Urbexer.ViewModels.LocationModels {
    internal class BaseLocationViewModel {
        // Locations rzechowuje wszystkie wczytane lokacje
        // LocationsFiltered przechowuje wyświetlane lokacje. Musi być publiczne dla bindingów
        protected ObservableRangeCollection<Location> Locations { get; set; }
        public ObservableRangeCollection<Location> LocationsFiltered { get; set; }
        public AsyncCommand<Location> CardSelectedCommand { get; }
        public BaseLocationViewModel() {
            LocationsFiltered = new ObservableRangeCollection<Location> { };
            Locations = new ObservableRangeCollection<Location> { };

            CardSelectedCommand = new AsyncCommand<Location>(CardSelected);
        }

        #region Filtrowanie
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
        protected void ReapplyFilters() {
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
        #endregion Filtrowanie

        // Przenosi do strony lokacji o odpowiednim id
        protected async Task CardSelected(Location location) {
            if (location.Id < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={location.Id}";
            await Shell.Current.GoToAsync(route);
        }
    }
}
