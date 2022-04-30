using Plugin.Settings;
using Plugin.Settings.Abstractions;
using Urbexer.Models.UserModels;
using Xamarin.Forms.Maps;

namespace Urbexer.Models {
    public static class UserInfo {
        #region Zmienne - dane użytkownika
        public static string Login {
            get => AppSettings.GetValueOrDefault(nameof(Login), null);
            set => AppSettings.AddOrUpdateValue(nameof(Login), value);
        }
        public static string LoginToken {
            get => AppSettings.GetValueOrDefault(nameof(LoginToken), null);
            set => AppSettings.AddOrUpdateValue(nameof(LoginToken), value);
        }
        public static bool IsAdmin { get; set; }
        public static Position CurrentPosition = new Position(53.0138, 18.5984);
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
        public static bool IsLoggedIn {
            get => AppSettings.GetValueOrDefault(nameof(IsLoggedIn), false);
            set => AppSettings.AddOrUpdateValue(nameof(IsLoggedIn), value);
        }
        public static bool CheckedInternetConnection {
            get => AppSettings.GetValueOrDefault(nameof(CheckedInternetConnection), false);
            set => AppSettings.AddOrUpdateValue(nameof(CheckedInternetConnection), value);
        }
        #endregion
        #region Metody
        public static void SetLoginCredentials(string login, string loginToken) {
            Login = login;
            LoginToken = loginToken;
            IsLoggedIn = true;
            IsAdmin = false;
        }
        public static void SetCurrentPosition(Position position) {
            CurrentPosition = position;
        }
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
