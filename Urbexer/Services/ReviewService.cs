using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;

namespace Urbexer.Services {
    internal static class ReviewService {
        // Klasa do pobierania recenzji/opini o lokacjach z api

        #region Zmienne
        private static readonly HttpClient httpClient;
        #endregion

        #region Konstruktory
        static ReviewService() {
            HttpClientHandler clientHandler = new HttpClientHandler { UseProxy = false };
            httpClient = new HttpClient(clientHandler);
        }
        #endregion

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

        private static async Task PostReview(int locationId, int reviewScore, string reviewMessage) {
            // UNFINISHED
        }
        private static async Task<List<Review>> GetReviews(int locationId, int pageNumber, int pageSize) {
            // UNFINISHED
            List<Review> output = new List<Review>();
            return output;
        }
    }
}
