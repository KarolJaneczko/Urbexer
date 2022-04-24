﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Xamarin.Forms.Maps;

namespace Urbexer.Services {
    public static class LocationService {
        // Klasa do pobierania lokacji i pobiązanych danych z bazy.

        #region Zmienne
        private static readonly HttpClient httpClient;
        #endregion

        #region Konstruktory
        static LocationService() {
            HttpClientHandler clientHandler = new HttpClientHandler { UseProxy = false };
            httpClient = new HttpClient(clientHandler);
        }
        #endregion

        #region Metody
        // Funkcja do wysyłania zapytań do api
        // Zwraca wynik zapytania przy sukcesie (kod 200), null w przeciwnym przypadku
        private static async Task<string> SendApiRequest(HttpMethod method, string path, string json = "") {
            string uri = "https://urbexerapi.azurewebsites.net" + path;
            var request = new HttpRequestMessage {
                Method = method,
                RequestUri = new Uri(uri),
                Content = new StringContent(json, Encoding.UTF8, "application/json"),
            };
            var response = await httpClient.SendAsync(request).ConfigureAwait(false);
            return response.StatusCode == System.Net.HttpStatusCode.OK 
                ? await response.Content.ReadAsStringAsync()
                : null;
        }

        // Pobierz konkretną lokacje o danym id
        public static async Task<Location> GetLocationById(int id, bool detailed = false) {
            string path = "/api/place/pokazMiejscePoId";
            string args = "?id=" + id;
            string result = await SendApiRequest(HttpMethod.Get, path + args);
            if (result == null)
                return null;
            return detailed
                ? new LocationDetailed(JsonConvert.DeserializeObject<APILocation>(result))
                : new Location(JsonConvert.DeserializeObject<APILocation>(result));

        }
        #endregion

        // Funkcje do pobierania list lokacji
        #region ListyLokacji
        // Pobierz wszystkie lokacje z bazy danych
        public static async Task<List<Location>> GetLocationListAll() {
            string result = await SendApiRequest(HttpMethod.Get, "/api/place/getall");
            return APILocationsToLocations(JsonConvert.DeserializeObject<List<APILocation>>(result));
        }
        public static async Task<List<Location>> GetLocationListByIds(List<int> idList) {
            string json = string.Format("{{\"listaId\": [{0}]}}", string.Join(",", idList));
            string result = await SendApiRequest(HttpMethod.Post, "/api/place/pokazMiejscaZListy", json);
            return APILocationsToLocations(JsonConvert.DeserializeObject<List<APILocation>>(result));
        }
        #endregion ListyLokacji

        // Funkcje do pobierania list id lokacji
        #region ListyId 
        // Pobierz lokacje w okolicy danej pozycji
        // Flaga unvisitedOnly sprawia że zwracane są tylko id lokacji nieodwiedzonych przez obecnego użytkownika
        public static async Task<List<int>> GetIdListInArea(float latitude, float longitude, float kmRadius, bool unvisitedOnly = false) {
            float deg = KmToDegrees(kmRadius);
            string path = "/api/place/pokazMiejscaWPoblizu";
            if (unvisitedOnly)
                path += "BezOdwiedzonych";
            string args = string.Format("?WspolrzedneLATUser={0}&WspolrzedneLNGUser={1}&Promien={2}",
                latitude.ToString(System.Globalization.CultureInfo.InvariantCulture),
                longitude.ToString(System.Globalization.CultureInfo.InvariantCulture),
                deg.ToString(System.Globalization.CultureInfo.InvariantCulture));
            string result = await SendApiRequest(HttpMethod.Get, path + args);
            // Result ma postać tablicy typu string. Potnij na części i przerób na liste intów
            result = result.Trim(new char[] { '[', ']' });
            List<int> output = new List<int>();
            foreach (string id in result.Split(',')) {
                output.Add(int.Parse(id));
            }
            return output;
        }
        // Pobierz lokacje z danego województwa
        public static async Task<List<int>> GetIdListByProvince(string province) {
            // Nie ma do tego metody w api, ani nawet kolumny. Możliwe, że ostatecznie będzie usunięte
            return null;
        }
        // Pobierz lokacje z danej kategorii
        public static async Task<List<int>> GetIdListByCategory(int categoryId) {
            string path = "/api/place/pokazMiejscaZKategorii";
            string args = "?id=" + categoryId;
            string result = await SendApiRequest(HttpMethod.Get, path + args);
            return JsonConvert.DeserializeObject<List<int>>(result);
        }
        #endregion ListyId

        #region Pomocnicze
        // Pobierz zdjęcia lokacji o danym id
        public static string[] GetImagesById(int id) {
            // TODO Zmodyfikować pod działanie z bazą danych
            return GetTestImageLinks();
        }
        // Zamień kilometrymetry na stopnie geograficzne
        private static float KmToDegrees(float km) {
            // 1 stopień to ok 111.111km
            return (float)km / 111.111f;
        }
        // Zamień liste lokacji pobranych z API na format z Location.cs
        private static List<Location> APILocationsToLocations(List<APILocation> input) {
            List<Location> output = new List<Location>();
            if (input == null) return output;
            foreach (var location in input) {
                output.Add(new Location(location));
            }
            return output;
        }
        #endregion Pomocnicze

        // Poniższe funkcje są do testowania. Ostatecznie do usunięcia
        #region Testowe
        private static Location GetTestLocation(int id) {
            string placeholder_image = "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530";

            switch (id) {
                case 0:
                    return new Location { Address = "Juliusza Słowackiego 1/3", Name = "DS6", Position = new Position(53.01279100718829, 18.596184269318496), Thumbnail = placeholder_image, Id = 0 };
                case 1:
                    return new Location { Address = "Juliusza Słowackiego 5/7", Name = "DS5", Position = new Position(53.012867443227876, 18.595082727180696), Thumbnail = placeholder_image, Id = 1 };
                case 2:
                    return new Location { Address = "Mikołaja Reja 25", Name = "DS12", Position = new Position(53.016041297422575, 18.57122438669747), Thumbnail = placeholder_image, Id = 2 };
                case 3:
                    return new Location { Address = "Toruń, ds10, Polska", Name = "DS10", Position = new Position(53.01959018140275, 18.57689926136301), Thumbnail = placeholder_image, Id = 3 };
            }
            return null;
        }
        private static string[] GetTestImageLinks() {
            string[] links =  {
                "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530",
                "https://media.discordapp.net/attachments/129713358382301184/942607881671442432/2Q.png",
                "https://media.discordapp.net/attachments/129713358382301184/946177227521925120/RDT_20220223_0247005046886002966916432.png?width=680&height=511",
                "https://media.discordapp.net/attachments/129713358382301184/944117799008215091/Ba-dum-Tsss.jpg"
            };
            return links;
        }
        #endregion Testowe
    }
}