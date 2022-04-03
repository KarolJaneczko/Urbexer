using System;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer {
    public partial class AppShell : Shell {
        public AppShell() {
            InitializeComponent();
            Routing.RegisterRoute(nameof(LocationDetailsPage), typeof(LocationDetailsPage));
            Routing.RegisterRoute(nameof(WelcomePage), typeof(WelcomePage));
            Routing.RegisterRoute(nameof(MapPage), typeof(MapPage)); // TEMP
        }
        private async void ClickedLogout(object sender, EventArgs e) {
            await Current.GoToAsync(nameof(WelcomePage));
            /*             var status = Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();
            if (status.Result == PermissionStatus.Denied || status.Result == PermissionStatus.Disabled) {
                Application.Current.MainPage.DisplayAlert("Uwaga!", "Do poprawnego działania aplikacji wymagane jest udzielenie permisji do pobierania danych dotyczących lokalizacji.", "OK");
            } Jak klikniemy w mape to sprawdzamy permisje dot. lokalizacji. Dodac po zmianach bartka.*/
        }
    }
}
