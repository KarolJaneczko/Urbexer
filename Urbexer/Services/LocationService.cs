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
    /// <summary>
    /// Klasa służąca do pobierania danych o lokacjach.
    /// </summary>
    public static class LocationService {
        /// <summary>
        /// Pobierz lokacje.
        /// </summary>
        /// <param name="id"> Id pobieranej lokacji. </param>
        public static async Task<Location> GetLocationById(int id) {
            string path = "/api/place/pokazMiejscePoId";
            string args = "?id=" + id;
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args).ConfigureAwait(false);
            if (result == null)
                return null;
            return new Location(JsonConvert.DeserializeObject<APILocation>(result));
        }
        /// <summary>
        /// Pobierz lokacje i jej szczegóły.
        /// </summary>
        /// <param name="id"> Id pobieranej lokacji. </param>
        public static async Task<LocationDetailed> GetLocationByIdDetailed(int id) {
            string path = "/api/place/pokazMiejscePoId";
            string args = "?id=" + id;
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args).ConfigureAwait(false);
            if (result == null)
                return null;
            return new LocationDetailed(JsonConvert.DeserializeObject<APILocation>(result));
        }

        // Funkcje do pobierania list lokacji
        #region ListyLokacji
        /// <summary>
        /// Pobierz wszystkie lokacje z bazy danych
        /// </summary>
        public static async Task<List<Location>> GetLocationListAll() {
            string result = await HttpService.SendApiRequest(HttpMethod.Get, "/api/place/getall").ConfigureAwait(false);
            if (result != null)
                return new List<Location>();
            return APILocationsToLocations(JsonConvert.DeserializeObject<List<APILocation>>(result));
        }
        /// <summary>
        /// Pobierz liste lokacji.
        /// </summary>
        /// <param name="idList"> Lista id lokacji do pobrania. </param>
        public static async Task<List<Location>> GetLocationListByIds(List<int> idList) {
            if (idList == null || idList.Count == 0)
                return new List<Location>();
            string json = string.Format("{{\"listaId\": [{0}]}}", string.Join(",", idList));
            string result = await HttpService.SendApiRequest(HttpMethod.Post, "/api/place/pokazMiejscaZListy", json).ConfigureAwait(false);
            if (result == null)
                return new List<Location>();
            return APILocationsToLocations(JsonConvert.DeserializeObject<List<APILocation>>(result));
        }
        #endregion ListyLokacji

        // Funkcje do pobierania list id lokacji
        #region ListyId 
        // 
        // Flaga unvisitedOnly sprawia że zwracane są tylko id lokacji nieodwiedzonych przez obecnego użytkownika
        /// <summary>
        /// Pobierz id lokacji w okolicy danej pozycji
        /// </summary>
        /// <param name="latitude"> Szerokość geograficzna pozycji. </param>
        /// <param name="longitude"> Wysokość geograficzna pozycji. </param>
        /// <param name="kmRadius"> Promień w jakim będą pobieranie id, w kilometrach. </param>
        /// <param name="unvisitedOnly"> Jeśli true to pobierane są tylko id lokacji nieodwiedzonych przez obecnego użytkownika. </param>
        /// <returns> Lista id lokacji. </returns>
        public static async Task<List<int>> GetIdListInArea(float latitude, float longitude, float kmRadius, bool unvisitedOnly = false) {
            float deg = KmToDegrees(kmRadius);
            string path = "/api/place/pokazMiejscaWPoblizu";
            if (unvisitedOnly)
                path += "BezOdwiedzonych";
            string args = string.Format("?WspolrzedneLATUser={0}&WspolrzedneLNGUser={1}&Promien={2}",
                latitude.ToString(System.Globalization.CultureInfo.InvariantCulture),
                longitude.ToString(System.Globalization.CultureInfo.InvariantCulture),
                deg.ToString(System.Globalization.CultureInfo.InvariantCulture));
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args).ConfigureAwait(false);

            if (result == null || result == "[]")
                return new List<int>();

            // Result ma postać tablicy typu string. Potnij na części i przerób na liste intów
            result = result.Trim(new char[] { '[', ']' });
            List<int> output = new List<int>();
            foreach (string id in result.Split(',')) {
                output.Add(int.Parse(id));
            }
            return output;
        }
        /// <summary>
        /// Pobierz id lokacji z danej kategorii
        /// </summary>
        /// <param name="categoryId"> Id kategorii, zdefiniowane w klasie <see cref="Location.CategoryDict">Location</see> </param>
        /// <returns> Lista id lokacji. </returns>
        public static async Task<List<int>> GetIdListByCategory(int categoryId) {
            string path = "/api/place/pokazMiejscaZKategorii";
            string args = "?id=" + categoryId;
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args).ConfigureAwait(false);
            if (result == null)
                return new List<int>();
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