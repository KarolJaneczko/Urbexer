using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Urbexer.Models.ApiModels;
using Xamarin.Essentials;
using Xamarin.Forms.Maps;

namespace Urbexer.Models {
    /// <summary>
    /// Klasa reprezentująca lokacje.
    /// </summary>
    public class Location {
        #region Słowniki
        /// <summary>
        /// Słownik przechowujący id i nazwy kategorii.
        /// </summary>
        public static readonly Dictionary<int, string> CategoryDict = new Dictionary<int, string>() {
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
        /// <summary>
        /// Słownik przechowujący id i nazwy województw.
        /// </summary>
        public static readonly Dictionary<int, string> ProvinceDict = new Dictionary<int, string>() {
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
        #endregion Słowniki
        #region Zmienne
        /// <summary>
        /// Id lokacji.
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// Nazwa lokacji.
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Adres lokacji.
        /// </summary>
        public string Address { get; set; }
        /// <summary>
        /// Adres html do miniaturki wyświetlanej na kartach lokacji.
        /// </summary>
        public string Thumbnail { get; set; }
        /// <summary>
        /// Współrzędne lokacji.
        /// </summary>
        public Position Position { get; set; }
        /// <summary>
        /// Odległość od użytkownika.<para/>
        /// Nie jest obliczana dynamicznie i musi być odświeżana używając <see cref="RecalculateDistance()"/>.
        /// </summary>
        public double Distance { get; set; }
        /// <summary>
        /// <see cref="CategoryDict">Kategoria</see> lokacji.
        /// </summary>
        public int CategoryId { get; set; }
        /// <summary>
        /// <see cref="ProvinceDict">Województwo</see> lokacji.
        /// </summary>
        public int ProvinceId { get; set; }
        /// <summary>
        /// Ścieżka do ikony kategorii lokacji.
        /// </summary>
        public string CategoryIconPath {
            get {
                return GetCategoryIconPath(CategoryId);
            }
            set { }
        }
        /// <summary>
        /// Zwraca nazwe kategorii tego miejsca. Używane przez bindingi w xaml.
        /// </summary>
        public string CategoryName => CategoryDict[CategoryId];
        /// <summary>
        /// Oznacza stan odwiedzenia lokacji przez tego użytkownika. <para/>
        /// Lokacje mają odpowiednią ikonkę na kartach i na stronie lokacji oznaczającą czy dany użytkownik ją odwiedził. <para/>
        /// Dodatkowo recenzje mogą być wysyłane tylko jeżeli lokacja została odwiedzona.
        /// </summary>
        public bool IsVisited { get; set; }
        /// <summary>
        /// Zwraca negacje <see cref="IsVisited"/>.<para/>
        /// Używane jako hack w bindingach xaml.
        /// </summary>
        public bool IsNotVisited {
            get {
                return !IsVisited; // Good enough
            }
            set { }
        }
        #endregion
        #region Klasy
        #endregion
        #region Konstruktory
        public Location() {
            Id = -1;
        }
        /// <summary>
        /// Utwórz lokację wzorowaną na danym <see cref="APILocation"/>.
        /// </summary>
        /// <param name="apiLocation">Wzorzec do utworzenia lokacji.</param>
        public Location(APILocation apiLocation) {
            Name = apiLocation.nazwa;
            Address = apiLocation.adres;
            Position = new Position(apiLocation.wspolrzedneLAT, apiLocation.wspolrzedneLNG);
            Id = apiLocation.id;
            CategoryId = apiLocation.kategoriaId;
            ProvinceId = apiLocation.wojewodztwoId;
            IsVisited = apiLocation.czyOdwiedzone;
            RecalculateDistance(); // Bez Task.Run(), bo nie aktualizują się odległości na mapie

            if (apiLocation.zdjecia == null || apiLocation.zdjecia.Length == 0) {
                // Wczytaj placeholder
                Thumbnail = "noPhotos.png";
            }
            else {
                Thumbnail = apiLocation.zdjecia[0].link;
            }
        }
        #endregion
        #region Metody
        /// <summary>
        /// Zmienia <see cref="Distance"/> na odległość z danej pozycji do <see cref="Position"/>.
        /// </summary>
        /// <param name="from">Punkt do obliczenia odległości.</param>
        public void RecalculateDistance(Position from) {
            var distance = Math.Sqrt(Math.Pow((Position.Latitude - from.Latitude), 2)
                + Math.Pow((Position.Longitude - from.Longitude), 2));
            distance = DegreesToKm(distance);
            distance = Math.Round(distance, 1); // Zaokrąglij do 1 miejsca po przecinku
            Distance = distance;
        }
        /// <summary>
        /// Zmienia <see cref="Distance"/> na odległość od użytkownika do <see cref="Position"/>.
        /// </summary>
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