using Plugin.Connectivity;
using System;
using System.Net;
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
            httpClient = new HttpClient(clientHandler) {
                BaseAddress = new Uri("https://urbexerapi.azurewebsites.net"),
            };
            ServicePointManager.SecurityProtocol |= SecurityProtocolType.Tls12 | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls;
        }


        /// <summary>
        /// Funkcja do wysyłania zapytań do api.
        /// </summary>
        /// <param name="method"> Typ zapytania jakie zostanie wysłane </param>
        /// <param name="path">
        /// Względna ścieżka metody z argumentami.
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
            if (!CrossConnectivity.Current.IsConnected) return null;

            // Utwórz zapytanie
            var request = new HttpRequestMessage {
                Method = method,
                RequestUri = new Uri(path),
                Content = new StringContent(body, Encoding.UTF8, "application/json"),
            };

            // Wyślij zapytanie i zwróć wynik
            var response = await httpClient.SendAsync(request).ConfigureAwait(false);
            if (response.StatusCode == HttpStatusCode.OK)
                return await response.Content.ReadAsStringAsync().ConfigureAwait(false);
            return null;
        }

        /// <summary>
        /// Dodaj token autoryzacji
        /// </summary>
        static public void SetAuthorization(AuthenticationHeaderValue auth) {
            httpClient.DefaultRequestHeaders.Authorization = auth;
        }
        /// <summary>
        /// Zwraca <see cref="HttpClient"/> używany przez <see cref="HttpService"/>. <para/>
        /// Używane jako hack. Powinno się kożystać z <see cref="SendApiRequest"/>.
        /// </summary>
        public static HttpClient EmergencyClientAccess() {
            return httpClient;
        }
    }
}
