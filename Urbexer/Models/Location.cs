using System.Collections.Generic;
using System.Linq;
using Xamarin.Forms.Maps;
using Xamarin.CommunityToolkit.ObjectModel;
using Urbexer.Services;
using Urbexer.Models.ApiModels;
using System;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace Urbexer.Models {
    public class Location {
        #region Zmienne
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Thumbnail { get; set; }
        public Position Position { get; set; }
        public double Distance { get; set; }
        public ObservableRangeCollection<ImageLink> ImageLinks { get; set; }
        #endregion

        #region Klasy
        public class ImageLink {
            public string Link { get; set; }
        }
        #endregion

        #region Konstruktory
        public Location() {
            Id = -1;
        }
        public Location(APILocation apiLocation) {
            Name = apiLocation.nazwa;
            Position = new Position(apiLocation.wspolrzedneLAT, apiLocation.wspolrzedneLNG);
            Id = apiLocation.id;
            RecalculateDistance();

            Address = apiLocation.adres;
            /*
            if (apiLocation.adres != null) {
                Address = apiLocation.adres;
            } else {
                // Wygeneruj adres geocoderem
                // TODO: Zaktualizować to gdy LocationService będzie statyczne
                //LocationService locationService = new LocationService();
                //Address = locationService.GetAddressFromPositionAsync(apiLocation.wspolrzedneLAT, apiLocation.wspolrzedneLNG);
            }
            */

            ImageLinks = new ObservableRangeCollection<ImageLink>();
            if (apiLocation.zdjecie != null) {

            } else {
                // Wczytaj placeholder
                Thumbnail = "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530";
                ImageLinks.Add(new ImageLink { Link = "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530" });
            }
        }
        #endregion

        #region Metody
        // Oblicza odległość z from do Position(zmiennej obiektu)
        public void RecalculateDistance(Position from) {
            var distance = Math.Sqrt(Math.Pow((Position.Latitude - from.Latitude), 2)
                + Math.Pow((Position.Longitude - from.Longitude), 2));
            distance = DegreesToKm(distance);
            distance = Math.Round(distance, 1); // Zaokrąglij do 1 miejsca po przecinku
            Distance = distance;
        }
        public async Task RecalculateDistance() {
            var location = await Geolocation.GetLastKnownLocationAsync();
            RecalculateDistance(new Position(location.Latitude, location.Longitude));
        }
        // Zamień stopnie geograficzne na kilometry
        private static double DegreesToKm(double degrees) {
            // 1 stopień to ok 111.111km
            return 111.111 * degrees;
        }
        #endregion
    }
}