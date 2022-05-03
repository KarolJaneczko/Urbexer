using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;

namespace Urbexer.Services {
    internal static class ReviewService {
        // Klasa do pobierania recenzji/opini o lokacjach z api

        // Template zwracany przez api
        private class APIReviewPage {
            public APIReview[] items;
            public int totalPages;
            public int itemFrom;
            public int itemsTo;
            public int totalItemsCount;
        }

        // Funkcje związane z odwiedzaniem lokacji
        #region Odwiedzanie
        // Oznacz daną lokacje jako oznaczona. Bez tego nie da się wystawiać recenzji
        public static async Task MarkLocationAsVisited(int locationId) {
            string path = "/api/urbex/dodajOdwiedzone";
            string args = "?id=" + locationId;
            await HttpService.SendApiRequest(HttpMethod.Post, path + args, requresToken:true).ConfigureAwait(false);
        }
        // Sprawdź, czy lokacja jest odwiedzona
        public static async Task<bool> IsLocationVisited(int locationId) {
            string path = "/api/urbex/czyUzytkownikBylWMiejscu";
            string args = "?id=" + locationId;
            var result = await HttpService.SendApiRequest(HttpMethod.Get, path + args, requresToken: true).ConfigureAwait(false);
            var i = bool.Parse(result);
            return bool.Parse(result);
        }
        #endregion Odwiedzanie

        // Funkcje związane z recenzjami
        #region Recenzje
        // Wystaw recenzję lokacji o danym id
        public static async Task PostReview(int locationId, int scoreQuality, string reviewMessage) {
            string path = "/api/urbex/dodajOpinie";
            string json = string.Format("{{" +
                "\"id\":{0}," +
                "\"ocena\":{1}," +
                "\"tekst\":\"{2}\"}}",
                locationId,
                scoreQuality,
                reviewMessage);
            await HttpService.SendApiRequest(HttpMethod.Put, path, json, requresToken:true).ConfigureAwait(false);
        }
        // Pobierz recenzje lokacji o danym id
        // pageNumber decyduje którą stronę recenzji z kolei pobierać, poczynając od 1
        // pageSize decyduje ile recenzji na stronę
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
