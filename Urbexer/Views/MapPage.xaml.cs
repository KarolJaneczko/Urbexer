using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Xamarin.Forms.Xaml;
using Urbexer.Services;
using Xamarin.Essentials;
using Map = Xamarin.Forms.Maps.Map;

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
                LocationInfo.BindingContext = LocationService.GetLocationById(value);
            }
        }
        public MapPage() {
            InitializeComponent();
            CurrentPinId = -1;

            // Spróbuj ustawić pozycje mapy na pozycje użytkownika
            try {
                Xamarin.Essentials.Location location = Geolocation.GetLastKnownLocationAsync().Result;
                if (location != null) {
                    MapSpan mapSpan = MapSpan.FromCenterAndRadius(
                        new Position(location.Latitude, location.Longitude), Distance.FromKilometers(2));
                    map.MoveToRegion(mapSpan);
                }
            } catch (Exception ex){
                DefaultPositionFallback();
            }
        }
        private void Map_MapClicked(object sender, MapClickedEventArgs e) {
            /*
            // Zmiana pozycji ekranu bez zmieniania poziomu zooma
            map.MoveToRegion(MapSpan.FromCenterAndRadius(
                new Position(e.Position.Latitude, e.Position.Longitude),
                map.VisibleRegion.Radius));
            */
            Map_MoveTo_Position(e.Position);
        }

        // Ustaw mapę na środek Polski
        private async void DefaultPositionFallback() {
            string default_address = "Polska";
            Geocoder geocoder = new Geocoder();
            IEnumerable<Position> possiblePositions = await geocoder.GetPositionsForAddressAsync(default_address);
            // 350km to mw. połowa szerokości Polski
            MapSpan mapSpan = MapSpan.FromCenterAndRadius(possiblePositions.FirstOrDefault(), Distance.FromKilometers(350));
            map.MoveToRegion(mapSpan);
        }

        // 
        public void Map_MoveTo_Position(Position position) {
            if (map == null || map.VisibleRegion == null) return;
            // Zmiana pozycji ekranu bez zmieniania poziomu zooma
            map.MoveToRegion(MapSpan.FromCenterAndRadius(
                new Position(position.Latitude, position.Longitude),
                map.VisibleRegion.Radius));
        }
        public async void Map_MoveTo_Address(string address) {
            Geocoder geocoder = new Geocoder();
            IEnumerable<Position> possiblePositions = await geocoder.GetPositionsForAddressAsync(address);
            Map_MoveTo_Position(possiblePositions.FirstOrDefault());
        }

        // Reinstance the map in another position
        public void Map_JumpTo_Position(Position position) {
            float radius = 0.5f;
            MapSpan mapspan = MapSpan.FromCenterAndRadius(
                position, Distance.FromKilometers(radius));
            map.MoveToRegion(mapspan);
        }
        public async void Map_JumpTo_Address(string address) {
            Geocoder geocoder = new Geocoder();
            IEnumerable<Position> possiblePositions = await geocoder.GetPositionsForAddressAsync(address);
            Map_JumpTo_Position(possiblePositions.FirstOrDefault());
        }

        private void Pin_MarkerClicked(object sender, PinClickedEventArgs e) {
            //e.HideInfoWindow = true;
            DataPin pin = sender as DataPin;
            CurrentPinId = pin.LocationId;
        }

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var route = $"{nameof(LocationDetailsPage)}?LocationId={currentPinId}";
            Shell.Current.GoToAsync(route);
        }

        // Jeśli mapa pokazuje karte lokacji to przycisk wstecz ją schowa
        protected override bool OnBackButtonPressed(){
            if (CurrentPinId == -1) return base.OnBackButtonPressed();
            CurrentPinId = -1;
            return true;
        }
    }
}