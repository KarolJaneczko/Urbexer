using System;
using System.Collections.Generic;
using System.Linq;
using Urbexer.Models;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Xamarin.Forms.Xaml;
using Urbexer.Services;
using Xamarin.Essentials;
using Map = Xamarin.Forms.Maps.Map;
using System.Threading.Tasks;

namespace Urbexer.Views {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MapPage : ContentPage {
        // Pokazuje kartę z informacjami o lokacji w zależności od id. -1 chowa karte.
        private int currentPinId = -1;
        public int CurrentPinId {
            get { return currentPinId; }
            set {
                currentPinId = value;
                if (value <= -1) {
                    currentPinId = -1;
                    LocationInfo.IsVisible = false;
                    return;
                }

                // Pokaż odpowiednią karte lokacji
                LocationInfo.IsVisible = true;
                Device.InvokeOnMainThreadAsync(async () => await SetPinBinding());
            }
        }
        private async Task SetPinBinding() {
            LocationInfo.BindingContext = await LocationService.GetLocationById(currentPinId);
        }

        public MapPage() {
            InitializeComponent();
            CurrentPinId = -1;

            Task.Run(async () => await MoveToUser());
        }

        // Spróbuj ustawić pozycje mapy na pozycje użytkownika
        private async Task MoveToUser() {
            try {
                Xamarin.Essentials.Location location = await Geolocation.GetLastKnownLocationAsync();
                if (location != null) {
                    MapSpan mapSpan = MapSpan.FromCenterAndRadius(
                        new Position(location.Latitude, location.Longitude), Distance.FromKilometers(2));
                    map.MoveToRegion(mapSpan);
                }
            }
            catch {
                await DefaultPositionFallback();
            }
        }
        // Ustaw mapę na środek Polski
        private async Task DefaultPositionFallback() {
            string default_address = "Polska";
            Position default_position = await GeocoderService.GetPositionFromAddressAsync(default_address);
            // 350km to mw. połowa szerokości Polski
            MapSpan mapSpan = MapSpan.FromCenterAndRadius(default_position, Distance.FromKilometers(350));
            map.MoveToRegion(mapSpan);
        }

        // Zmiana pozycji ekranu bez zmieniania przybliżenia
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

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e) {
            var route = $"{nameof(LocationDetailsPage)}?LocationId={currentPinId}";
            Shell.Current.GoToAsync(route);
        }
        // Jeśli mapa pokazuje karte lokacji to przycisk wstecz ją schowa
        protected override bool OnBackButtonPressed(){
            if (CurrentPinId == -1) return base.OnBackButtonPressed();
            DeselectCurrentPin();
            return true;
        }

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