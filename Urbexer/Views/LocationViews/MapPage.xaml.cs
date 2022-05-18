using System;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Services;
using Urbexer.ViewModels;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    /// <summary>
    /// Strona mapy.
    /// </summary>
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MapPage : ContentPage {
        private int _currentPinId = -1;
        /// <summary>
        /// Id lokacji, na którą wskazuje ostatnia kliknięta pinezka. <para/>
        /// Kontroluje wyświetlanie karty lokacji przy klikaniu na pinezki. <para/>
        /// -1 oznacza brak wybranej pinezki.
        /// </summary>
        public int CurrentPinId {
            get { return _currentPinId; }
            set {
                _currentPinId = value;
                if (value <= -1) {
                    _currentPinId = -1;
                    LocationCard.IsVisible = false;
                    return;
                }

                // Pokaż odpowiednią karte lokacji
                LocationCard.IsVisible = true;
                Device.InvokeOnMainThreadAsync(async () => {
                    LocationCard.BindingContext = await LocationService.GetLocationById(_currentPinId);
                });
            }
        }
        private int _loadRange = 100;
        /// <summary>
        /// Zasięg wczytywania lokacji w kilometrach. <para/>
        /// Zmiana jego wartości aktualizuje wskaźnik zasięgu na mapie
        /// i odpowiednio pokazuje/ukrywa lokacje.
        /// </summary>
        public int LoadRange {
            get { return _loadRange; }
            set {
                _loadRange = Math.Max(value, 0); // Zasięg powinien być nieujemny
                // Ustaw wskaźnik zasięgu wczytania
                Device.InvokeOnMainThreadAsync(async () => {
                    var userPosition = await Geolocation.GetLastKnownLocationAsync().ConfigureAwait(false);
                    Map_LocationLoadRange.Radius = Distance.FromKilometers(value);
                    Map_LocationLoadRange.Center = new Position(userPosition.Latitude, userPosition.Longitude);
                });
                Task.Run(async () => await ((MapViewModel)BindingContext).LoadLocations(value)); // Wczytaj lokacje
            }
        }
        /// <summary>
        /// Ustawia lokacje mapy i wczytuje lokacje.
        /// </summary>
        public MapPage() {
            InitializeComponent();
            CurrentPinId = -1;
            LoadRange = 100;

            Device.BeginInvokeOnMainThread(async () => await MoveToUser().ConfigureAwait(false)); // Ustaw lokacje mapy
        }

        /// <summary>
        /// Próbuje ustawić pozycje mapy na pozycje użytkownika. <para/>
        /// W przypadku niepowodzenia ustawia na domyślną pozycje używając <see cref="DefaultPositionFallback"/>
        /// </summary>
        private async Task MoveToUser() {
            try {
                Xamarin.Essentials.Location location = await Geolocation.GetLastKnownLocationAsync();
                if (location != null) {
                    MapSpan mapSpan = MapSpan.FromCenterAndRadius(
                        new Position(location.Latitude, location.Longitude), Distance.FromKilometers(2));
                    map.MoveToRegion(mapSpan);
                }
            }
            catch { }
        }

        /// <summary>
        /// Zmienia pozycje mapy bez zmieniania poziomu przybliżenia.
        /// </summary>
        /// <param name="position">Nowa pozycja mapy.</param>
        public void MoveToPosition(Position position) {
            if (map == null || map.VisibleRegion == null) return;
            map.MoveToRegion(MapSpan.FromCenterAndRadius(
                new Position(position.Latitude, position.Longitude),
                map.VisibleRegion.Radius));
        }

        private void Pin_MarkerClicked(object sender, PinClickedEventArgs e) {
            e.HideInfoWindow = true;
            SetCurrentPin(sender as LocationPin);
        }
        /// <summary>
        /// Wywoływane przy kliknięciu na karte lokacji. <para/>
        /// Otwiera stronę danej lokacji.
        /// </summary>
        private void TapGestureRecognizer_Tapped(object sender, EventArgs e) {
            var route = $"{nameof(LocationDetailsPage)}?LocationId={_currentPinId}";
            Shell.Current.GoToAsync(route);
        }
        /// <summary>
        /// Jeśli mapa pokazuje karte lokacji to przycisk wstecz ją schowa
        /// </summary>
        protected override bool OnBackButtonPressed() {
            if (CurrentPinId == -1) return base.OnBackButtonPressed();
            DeselectCurrentPin();
            return true;
        }

        /// <summary>
        /// Przesuwa mape na pinezke,
        /// pokazuje zasięg, w którym można oznaczyć lokacje jako odwiedzoną,
        /// oraz ustawia <see cref="CurrentPinId"/>.<para/>
        /// Wywoływane przy kliknięciu na pinezke. 
        /// </summary>
        /// <param name="pin">Pinezka, która została aktywowana.</param>
        private void SetCurrentPin(LocationPin pin) {
            CurrentPinId = pin.LocationId;
            Map_CurrentPinRange.Center = pin.Position;
            Map_CurrentPinRange.Radius = new Distance(200); // pokazuje zasięg, w którym można oznaczyć miejsce jako odwiedzone, w metrach
            MoveToPosition(pin.Position);
        }
        private void DeselectCurrentPin() {
            CurrentPinId = -1;
            Map_CurrentPinRange.Radius = new Distance(0);
        }
    }
}