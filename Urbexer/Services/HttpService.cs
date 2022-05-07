using Plugin.Connectivity;
using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;

namespace Urbexer.Services {
    /// <summary>
    /// Klasa przechowująca ustawienia <see cref="HttpClient">klienta http</see> 
    /// oraz metody związane z wysyłaniem zapytań http.
    /// </summary>
    public class HttpService {
        private static readonly HttpClient httpClient;
        static HttpService() {
            HttpClientHandler clientHandler = new HttpClientHandler { UseProxy = false };
            httpClient = new HttpClient(clientHandler);
            TryAddAuthorization();
        }


        /// <summary>
        /// Funkcja do wysyłania zapytań do api.
        /// </summary>
        /// <param name="method"> Typ zapytania jakie zostanie wysłane </param>
        /// <param name="path">
        /// Ścieżka metody z argumentami.
        /// <para> Na przykład: "/api/place/pokazMiejscePoId?id=1". </para>
        /// </param>
        /// <param name="body"> Ciało zapytania. </param>
        /// <param name="requiresToken"> 
        /// Jeżeli true, to zapytanie zadba o obecność tokenu autoryzacyjnego.
        /// W przeciwnym wypadku zapytanie zostanie anulowane. <para/>
        /// Jeżeli false, to zapytanie nadal może mieć autoryzacje, ale nie będzie się upewniało o jej obecność.
        /// </param>
        /// <returns>
        /// String zawierający wynik zapytania przy sukcesie (kod 200).
        /// W przypadku problemów zwracany jest null.
        /// </returns>
        public static async Task<string> SendApiRequest(HttpMethod method, string path, string body = "", bool requiresToken = true) {
            // Niektóre metody nie działają bez tokena. Upewnij się że token jest dodany
            if (requiresToken && !TryAddAuthorization())
                return null;

            // Utwórz zapytanie
            string uri = "https://urbexerapi.azurewebsites.net" + path;
            var request = new HttpRequestMessage {
                Method = method,
                RequestUri = new Uri(uri),
                Content = new StringContent(body, Encoding.UTF8, "application/json"),
            };

            if (!CrossConnectivity.Current.IsConnected)
                return null;

            // Wyślij zapytanie i zwróć wynik
            var response = await httpClient.SendAsync(request).ConfigureAwait(false);
            if (response.StatusCode == System.Net.HttpStatusCode.OK)
                return await response.Content.ReadAsStringAsync().ConfigureAwait(false);
            return null;
        }

        /// <summary>
        /// Dodaj token autoryzacji
        /// </summary>
        /// <returns>
        /// True jeżeli autoryzacja już jest lub została dodana. <para/>
        /// False w przeciwnym wypadku .
        /// </returns>
        static private bool TryAddAuthorization() {
            if (httpClient.DefaultRequestHeaders.Authorization != null
                && httpClient.DefaultRequestHeaders.Authorization.Scheme != null
                && httpClient.DefaultRequestHeaders.Authorization.Parameter != null)
                return true; // Token autoryzacji już jest ustawiony
            if (UserInfo.LoginToken != null) {
                httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", UserInfo.LoginToken);
                return true; // Token autoryzacji został poprawnie ustawiony
            }
            return false; // Token autoryzacji nie jest ustawiony
        }
    }
}
