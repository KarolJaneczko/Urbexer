using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Urbexer.Models.UserModels;

namespace Urbexer.Services {
    public class ConnectionService : ValidatingService {
        #region Zmienne
        public static HttpClientHandler clientHandler = new HttpClientHandler {
            UseProxy = false,
        };
        public HttpClient httpClient = new HttpClient(clientHandler);
        public static HttpClient httpClient2 = new HttpClient(clientHandler);
        #endregion
        #region Konstruktory
        public ConnectionService() { }
        #endregion
        #region Requesty do API
        /// <summary>
        /// Metoda wysyłająca request do bazy danych przy logowaniu do aplikacji.
        /// </summary>
        public async Task<bool> Login(APILogin login, HttpClient httpClient) {
            var result = await httpClient.PostAsync("https://urbexerapi.azurewebsites.net/api/account/login/", SerializeToJson(login));
            ValidateConnectionResult(result, OperationTypeEnum.Logowanie);
            if (result.StatusCode == System.Net.HttpStatusCode.OK) {
                var resultContent = await result.Content.ReadAsStringAsync();
                UserInfo.SetLoginCredentials(login.login, resultContent);
                return true;
            }
            else
                return false;
        }
        /// <summary>
        /// Metoda wysyłająca request do bazy danych przy rejestracji użytkownika.
        /// </summary>
        public async Task<bool> Register(APIRegisterUser registerUser, HttpClient httpClient) {
            var result = await httpClient.PostAsync("https://urbexerapi.azurewebsites.net/api/account/register/", SerializeToJson(registerUser));
            ValidateConnectionResult(result, OperationTypeEnum.Rejetracja);
            if (result.StatusCode == System.Net.HttpStatusCode.OK)
                return true;
            else
                return false;
        }
        /// <summary>
        /// Metoda zwracająca dane profilowe, przyjmująca w parametrze login użytkownika.
        /// </summary>
        public static async Task<ProfileData> GetProfileByLogin(string login, HttpClient httpClient) {
            httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", UserInfo.LoginToken);
            var result = await httpClient.GetAsync("https://urbexerapi.azurewebsites.net/api/profile/pokazProfil?login=" + login).Result.Content.ReadAsStringAsync();
            if (result == null)
                return null;
            else
                return new ProfileData(JsonConvert.DeserializeObject<APIProfile>(result));
        }
        /// <summary>
        /// Metoda wysyłająca aktualizację profilu do bazy danych.
        /// </summary>
        public async Task<bool> UpdateProfile(APIEdytujProfil request, HttpClient httpClient) {
            httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", UserInfo.LoginToken);
            var result = await httpClient.PutAsync("https://urbexerapi.azurewebsites.net/api/profile/edytujProfil", SerializeToJson(request));
            if (result.StatusCode == System.Net.HttpStatusCode.OK)
                return true;
            else
                return false;
        }
        /// <summary>
        /// Metoda zwracająca liczbę wszystkich, odwiedzonych miejsc przez użytkownika.
        /// </summary>
        public static async Task<int> GetVisitedPlacesCountByLogin(string login, HttpClient httpClient) {
            httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", UserInfo.LoginToken);
            var result = await httpClient.GetAsync("https://urbexerapi.azurewebsites.net/api/urbex/pokazCzyjesOdwiedzone?Login=" + login + "&PageNumber=1&PageSize=" + sizeof(int)).Result.Content.ReadAsStringAsync();
            var resultList = JsonConvert.DeserializeObject<List<APICzyjesOdwiedzone>>(result);
            return resultList.Count;
        }
        /// <summary>
        /// Metoda zwracająca listę rankingową z bazy danych.
        /// </summary>
        public async Task<List<APIRanking>> GetRankingList(int type, HttpClient httpClient) {
            httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", UserInfo.LoginToken);
            string result;
            if (type == 0) {
                result = await httpClient.GetAsync("https://urbexerapi.azurewebsites.net/api/ranking/").Result.Content.ReadAsStringAsync();
            }
            else {
                result = await httpClient.GetAsync("https://urbexerapi.azurewebsites.net/api/ranking/WedlugKategorii?kategoriaId=" + type).Result.Content.ReadAsStringAsync();
            }
            var resultList = JsonConvert.DeserializeObject<List<APIRanking>>(result);
            return resultList;
        }
        #endregion
        #region Pomocnicze metody
        /// <summary>
        /// Metoda serializująca obiekt do JSONa przed wysłaniem go w zapytaniu do API.
        /// </summary>
        public StringContent SerializeToJson(object obj) {
            if (obj is null)
                throw new System.ArgumentNullException(nameof(obj));
            var myJson = JsonConvert.SerializeObject(obj);
            return new StringContent(myJson, Encoding.UTF8, "application/json");
        }
        #endregion
    }
}