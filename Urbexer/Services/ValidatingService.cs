using Plugin.Connectivity;
using System;
using System.Net.Http;
using System.Text.RegularExpressions;
using Urbexer.Models;

namespace Urbexer.Services {
    public abstract class ValidatingService {
        #region Walidacje danych użytkownika
        public void ValidateLogin(string login) {
            if (string.IsNullOrEmpty(login)) {
                throw new AppException("Login nie może być pusty.", AppExceptionTypeEnum.EmptyField);
            }
            else if (login.Length < 6) {
                throw new AppException("Login jest za krótki.", AppExceptionTypeEnum.InvalidMinCredLength);
            }
            else if (login.Length > 30) {
                throw new AppException("Login jest za długi.", AppExceptionTypeEnum.InvalidMaxCredLength);
            }
            else if (!CheckNoSpecialCharsExceptUnderscore(login)) {
                throw new AppException("Login nie może mieć znaków specjalnych innych niż '_'.", AppExceptionTypeEnum.InvalidLoginFormat);
            }
        }
        public void ValidateEmail(string email) {
            if (string.IsNullOrEmpty(email)) {
                throw new AppException("Email nie może być pusty.", AppExceptionTypeEnum.EmptyField);
            }
            else if (email.Length < 6) {
                throw new AppException("Email jest za krótki.", AppExceptionTypeEnum.InvalidMinCredLength);
            }
            else if (email.Length > 30) {
                throw new AppException("Email jest za długi.", AppExceptionTypeEnum.InvalidMaxCredLength);
            }
            else if (CheckMailFormat(email)) {
                throw new AppException("Zły format adresu mailowego.", AppExceptionTypeEnum.InvalidMailFormat);
            }
        }
        public void ValidatePassword(string password) {
            if (string.IsNullOrEmpty(password)) {
                throw new AppException("Hasło nie może być puste.", AppExceptionTypeEnum.EmptyField);
            }
            else if (password.Length < 6) {
                throw new AppException("Hasło nie może być krótsze niż 6 znaków.", AppExceptionTypeEnum.InvalidMinCredLength);
            }
            else if (password.Length > 12) {
                throw new AppException("Hasło nie może być dłuższe niż 12 znaków.", AppExceptionTypeEnum.InvalidMaxCredLength);
            }
        }
        #endregion

        #region Walidacje formatu wprowadzanych danych
        public static bool CheckMailFormat(string mail) {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,10})+)$");
            Match match = regex.Match(mail);
            if (match.Success)
                return false;
            else
                return true;
        }
        public static bool CheckNoSpecialCharsExceptUnderscore(string word) {
            Regex regex = new Regex(@"^[A-Za-z0-9\d_]+$");
            Match match = regex.Match(word);
            if (match.Success)
                return true;
            else
                return false;
        }
        public static bool CheckForInternetConnection() {
            if (!CrossConnectivity.Current.IsConnected)
                return false;
            else
                return true;
        }
        #endregion

        #region Walidacje techniczne
        public async void ValidateConnectionResult(HttpResponseMessage result, OperationTypeEnum operation) {
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
                if (result.StatusCode == System.Net.HttpStatusCode.BadRequest || result.StatusCode == System.Net.HttpStatusCode.NotFound) {
                    throw new AppException(message, exceptionType);
                }
                else if (result.StatusCode == System.Net.HttpStatusCode.InternalServerError) {
                    if (!CheckForInternetConnection())
                        throw new AppException("Do prawidłowego działania aplikacji wymagane jest połączenie internetowe.", exceptionType);
                    else
                        throw new AppException("Wystąpił błąd połączenia z serwerem.", exceptionType);
                }
            }
            catch (AppException exception) {
                await Xamarin.Forms.Application.Current.MainPage.DisplayAlert(exception.title, exception.message, "OK");
            }
            catch (Exception exception) {
                if (!CheckForInternetConnection())
                    await Xamarin.Forms.Application.Current.MainPage.DisplayAlert("Błąd połączenia internetowego.", "Do prawidłowego działania aplikacji wymagane jest połączenie internetowe", "OK");
                else
                    await Xamarin.Forms.Application.Current.MainPage.DisplayAlert("Wystąpił nieoczekiwany błąd.", exception.Message.ToString(), "OK");
            }
        }
        #endregion

        #region Metody pomocnicze
        public async void DisplayError(string title, string message) {
            await Xamarin.Forms.Application.Current.MainPage.DisplayAlert(title, message, "OK");
        }
        #endregion
    }
}
