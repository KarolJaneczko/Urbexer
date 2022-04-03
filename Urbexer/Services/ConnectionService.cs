using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Newtonsoft.Json;

namespace Urbexer.Services {
    public class ConnectionService : ValidatingService {
        public HttpClientHandler clientHandler;
        public HttpClient httpClient;
        public ConnectionService() {
            clientHandler = new HttpClientHandler {
                ServerCertificateCustomValidationCallback = (sender, cert, chain, sslPolicyErrors) => { return true; }
            };
            httpClient = new HttpClient(clientHandler);
        }
        public async Task<bool> Login(Login login, HttpClient httpClient) {
            var myJson = JsonConvert.SerializeObject(login);
            var content = new StringContent(myJson, Encoding.UTF8, "application/json");
            var result = await httpClient.PostAsync("https://urbexerapi.azurewebsites.net/api/account/login/", content);
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
            var myJson = JsonConvert.SerializeObject(registerUser);
            var content = new StringContent(myJson, Encoding.UTF8, "application/json");
            var result = await httpClient.PostAsync("https://urbexerapi.azurewebsites.net/api/account/register/", content);
            ValidateConnectionResult(result, OperationTypeEnum.Rejetracja);
            if (result.StatusCode == System.Net.HttpStatusCode.OK)
                return true;
            else
                return false;
        }
    }
}
