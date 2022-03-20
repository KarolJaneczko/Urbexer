using Newtonsoft.Json;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;

namespace Urbexer.Services {
    public class ConnectionService {
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
            var result = await httpClient.PostAsync("https://urbexerapimgm.azure-api.net/Urbex/api/account/login", content);
            if (result.StatusCode == System.Net.HttpStatusCode.InternalServerError) {
                //throw new AppException("Wprowadzono nieprawidłowe dane logowania.", AppExceptionTypeEnum.LoginError);
                return true;
            }
            return false;
            /* Po naprawieniu kwestii internal server errora - po udanym zalogowaniu jak zwrocimy 200 to return true
            var resultContent = await result.Content.ReadAsStringAsync();
            potem wyżej odkomentować
            */
        }
        public async Task<bool> Register(RegisterUser registerUser, HttpClient httpClient) {
            var myJson = JsonConvert.SerializeObject(registerUser);
            var content = new StringContent(myJson, Encoding.UTF8, "application/json");
            var result = await httpClient.PostAsync("https://urbexerapimgm.azure-api.net/Urbex/api/account/register", content);
            if (result.StatusCode == System.Net.HttpStatusCode.InternalServerError) {
                //throw new AppException("Wprowadzono nieprawidłowe dane do rejestracji.", AppExceptionTypeEnum.LoginError);
                return true;
            }
            return false;
            /* to samo co wyzej */
        }
    }
}
