using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Newtonsoft.Json;

namespace Urbexer.Services {
    public class ConnectionService : ValidatingService {
        public static HttpClientHandler clientHandler = new HttpClientHandler {
            ServerCertificateCustomValidationCallback = (sender, cert, chain, sslPolicyErrors) => { return true; }
        };
        public HttpClient httpClient = new HttpClient(clientHandler);
        public ConnectionService() { }
        public async Task<bool> Login(Login login, HttpClient httpClient) {
            var result = await httpClient.PostAsync("https://urbexerapi.azurewebsites.net/api/account/login/", SerializeToJson(login));
            ValidateConnectionResult(result, OperationTypeEnum.Logowanie);
            if (result.StatusCode == System.Net.HttpStatusCode.OK) {
                var resultContent = await result.Content.ReadAsStringAsync();
                LoginInfo.SetLoginCredentials(login.login, resultContent);
                return true;
            }
            else
                return false;
        }
        public async Task<bool> Register(RegisterUser registerUser, HttpClient httpClient) {
            var result = await httpClient.PostAsync("https://urbexerapi.azurewebsites.net/api/account/register/", SerializeToJson(registerUser));
            ValidateConnectionResult(result, OperationTypeEnum.Rejetracja);
            if (result.StatusCode == System.Net.HttpStatusCode.OK)
                return true;
            else
                return false;
        }
        public StringContent SerializeToJson(object obj) {
            if (obj is null)
                throw new System.ArgumentNullException(nameof(obj));
            var myJson = JsonConvert.SerializeObject(obj);
            return new StringContent(myJson, Encoding.UTF8, "application/json");
        }
    }
}
