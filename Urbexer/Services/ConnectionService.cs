using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using System;
using Newtonsoft.Json;

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
            var result = await httpClient.PostAsync("https://urbexerapi.azurewebsites.net/api/account/login/", content);
            ValidateResult(result, OperationTypeEnum.Logowanie);
            if (result.StatusCode == System.Net.HttpStatusCode.OK) {
                var resultContent = await result.Content.ReadAsStringAsync();
                UserInfo.loginInfo = new LoginInfo(login.login, resultContent);
                UserInfo.isAdmin = false;
                return true;
            }
            else
                return false;
        }
        public async Task<bool> Register(RegisterUser registerUser, HttpClient httpClient) {
            var myJson = JsonConvert.SerializeObject(registerUser);
            var content = new StringContent(myJson, Encoding.UTF8, "application/json");
            var result = await httpClient.PostAsync("https://urbexerapi.azurewebsites.net/api/account/register/", content);
            ValidateResult(result, OperationTypeEnum.Rejetracja);
            if (result.StatusCode == System.Net.HttpStatusCode.OK)
                return true;
            else
                return false;
        }
        public async void ValidateResult(HttpResponseMessage result, OperationTypeEnum operation) {
            try {
                AppExceptionTypeEnum exceptionType = AppExceptionTypeEnum.UnspecifiedError;
                var message = string.Empty;
                switch (operation) {
                    case OperationTypeEnum.Rejetracja:
                        exceptionType = AppExceptionTypeEnum.RegistrationError;
                        message = "Wystąpił błąd podczas rejestracji.\nLogin oraz adres mailowy muszą być unikalne.";
                        break;
                    case OperationTypeEnum.Logowanie:
                        exceptionType = AppExceptionTypeEnum.LoginError;
                        message = "Błędny login lub hasło.";
                        break;
                }
                if (result.StatusCode == System.Net.HttpStatusCode.BadRequest) {
                    throw new AppException(message, exceptionType);
                } else if (result.StatusCode == System.Net.HttpStatusCode.NotFound){
                    throw new AppException(message, exceptionType);
                } else if (result.StatusCode == System.Net.HttpStatusCode.InternalServerError) {
                    throw new AppException("Wystąpił błąd połączenia z serwerem.", exceptionType);
                }
            }
            catch (AppException exception) {
                await App.Current.MainPage.DisplayAlert(exception.title, exception.message, "OK");
            }
            catch (Exception exception) {
                await App.Current.MainPage.DisplayAlert("Wystąpił nieoczekiwany błąd.", exception.Message.ToString(), "OK");
            }
        }
    }
}
