﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MapPage : ContentPage
    {
        public MapPage()
        {
            InitializeComponent();

            
            // Konstruowanie mapy
            //Position position = new Position(36.9628066, -122.0194722);
            Position position = new Position(37.79752, -122.40183);
            // MapSpan to obszar mapy o danej pozycji(position) pokazujący obszar obejmujący
            // daną wysokość(0.01) i długość(0.01) geograficzną
            MapSpan mapSpan = new MapSpan(position, 0.01, 0.01); 
            //Map map = new Map(mapSpan);
            mapSpan = MapSpan.FromCenterAndRadius(position, Distance.FromKilometers(0.444));
            map.MoveToRegion(mapSpan);

            // Przykładowa prosta pinezka
            Pin pin = new Pin
            {
                Label = "Spawn",
                Address = "Startowa pozycja kamery",
                Type = PinType.Place,
                Position = position
            };
            map.Pins.Add(pin);

            Position mshqposition = new Position(47.6368678, -122.137305);
            Pin mshqpin = new Pin
            {
                Label = "Microsoft",
                Address = "Siedziba Microsoft",
                Type = PinType.Place,
                Position = mshqposition
            };
            map.Pins.Add(pin);
            
            // Pinezki z customowych zachowaniem przy klikaniu na nie
            Pin boardwalkPin = new Pin
            {
                Position = new Position(36.9641949, -122.0177232),
                Label = "Boardwalk",
                Address = "Santa Cruz",
                Type = PinType.Place
            };
            boardwalkPin.MarkerClicked += async (s, args) =>
            {
                args.HideInfoWindow = true;
                string pinName = ((Pin)s).Label;
                await DisplayAlert("Pin Clicked", $"{pinName} was clicked.", "Ok");
            };

            Pin wharfPin = new Pin
            {
                Position = new Position(36.9571571, -122.0173544),
                Label = "Wharf",
                Address = "Santa Cruz",
                Type = PinType.Place
            };
            wharfPin.InfoWindowClicked += async (s, args) =>
            {
                string pinName = ((Pin)s).Label;
                await DisplayAlert("Info Window Clicked", $"The info window was clicked for {pinName}.", "Ok");
            };
            
            map.Pins.Add(boardwalkPin);
            map.Pins.Add(wharfPin);

            /*
            // Rysowanie polygonów
            Polygon polygon = new Polygon
            {
                StrokeWidth = 8,
                StrokeColor = Color.FromHex("#1BA1E2"),
                //FillColor = Color.Transparent,
                FillColor = Color.FromHex("#881BA1E2"),
                Geopath =
                {
                    // ostatni punkt się automatycznie połączy z pierwszym
                    new Position(47.6368678, -122.137305),
                    new Position(47.6368894, -122.134655),
                    new Position(47.6359424, -122.134655),
                    new Position(47.6359496, -122.1325521),
                    new Position(47.6424124, -122.1325199),
                    new Position(47.642463,  -122.1338932),
                    new Position(47.6406414, -122.1344833),
                    new Position(47.6384943, -122.1361248),
                    new Position(47.6372943, -122.1376912)
                }
            };
            map.MapElements.Add(polygon);
            */

            /*
            // Rysowanie polylinii/linii
            Polyline polyline = new Polyline
            {
                StrokeColor = Color.Blue,
                StrokeWidth = 12,
                Geopath =
                {
                    new Position(47.6381401, -122.1317367),
                    new Position(47.6381473, -122.1350841),
                    new Position(47.6382847, -122.1353094),
                    new Position(47.6384582, -122.1354703),
                    new Position(47.6401136, -122.1360819),
                    new Position(47.6403883, -122.1364681),
                    new Position(47.6407426, -122.1377019),
                    new Position(47.6412558, -122.1404056),
                    new Position(47.6414148, -122.1418647),
                    new Position(47.6414654, -122.1432702)
                }
            };
            map.MapElements.Add(polyline);
            */

            /*
            // Rysowanie koła
            Circle circle = new Circle
            {
                Center = new Position(37.79752, -122.40183),
                Radius = new Distance(250),
                StrokeColor = Color.FromHex("#88FF0000"),
                StrokeWidth = 8,
                FillColor = Color.FromHex("#88FFC0CB")
            };
            map.MapElements.Add(circle);
            */

            //GeoCoder_Test(false);
            //GeoCoder_Test(true);
            
        }

        private void map_MapClicked(object sender, MapClickedEventArgs e)
        {
            // Zmiana pozycji ekranu bez zmieniania poziomu zooma
            map.MoveToRegion(MapSpan.FromCenterAndRadius(
                new Position(e.Position.Latitude, e.Position.Longitude),
                map.VisibleRegion.Radius));
        }

        /*
        private async void GeoCoder_Test(bool reverse = false)
        {
            Geocoder geoCoder = new Geocoder();
            string output;
            if (reverse)
            {
                // Zamiana adresu na współrzędne
                IEnumerable<Position> approximateLocations = await geoCoder.GetPositionsForAddressAsync("Pacific Ave, San Francisco, California");
                Position position = approximateLocations.FirstOrDefault();
                string coordinates = $"{position.Latitude}, {position.Longitude}";
                output = coordinates;
            }
            else
            {
                // Zamiana współrzędnych na adres
                Position position = new Position(37.8044866, -122.4324132);
                IEnumerable<string> possibleAddresses = await geoCoder.GetAddressesForPositionAsync(position);
                string address = possibleAddresses.FirstOrDefault();
                output = address;
            }
            Console.WriteLine(output);
        }
        */
    }
}