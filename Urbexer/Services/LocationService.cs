using Newtonsoft.Json;
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

        // Pobierz konkretną lokacje o danym id
        public static async Task<Location> GetLocationById(int id) {
            string path = "/api/place/pokazMiejscePoId";
            string args = "?id=" + id;
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args);
            if (result == null)
                return null;
            return new Location(JsonConvert.DeserializeObject<APILocation>(result));
        }
        public static async Task<LocationDetailed> GetLocationByIdDetailed(int id) {
            string path = "/api/place/pokazMiejscePoId";
            string args = "?id=" + id;
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args);
            if (result == null)
                return null;
            return new LocationDetailed(JsonConvert.DeserializeObject<APILocation>(result));
        }

        // Funkcje do pobierania list lokacji
        #region ListyLokacji
        // Pobierz wszystkie lokacje z bazy danych
        public static async Task<List<Location>> GetLocationListAll() {
            string result = await HttpService.SendApiRequest(HttpMethod.Get, "/api/place/getall");
            return APILocationsToLocations(JsonConvert.DeserializeObject<List<APILocation>>(result));
        }
        public static async Task<List<Location>> GetLocationListByIds(List<int> idList) {
            string json = string.Format("{{\"listaId\": [{0}]}}", string.Join(",", idList));
            string result = await HttpService.SendApiRequest(HttpMethod.Post, "/api/place/pokazMiejscaZListy", json);
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
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args);
            if (result == null)
                return null;
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
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args);
            return JsonConvert.DeserializeObject<List<int>>(result);
        }
        #endregion ListyId

        #region Pomocnicze
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
    }
}