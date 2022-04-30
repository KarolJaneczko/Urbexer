using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;

namespace Urbexer.Services {
    public class HttpService {
        private static readonly HttpClient httpClient;
        static HttpService() {
            HttpClientHandler clientHandler = new HttpClientHandler { UseProxy = false };
            httpClient = new HttpClient(clientHandler);
            TryAddAuthorization();
        }

        // Funkcja do wysyłania zapytań do api
        // Zwraca wynik zapytania przy sukcesie (kod 200), null w przeciwnym przypadku
        public static async Task<string> SendApiRequest(HttpMethod method, string path, string json = "", bool requresToken = false) {
            // Niektóre metody nie działają bez tokena. Upewnij się że token jest dodany
            if (requresToken && !TryAddAuthorization())
                return null;
            
            // Utwórz zapytanie
            string uri = "https://urbexerapi.azurewebsites.net" + path;
            var request = new HttpRequestMessage {
                Method = method,
                RequestUri = new Uri(uri),
                Content = new StringContent(json, Encoding.UTF8, "application/json"),
            };

            // Wyślij zapytanie i zwróć wynik
            var response = await httpClient.SendAsync(request).ConfigureAwait(false);
            if (response.StatusCode == System.Net.HttpStatusCode.OK)
                return await response.Content.ReadAsStringAsync();
            return null;
        }

        // Dodaj token autoryzacji
        // Zwraca true jeżeli autoryzacja jest dodana, false w przeciwnym wypadku
        static private bool TryAddAuthorization() {
            if (httpClient.DefaultRequestHeaders.Authorization.Parameter != null
                & httpClient.DefaultRequestHeaders.Authorization.Scheme != null)
                return true; // Token autoryzacji już jest ustawiony
            if (UserInfo.LoginToken != null) {
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", UserInfo.LoginToken);
                return true; // Token autoryzacji został poprawnie ustawiony
            }
            return false; // Token autoryzacji nie jest ustawiony
        }
    }
}
