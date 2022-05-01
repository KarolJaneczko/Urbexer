using Xamarin.Forms.Maps;
using Xamarin.CommunityToolkit.ObjectModel;
using Urbexer.Models.ApiModels;
using System;
using System.Threading.Tasks;
using Xamarin.Essentials;
using System.Collections.Generic;

namespace Urbexer.Models {
    public class Location {
        public readonly Dictionary<int, string> CategoryDict = new Dictionary<int, string>() {
            { 1, "Kolejowe"},
            { 2, "Hotele i pensjonaty"},
            { 3, "Domy"},
            { 4, "Industrialne"},
            { 5, "Restauracje i kluby"},
            { 6, "Rolnicze"},
            { 7, "Zamki_i_palace"},
            { 8, "Podziemia"},
            { 9, "Biurowce"},
            { 10, "Militarne"},
            { 11, "Szpitale"},
            { 12, "Podziemia i tunele"},
            { 13, "Inne"},
        };
        public readonly Dictionary<int, string> ProvinceDict = new Dictionary<int, string>() {
            { 1, "Dolnośląskie"},
            { 2, "Kujawsko-pomorskie"},
            { 3, "Lubelskie"},
            { 4, "Lubuskie"},
            { 5, "Łódzkie"},
            { 6, "Małopolskie"},
            { 7, "Mazowieckie"},
            { 8, "Opolskie"},
            { 9, "Podkarpackie"},
            { 10, "Podlaskie"},
            { 11, "Pomorskie"},
            { 12, "Śląskie"},
            { 13, "Świętokrzyskie"},
            { 14, "Warmińsko-mazurskie"},
            { 15, "Wielkopolskie"},
            { 16, "Zachodniopomorskie"},
        };
        #region Zmienne
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Thumbnail { get; set; }
        public Position Position { get; set; }
        public double Distance { get; set; }
        public int CategoryId { get; set; }
        public int ProvinceId { get; set; }
        public string CategoryIconPath { get; set; }
        public string CategoryName => CategoryDict[CategoryId];
        #endregion

        #region Klasy
        #endregion

        #region Konstruktory
        public Location() {
            Id = -1;
        }
        public Location(APILocation apiLocation) {
            Name = apiLocation.nazwa;
            Address = apiLocation.adres;
            Position = new Position(apiLocation.wspolrzedneLAT, apiLocation.wspolrzedneLNG);
            Id = apiLocation.id;
            CategoryId = apiLocation.kategoriaId;
            ProvinceId = apiLocation.wojewodztwoId;
            CategoryIconPath = GetCategoryIconPath(CategoryId);
            RecalculateDistance();

            if (apiLocation.zdjecie != null) {

            }
            else {
                // Wczytaj placeholder
                Thumbnail = "https://cdn.discordapp.com/attachments/967515297705779200/967515764414382132/placeholder.png";
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
        private string GetCategoryIconPath(int id) {
            string output = "";
            switch (id) {
                case 1:
                    output += "railway_icon.png";
                    break;
                case 2:
                    output += "hotel_icon.png";
                    break;
                case 3:
                    output += "house_icon.png";
                    break;
                case 4:
                    output += "industrial_icon.png";
                    break;
                case 5:
                    output += "restaurant_icon.png";
                    break;
                case 6:
                    output += "farm_icon.png";
                    break;
                case 7:
                    output += "castle_icon.png";
                    break;
                case 8:
                    output += "underground_icon.png";
                    break;
                case 9:
                    output += "office_icon.png";
                    break;
                case 10:
                    output += "military_icon.png";
                    break;
                case 11:
                    output += "hospital_icon.png";
                    break;
                case 12:
                    output += "tunnel_icon.png";
                    break;
                case 13:
                    output += "other_icon.png";
                    break;
            }
            return output;
        }
        #endregion
    }
}