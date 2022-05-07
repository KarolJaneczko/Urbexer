using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using Urbexer.Views;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms;
using Location = Urbexer.Models.Location;

namespace Urbexer.ViewModels.LocationModels {
    /// <summary>
    /// Podstawowy ViewModel do wyświetlania lokacji
    /// </summary>
    internal class BaseLocationViewModel : INotifyPropertyChanged {
        /// <summary>
        /// Przechowuje wszystkie wczytane lokacje.
        /// </summary>
        protected ObservableRangeCollection<Location> Locations { get; set; }
        private ObservableRangeCollection<Location> locationsFiltered = new ObservableRangeCollection<Location>();
        /// <summary>
        /// Przechowuje wyświetlane lokacje.
        /// </summary>
        public ObservableRangeCollection<Location> LocationsFiltered {
            get { return locationsFiltered; }
            set {
                locationsFiltered = value;
                OnPropertyChanged(nameof(LocationsFiltered));
            }
        }
        /// <summary>
        /// Wywoływana, gdy karta lokacji zostanie kliknięta.
        /// </summary>
        public AsyncCommand<Location> CardSelectedCommand { get; }
        public BaseLocationViewModel() {
            //LocationsFiltered = new ObservableRangeCollection<Location> { };
            Locations = new ObservableRangeCollection<Location> { };
            CardSelectedCommand = new AsyncCommand<Location>(CardSelected);
        }
        public event PropertyChangedEventHandler PropertyChanged;

        #region Filtrowanie
        // Funkcje i zmienne filtrowania

        protected string currentNameFilter = "";

        /// <summary>
        /// Usuń filtrowanie lokacji.
        /// </summary>
        protected void ClearFilter() {
            //LocationsFiltered.Clear();
            ObservableRangeCollection<Location> newList = new ObservableRangeCollection<Location>();
            if (Locations == null) {
                LocationsFiltered.Clear();
                return;
            }
            // Skopiuj lokacje z Locations do LocationsFiltered
            foreach (var location in Locations.ToList()) {
                //LocationsFiltered.Add(location);
                newList.Add(location);
            }
            LocationsFiltered = newList;
        }
        /// <summary>
        /// Odśwież filtry
        /// </summary>
        protected void ReapplyFilters() {
            ClearFilter();
            SetNameFilter();
        }
        /// <summary>
        /// Ukrzyj lokacje, które nie zawierają stringa <see cref="currentNameFilter"/>. <para/>
        /// Jeżeli jest pusty, to lokacje nie są filtrowane.
        /// </summary>
        protected void SetNameFilter() {
            if (string.IsNullOrEmpty(currentNameFilter)) return; // Jeśli string jest pusty to nie filtruj
            foreach (var location in Locations) {
                if (!location.Name.ToLower().Contains(currentNameFilter.ToLower())) {
                    LocationsFiltered.Remove(location);
                }
            }
        }
        #endregion Filtrowanie

        /// <summary>
        /// Przenosi do strony szczegółów danej lokacji.
        /// </summary>
        /// <param name="location"></param>
        protected async Task CardSelected(Location location) {
            if (location.Id < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={location.Id}";
            await Shell.Current.GoToAsync(route);
        }
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null) {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
