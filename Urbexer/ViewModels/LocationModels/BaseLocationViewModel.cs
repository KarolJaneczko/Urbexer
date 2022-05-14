using System.Collections.Generic;
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
    internal class BaseLocationViewModel : BaseViewModel {
        private readonly ObservableRangeCollection<Location> _locations = new ObservableRangeCollection<Location>();
        /// <summary>
        /// Przechowuje wszystkie wczytane lokacje.
        /// Dodawanie lokacji powinno byc robione przy pomocy <see cref="AddLocations(List{Location})"/>.
        /// </summary>
        protected ObservableRangeCollection<Location> Locations { get => _locations; }
        private readonly ObservableRangeCollection<Location> _locationsFiltered = new ObservableRangeCollection<Location>();
        /// <summary>
        /// Przechowuje wyświetlane lokacje. <para/>
        /// Dodawanie lokacji powinno byc robione przy pomocy <see cref="AddLocations(List{Location})"/>.
        /// </summary>
        public ObservableRangeCollection<Location> LocationsFiltered { get => _locationsFiltered; }
        private string currentNameFilter = "";
        public string CurrentNameFilter {
            get { return currentNameFilter; }
            set {
                // Jeżeli długość filtra się skróciła to przywróc usunięte lokacje
                if (currentNameFilter.Length > value.Length)
                    ClearFilter();
                currentNameFilter = value;
                FilterLocationsByName();
                OnPropertyChanged(nameof(CurrentNameFilter));
            }
        }
        /// <summary>
        /// Wywoływana, gdy karta lokacji zostanie kliknięta.
        /// </summary>
        public AsyncCommand<Location> CardSelectedCommand { get; }
        public BaseLocationViewModel() {
            CardSelectedCommand = new AsyncCommand<Location>(CardSelected);
        }
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null) {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        /// <summary>
        /// Dodaje nowe lokacje i od razu je filtruje na podstawie obecnych filtrów.
        /// </summary>
        protected void AddLocations(List<Location> newLocations) {
            if (newLocations == null || newLocations.Count() == 0) return;

            Locations.AddRange(newLocations);

            if (string.IsNullOrEmpty(CurrentNameFilter)) {
                LocationsFiltered.AddRange(newLocations);
            }
            else {
                var newLocationsFiltered = newLocations.ToList()
                    .Where(loc => loc.Name.Contains(CurrentNameFilter) || loc.Address.Contains(CurrentNameFilter));
                LocationsFiltered.AddRange(newLocationsFiltered);
            }
        }

        #region Filtrowanie
        /// <summary>
        /// Usuń filtrowanie lokacji.
        /// </summary>
        protected void ClearFilter() {
            LocationsFiltered.Clear();
            LocationsFiltered.AddRange(Locations.ToList());
        }
        /// <summary>
        /// Ukrzyj lokacje, które nie zawierają stringa <see cref="CurrentNameFilter"/>. <para/>
        /// Jeżeli jest pusty, to lokacje nie są filtrowane.
        /// </summary>
        protected void FilterLocationsByName() {
            if (string.IsNullOrEmpty(CurrentNameFilter)) return; // Jeśli string jest pusty to nie filtruj
            var locationsToRemove = LocationsFiltered.ToList().Where(
                loc => !loc.Name.ToLower().Contains(CurrentNameFilter.ToLower())
                && !loc.Address.ToLower().Contains(CurrentNameFilter.ToLower()));
            LocationsFiltered.RemoveRange(locationsToRemove);
        }
        #endregion Filtrowanie

        /// <summary>
        /// Przenosi do strony szczegółów danej lokacji.
        /// </summary>
        protected async Task CardSelected(Location location) {
            if (location.Id < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={location.Id}";
            await Shell.Current.GoToAsync(route);
        }
    }
}
