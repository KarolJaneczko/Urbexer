using Plugin.Connectivity;
using System;
using System.Net.Http;
using System.Text.RegularExpressions;
using Urbexer.Models;

namespace Urbexer.Services {
    public static class ValidatingService {
        /// <summary>
        /// Klasa abstrakcyjna, zawierająca metody sprawdzające format wpisywanych danych przez użytkownika.
        /// </summary>
        #region Walidacje danych użytkownika
        /// <summary>
        /// Metoda sprawdzająca, czy login jest odpowiedniej długości oraz czy nie zawiera znaków specjalnych.
        /// </summary>
        public static void ValidateLogin(string login) {
            if (string.IsNullOrEmpty(login)) {
                throw new AppException("Login nie może być pusty.", AppExceptionTypeEnum.EmptyField);
            }
            else if (login.Length < 2) {
                throw new AppException("Login nie może być krótszy niż 2 znaki.", AppExceptionTypeEnum.InvalidMinCredLength);
            }
            else if (login.Length > 30) {
                throw new AppException("Login nie może być dłuższy niż 30 znaków.", AppExceptionTypeEnum.InvalidMaxCredLength);
            }
            else if (!CheckNoSpecialCharsExceptUnderscore(login)) {
                throw new AppException("Login nie może mieć znaków specjalnych innych niż '_'.", AppExceptionTypeEnum.InvalidLoginFormat);
            }
        }
        /// <summary>
        /// Metoda sprawdzająca, czy e-mail jest odpowiedniej długości oraz czy jest odpowiedniego formatu.
        /// </summary>
        public static void ValidateEmail(string email) {
            if (string.IsNullOrEmpty(email)) {
                throw new AppException("Email nie może być pusty.", AppExceptionTypeEnum.EmptyField);
            }
            else if (email.Length < 6) {
                throw new AppException("Email nie może być krótszy niż 6 znaków.", AppExceptionTypeEnum.InvalidMinCredLength);
            }
            else if (email.Length > 50) {
                throw new AppException("Email nie może być dłuższy niż 50 znaków.", AppExceptionTypeEnum.InvalidMaxCredLength);
            }
            else if (CheckMailFormat(email)) {
                throw new AppException("Zły format adresu mailowego.", AppExceptionTypeEnum.InvalidMailFormat);
            }
        }
        /// <summary>
        /// Metoda sprawdzająca, czy hasło jest odpowiedniej długości.
        /// </summary>
        public static void ValidatePassword(string password) {
            if (string.IsNullOrEmpty(password)) {
                throw new AppException("Hasło nie może być puste.", AppExceptionTypeEnum.EmptyField);
            }
            else if (password.Length < 6) {
                throw new AppException("Hasło nie może być krótsze niż 6 znaków.", AppExceptionTypeEnum.InvalidMinCredLength);
            }
            else if (password.Length > 30) {
                throw new AppException("Hasło nie może być dłuższe niż 30 znaków.", AppExceptionTypeEnum.InvalidMaxCredLength);
            }
        }
        /// <summary>
        /// Metoda weryfikująca, czy dane wejściowe mają odpowiednią długość.
        /// </summary>
        public static void ValidateLength(string word, string field, string suffix, int max, int? min = null) {
            if (word.Length > max) {
                throw new AppException(field + " nie może być dłuższ" + suffix + " niż " + max + " znaków.", AppExceptionTypeEnum.InvalidLength);
            }
            else if (min.HasValue) {
                if (word.Length < min.Value) {
                    throw new AppException(field + " nie może być krótsz" + suffix + " niż " + min.Value + " znaków.", AppExceptionTypeEnum.InvalidLength);
                }
            }
        }
        /// <summary>
        /// Metoda weryfikująca, czy link podany w profilu jest odpowiedniego formatu.
        /// </summary>
        public static void ValidateLink(string site, string link) {
            if (!string.IsNullOrEmpty(link)) {
                Regex regex = new Regex(@"https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,4}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)");
                Match match = regex.Match(link);
                if (!match.Success) {
                    throw new AppException("Nieprawidłowy format wprowadzonego linku.", AppExceptionTypeEnum.InvalidDataFormat);
                }
                else {
                    var temp = link.ToLower();
                    if (!temp.Contains(site + ".com")) {
                        throw new AppException("Nieprawidłowy format wprowadzonego linku.", AppExceptionTypeEnum.InvalidDataFormat);
                    }
                }
            }
        }
        #endregion
        #region Walidacje formatu wprowadzanych danych
        /// <summary>
        /// Metoda sprawdzająca format maila.
        /// </summary>
        public static bool CheckMailFormat(string mail) {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,15})+)$");
            Match match = regex.Match(mail);
            if (match.Success)
                return false;
            else
                return true;
        }
        /// <summary>
        /// Metoda sprawdzająca, czy string posiada znaki specjalne oprócz znaku '_'.
        /// </summary>
        public static bool CheckNoSpecialCharsExceptUnderscore(string word) {
            Regex regex = new Regex(@"^[A-Za-z0-9\d_]+$");
            Match match = regex.Match(word);
            if (match.Success)
                return true;
            else
                return false;
        }
        /// <summary>
        /// Metoda sprawdzająca, czy string posiada znaki specjalne.
        /// </summary>
        public static bool CheckNoSpecialChars(string word) {
            Regex regex = new Regex(@"^[A-Za-z0-9\d]+$");
            Match match = regex.Match(word);
            if (match.Success)
                return true;
            else
                return false;
        }
        #endregion
        #region Walidacje techniczne
        /// <summary>
        /// Metoda sprawdzająca, czy bieżące urządzenie jest połączone z internetem.
        /// </summary>
        public static bool CheckForInternetConnection() {
            return CrossConnectivity.Current.IsConnected;
        }
        /// <summary>
        /// Metoda sprawdzająca, czy odpowiedź od API podczas logowania/rejestracji jest błędna. Jeśli tak, dostosowuje odpowiedni komunikat.
        /// </summary>
        public static async void ValidateConnectionResult(HttpResponseMessage result, OperationTypeEnum operation) {
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
                    case OperationTypeEnum.AktywacjaKonta:
                        exceptionType = AppExceptionTypeEnum.ActivateAccountError;
                        message = "Wystąpił błąd podczas aktywacji konta.\nBłędny adres mailowy lub kod aktywujący.";
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
        /// <summary>
        /// Metoda wyświetlająca pop-up na ekranie.
        /// </summary>
        public static async void DisplayError(string title, string message) {
            await Xamarin.Forms.Application.Current.MainPage.DisplayAlert(title, message, "OK");
        }
        #endregion
    }
}