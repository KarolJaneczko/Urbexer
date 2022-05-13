using Urbexer.ViewModels;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.Models {
    /// <summary>
    /// Klasa reprezentująca rekord w tabeli rankingowej.
    /// </summary>
    public class LeaderboardRecord {
        #region Zmienne
        public string Login { get; set; }
        public int LiczbaMiejsc { get; set; }
        public string AvatarSource { get; set; }
        public int Miejsce { get; set; }
        public Command<string> GoToProfileCommand { protected set; get; }
        #endregion
        #region Konstruktory
        public LeaderboardRecord(string login, int liczbaMiejsc, int layout, int miejsce) {
            Login = login;
            LiczbaMiejsc = liczbaMiejsc;
            GoToProfileCommand = new Command<string>(GoToProfile);
            AvatarSource = ProfileViewModel.GetAvatarByLayout(layout);
            Miejsce = miejsce;
        }
        #endregion
        #region Metody
        /// <summary>
        /// Metoda wywoływana przy kliknięciu rekordu w tabeli - przenosi użytkownika do podglądu profilu użytkownika.
        /// </summary>

        public async void GoToProfile(string login) {
            var route = $"{nameof(ProfilePage)}?UserLogin={login}";
            await Shell.Current.GoToAsync(route);
        }

        #endregion
    }
}
