using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;

namespace Urbexer.Services {
    public class HttpService {
        private static readonly HttpClient httpClient;

        static HttpService() {
            HttpClientHandler clientHandler = new HttpClientHandler { UseProxy = false };
            httpClient = new HttpClient(clientHandler);
        }

        // Funkcja do wysyłania zapytań do api
        // Zwraca wynik zapytania przy sukcesie (kod 200), null w przeciwnym przypadku
        public static async Task<string> SendApiRequest(HttpMethod method, string path, string json = "") {
            string uri = "https://urbexerapi.azurewebsites.net" + path;
            var request = new HttpRequestMessage {
                //Headers = { { "Authorization", "Bearer " + UserInfo.LoginToken } },
                //Headers = { { "Authorization", UserInfo.LoginToken } },
                //Headers = { { "Bearer", UserInfo.LoginToken } },
                Method = method,
                RequestUri = new Uri(uri),
                Content = new StringContent(json, Encoding.UTF8, "application/json"),
            };
            if (UserInfo.LoginToken != null)
                //request.Headers.Add("Authorization", UserInfo.LoginToken);
                //request.Headers.Add("Authorization", "Bearer " + UserInfo.LoginToken);
                request.Headers.Add("Bearer", UserInfo.LoginToken);
            var response = await httpClient.SendAsync(request).ConfigureAwait(false);
            if (response.StatusCode == System.Net.HttpStatusCode.OK)
                return await response.Content.ReadAsStringAsync();
            return null;
        }
    }
}
