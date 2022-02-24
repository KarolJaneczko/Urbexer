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

namespace Urbexer.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MapPage : ContentPage
    {
        // Pokazuje kartę z informacjami o lokacji w zależności od id. -1 chowa karte.
        private int currentPinId = -1;
        public int CurrentPinId { 
            get 
            { return currentPinId; } 
            set 
            { 
                currentPinId = value;
                if (value <= -1)
                {
                    currentPinId = -1;
                    LocationInfo.IsVisible = false;
                    return;
                }

                // Pokaż odpowiednią karte lokacji
                LocationInfo.IsVisible = true;
                LocationInfo.BindingContext = LocationService.GetLocationById(value);
            } 
        }
        public MapPage()
        {
            InitializeComponent();
            CurrentPinId = 1;


            // Konstruowanie mapy
            //Position position = new Position(36.9628066, -122.0194722);
            Position position = new Position(37.79752, -122.40183);
            // MapSpan to obszar mapy o danej pozycji(position) pokazujący obszar obejmujący
            // daną wysokość(0.01) i długość(0.01) geograficzną
            MapSpan mapSpan = new MapSpan(position, 0.01, 0.01); 
            //Map map = new Map(mapSpan);
            mapSpan = MapSpan.FromCenterAndRadius(position, Distance.FromKilometers(0.444));
            Map.MoveToRegion(mapSpan);

            // Przykładowa prosta pinezka
            Pin pin = new Pin
            {
                Label = "Spawn",
                Address = "Startowa pozycja kamery",
                Type = PinType.Place,
                Position = position
            };
            Map.Pins.Add(pin);

            Map_JumpTo_Address("Toruń");
        }
        private void Map_MapClicked(object sender, MapClickedEventArgs e)
        {
            /*
            // Zmiana pozycji ekranu bez zmieniania poziomu zooma
            map.MoveToRegion(MapSpan.FromCenterAndRadius(
                new Position(e.Position.Latitude, e.Position.Longitude),
                map.VisibleRegion.Radius));
            */
            Map_MoveTo_Position(e.Position);
        }

        // 
        public void Map_MoveTo_Position(Position position)
        {
            if (Map == null || Map.VisibleRegion == null) return;
            // Zmiana pozycji ekranu bez zmieniania poziomu zooma
            Map.MoveToRegion(MapSpan.FromCenterAndRadius(
                new Position(position.Latitude, position.Longitude),
                Map.VisibleRegion.Radius));
        }
        public async void Map_MoveTo_Address(string address)
        {
            Geocoder geocoder = new Geocoder();
            IEnumerable<Position> possiblePositions = await geocoder.GetPositionsForAddressAsync(address);
            Map_MoveTo_Position(possiblePositions.FirstOrDefault());
        }

        // Reinstance the map in another position
        public void Map_JumpTo_Position(Position position)
        {
            float radius = 0.5f;
            MapSpan mapspan = MapSpan.FromCenterAndRadius(
                position, Distance.FromKilometers(radius));
            Map.MoveToRegion(mapspan);
        }
        public async void Map_JumpTo_Address(string address)
        {
            Geocoder geocoder = new Geocoder();
            IEnumerable<Position> possiblePositions = await geocoder.GetPositionsForAddressAsync(address);
            Map_JumpTo_Position(possiblePositions.FirstOrDefault());
        }

        private void Pin_MarkerClicked(object sender, PinClickedEventArgs e)
        {
            //e.HideInfoWindow = true;
            DataPin pin = sender as DataPin;
            CurrentPinId = pin.LocationId;
        }
    }
}