using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;

namespace Urbexer.Services {
    /// <summary>
    /// Klasa służąca do pobierania i wysyłania recenzji oraz kontrolowania stanu odwiedzenia lokacji. <para/>
    /// Obecny użytkownik jest przekazywany jako token w headerze zapytania.
    /// Szczegóły są opisane w <see cref="HttpService"/>.
    /// </summary>
    public static class ReviewService {

#pragma warning disable CS0649
        // Template strony z recenzjami zwracanej przez api
        // Jedyne co nas interesuje to items
        private class APIReviewPage {
            public APIReview[] items;
            public int totalPages;
            public int itemFrom;
            public int itemsTo;
            public int totalItemsCount;
        }
#pragma warning restore CS0649

        // Funkcje związane z odwiedzaniem lokacji
        #region Odwiedzanie
        /// <summary>
        /// Oznacz lokacje o danym id jako odwiedzoną.
        /// </summary>
        /// <param name="locationId"></param>
        public static async Task MarkLocationAsVisited(int locationId) {
            string path = "/api/urbex/dodajOdwiedzone";
            string args = "?id=" + locationId;
            await HttpService.SendApiRequest(HttpMethod.Post, path + args, requiresToken: true).ConfigureAwait(false);
        }
        /// <summary>
        /// Sprawdź, czy lokacja o danym id jest odwiedzona.
        /// </summary>
        /// <returns>
        /// True jeżeli obecny użytkownik odwiedził daną lokację. <para/>
        /// False w przeciwnym wypadku. 
        /// </returns>
        public static async Task<bool> IsLocationVisited(int locationId) {
            string path = "/api/urbex/czyUzytkownikBylWMiejscu";
            string args = "?id=" + locationId;
            var result = await HttpService.SendApiRequest(HttpMethod.Get, path + args, requiresToken: true).ConfigureAwait(false);
            try {
                return bool.Parse(result);
            }
            catch {
                return false;
            }
        }
        #endregion Odwiedzanie

        // Funkcje związane z recenzjami
        #region Recenzje
        /// <summary>
        /// Wystaw recenzję lokacji o danym id
        /// </summary>
        /// <param name="locationId"></param>
        /// <param name="scoreQuality">Wystawiana ocena</param>
        /// <param name="reviewMessage">Treść recenzji.</param>
        public static async Task PostReview(int locationId, int scoreQuality, string reviewMessage) {
            string path = "/api/urbex/dodajOpinie";
            string json = string.Format("{{" +
                "\"id\":{0}," +
                "\"ocena\":{1}," +
                "\"tekst\":\"{2}\"}}",
                locationId,
                scoreQuality,
                reviewMessage);
            await HttpService.SendApiRequest(HttpMethod.Put, path, json, requiresToken: true).ConfigureAwait(false);
        }
        /// <summary>
        /// Pobiera recenzje obecnego użytkownika odpowiadającą danemu id lokacji.
        /// </summary>
        /// <param name="locationId"></param>
        /// <returns>
        /// Jeśli dana recenzja istnieje to ją zwraca. <para/>
        /// W przeciwnym wypadku zwraca null.
        /// </returns>
        public static async Task<Review> GetReview(int locationId) {
            string path = "/api/urbex/pokazMojaOpinieDoMiejsca";
            string args = "?id=" + locationId;
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args);
            if (string.IsNullOrEmpty(result)) return null;
            return new Review(JsonConvert.DeserializeObject<APIReview>(result));
        }
        /// <summary>
        /// Pobierz recenzje lokacji o danym id
        /// </summary>
        /// <param name="locationId"></param>
        /// <param name="pageNumber">Decyduje którą stronę recenzji z kolei pobierać, poczynając od 1.</param>
        /// <param name="pageSize">Decyduje ile recenzji ma mieć pobrana strona.</param>
        /// <returns></returns>
        public static async Task<List<Review>> GetReviews(int locationId, int pageNumber, int pageSize) {
            string path = "/api/urbex/pokazOpinieDoMiejsca";
            string args = string.Format("?Id={0}&PageNumber={1}&PageSize={2}",
                locationId, pageNumber, pageSize);
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path + args).ConfigureAwait(false);
            APIReviewPage page = JsonConvert.DeserializeObject<APIReviewPage>(result);

            List<Review> output = new List<Review>();
            foreach (APIReview apiReview in page.items) {
                output.Add(new Review(apiReview));
            }
            return output;
        }
        #endregion Recenzje
    }
}
