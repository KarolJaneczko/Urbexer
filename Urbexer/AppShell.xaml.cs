using System;
using Urbexer.Models;
using Urbexer.Services;
using Urbexer.Views;
using Urbexer.Views.LocationViews;
using Xamarin.Forms;

namespace Urbexer {
    public partial class AppShell : Shell {
        #region Konstruktory
        public AppShell() {
            InitializeComponent();
            Routing.RegisterRoute(nameof(WelcomePage), typeof(WelcomePage));
            Routing.RegisterRoute(nameof(HomePage), typeof(HomePage));
            Routing.RegisterRoute(nameof(ProfilePage), typeof(ProfilePage));
            Routing.RegisterRoute(nameof(LocationDetailsPage), typeof(LocationDetailsPage));
            Routing.RegisterRoute(nameof(WriteReviewPage), typeof(WriteReviewPage));
        }
        #endregion
        #region Metody
        /// <summary>
        /// Metoda wywoływana przy wylogowywaniu, usuwamy dane użytkownika metodą wykorzystywaną w <see cref="UserInfo">klasie UserInfo</see> 
        /// potem nawigujemy do ekranu powitalnego.
        /// </summary>
        private async void ClickedLogout(object sender, EventArgs e) {
            UserInfo.Logout();
            await Current.GoToAsync(nameof(WelcomePage));
        }
        private async void ClickedSearch(object sender, EventArgs e) {
            var login = await Application.Current.MainPage.DisplayPromptAsync("Wyszukaj użytkownika", "Proszę podać login użytkownika");
            if (login != null) {
                if (await ConnectionService.GetProfileByLogin(login) != null) {
                    var route = $"{nameof(ProfilePage)}?UserLogin={login}";
                    await Current.GoToAsync(route);
                }
                else {
                    await Application.Current.MainPage.DisplayAlert("Błąd", "Nie ma użytkownika o loginie \"" + login + "\"", "OK");
                }
            }
        }
        #endregion
    }
}