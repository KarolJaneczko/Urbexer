using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Urbexer.Models.UserModels;

namespace Urbexer.Services {
    public static class ConnectionService {
        #region Requesty do API
        /// <summary>
        /// Metoda wysyłająca request do bazy danych przy logowaniu do aplikacji.
        /// </summary>
        public static async Task<bool> Login(APILogin login) {
            var result = await HttpService.EmergencyClientAccess().PostAsync("https://urbexerapi.azurewebsites.net/api/account/login/", SerializeToJson(login));
            ValidatingService.ValidateConnectionResult(result, OperationTypeEnum.Logowanie);
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
        public static async Task<bool> Register(APIRegisterUser registerUser) {
            var result = await HttpService.EmergencyClientAccess().PostAsync("https://urbexerapi.azurewebsites.net/api/account/register/", SerializeToJson(registerUser));
            ValidatingService.ValidateConnectionResult(result, OperationTypeEnum.Rejetracja);
            if (result.StatusCode == System.Net.HttpStatusCode.OK)
                return true;
            else
                return false;
        }
        /// <summary>
        /// Metoda zwracająca dane profilowe, przyjmująca w parametrze login użytkownika.
        /// </summary>
        public static async Task<ProfileData> GetProfileByLogin(string login) {
            string path = "/api/profile/pokazProfil";
            string args = $"?login={login}";
            var result = await HttpService.SendApiRequest(HttpMethod.Get, path + args);
            if (result == null) return null;
            return new ProfileData(JsonConvert.DeserializeObject<APIProfile>(result));
        }
        /// <summary>
        /// Metoda wysyłająca aktualizację profilu do bazy danych.
        /// </summary>
        public static async Task<bool> UpdateProfile(APIEdytujProfil request) {
            //httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", UserInfo.LoginToken);
            var result = await HttpService.EmergencyClientAccess().PutAsync("https://urbexerapi.azurewebsites.net/api/profile/edytujProfil", SerializeToJson(request));
            if (result.StatusCode == System.Net.HttpStatusCode.OK)
                return true;
            else
                return false;
        }
        /// <summary>
        /// Metoda zwracająca listę rankingową z bazy danych.
        /// </summary>
        public static async Task<List<LeaderboardRecord>> GetRankingList(int type) {
            string path = "/api/ranking";
            if (type != 0)
                path += $"/WedlugKategorii?kategoriaId={type}";
            string result = await HttpService.SendApiRequest(HttpMethod.Get, path);
            List<APIRanking> list = JsonConvert.DeserializeObject<List<APIRanking>>(result);
            return APIRecordsToRecords(list, type);
        }
        #endregion
        #region Pomocnicze metody
        /// <summary>
        /// Metoda serializująca obiekt do JSONa przed wysłaniem go w zapytaniu do API.
        /// </summary>
        public static StringContent SerializeToJson(object obj) {
            if (obj is null)
                throw new System.ArgumentNullException(nameof(obj));
            var myJson = JsonConvert.SerializeObject(obj);
            return new StringContent(myJson, Encoding.UTF8, "application/json");
        }
        /// <summary>
        /// Metoda mapująca listę rankingową, pobraną z bazy danych i mapująca ją na rekordy w tabeli.
        /// </summary>
        public static List<LeaderboardRecord> APIRecordsToRecords(List<APIRanking> list, int type) {
            List<LeaderboardRecord> result = new List<LeaderboardRecord>();
            int place = 1;
            foreach (APIRanking record in list) {
                if (!record.layout.HasValue)
                    record.layout = 0;
                LeaderboardRecord item = new LeaderboardRecord(record.login, (int)record.liczbaMiejsc, (int)record.layout, place++);
                result.Add(item);
                //place++;
            }
            return result;
        }
        #endregion
    }
}