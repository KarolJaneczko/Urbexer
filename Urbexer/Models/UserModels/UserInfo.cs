using Plugin.Settings;
using Plugin.Settings.Abstractions;
using System.Net.Http;
using System.Threading.Tasks;
using Urbexer.Models.UserModels;
using Urbexer.Services;
using Xamarin.Forms.Maps;

namespace Urbexer.Models {
    /// <summary>
    /// Klasa zawierająca wszystkie dane dotyczące bieżącego, zalogowanego użytkownika.
    /// </summary>
    public static class UserInfo {
        #region Zmienne - dane użytkownika
        /// <summary>
        /// Zmienna typu string, przechowująca login użytkownika.
        /// </summary>
        public static string Login {
            get => AppSettings.GetValueOrDefault(nameof(Login), null);
            set {
                AppSettings.AddOrUpdateValue(nameof(Login), value);
                Task.Run(async () => yourProfile = await ConnectionService.GetProfileByLogin(value));
            }
        }
        /// <summary>
        /// Zmienna typu string, przechowująca token wykorzystywany przy wysyłaniu requestów do API.
        /// </summary>
        public static string LoginToken {
            get => AppSettings.GetValueOrDefault(nameof(LoginToken), null);
            set {
                AppSettings.AddOrUpdateValue(nameof(LoginToken), value);
                HttpService.SetAuthorization(
                new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", value));
            }
        }
        public static bool IsAdmin { get; set; }
        /// <summary>
        /// Zmienna przechowująca aktualną lokalizację użytkownika, domyślnie przypisywana lokalizacja Torunia.
        /// </summary>
        public static Position CurrentPosition = new Position(53.0138, 18.5984);
        /// <summary>
        /// Obiekt przechowujący dane dotyczące profilu zalogowanego użytkownika.
        /// </summary>
        public static ProfileData yourProfile;
        #endregion
        #region Zmienne - ustawienia
        private const string SettingsKey = "settings_key";
        private static readonly string SettingsDefault = string.Empty;
        private static ISettings AppSettings {
            get {
                return CrossSettings.Current;
            }
        }
        public static string GeneralSettings {
            get {
                return AppSettings.GetValueOrDefault(SettingsKey, SettingsDefault);
            }
            set {
                AppSettings.AddOrUpdateValue(SettingsKey, value);
            }
        }
        /// <summary>
        /// Flaga zawierająca informacje o tym, czy użytkownik jest nadal zalogowany.
        /// </summary>
        public static bool IsLoggedIn {
            get => AppSettings.GetValueOrDefault(nameof(IsLoggedIn), false);
            set => AppSettings.AddOrUpdateValue(nameof(IsLoggedIn), value);
        }
        /// <summary>
        /// Flaga zawierająca informacje o tym, czy podczas bieżącej sesji sprawdziliśmy połączenie internetowe.
        /// </summary>
        public static bool CheckedInternetConnection {
            get => AppSettings.GetValueOrDefault(nameof(CheckedInternetConnection), false);
            set => AppSettings.AddOrUpdateValue(nameof(CheckedInternetConnection), value);
        }
        #endregion
        #region Metody
        /// <summary>
        /// Metoda przypisująca informacje o bieżącym użytkowniku.
        /// </summary>
        public static void SetLoginCredentials(string login, string loginToken) {
            Login = login;
            LoginToken = loginToken;
            IsLoggedIn = true;
            IsAdmin = false;
        }
        public static void SetCurrentPosition(Position position) {
            CurrentPosition = position;
        }
        /// <summary>
        /// Metoda wywoływana przy wylogowaniu - usuwa wszystkie dane o zalogowanym użytkowniku.
        /// </summary>
        public static void Logout() {
            Login = null;
            LoginToken = null;
            IsLoggedIn = false;
            yourProfile = null;
            AppSettings.Clear();
        }
        #endregion
    }
}
