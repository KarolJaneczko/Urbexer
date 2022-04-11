using Plugin.Connectivity;
using System;
using Urbexer.Models;
using Urbexer.Views;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Maps;

namespace Urbexer {
    public partial class App : Application {
        public App() {
            InitializeComponent();
            MainPage = new AppShell();

            Device.StartTimer(TimeSpan.FromSeconds(10), () => {
                CheckConnection();
                CacheCurrentPosition();
                return true;
            });
            Current.PageAppearing += OnPageAppearing;
        }
        protected override void OnStart() {
            if (UserInfo.IsLoggedIn) {
                Shell.Current.GoToAsync(nameof(HomePage));
            }
            else
                Shell.Current.GoToAsync(nameof(WelcomePage));
        }
        protected override void OnSleep() {
        }
        protected override void OnResume() {
        }
        public async void CheckConnection() {
            if (!CrossConnectivity.Current.IsConnected)
                await Current.MainPage.DisplayAlert("Błąd połączenia", "Do poprawnego działania aplikacji jest wymagane połączenie z internetem.", "OK");
            else
                return;
        }
        public static void CacheCurrentPosition(object state = null) {
            var status = Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();
            if (status.Result != PermissionStatus.Denied && status.Result != PermissionStatus.Disabled) {
                Xamarin.Essentials.Location location = Geolocation.GetLastKnownLocationAsync().Result;
                if (location == null)
                    return;
                UserInfo.SetCurrentPosition(new Position(location.Latitude, location.Longitude));
            }
        }
        private void OnPageAppearing(object sender, Page page) {
            if (page is MapPage) {
                var status = Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();
                if (status.Result == PermissionStatus.Denied || status.Result == PermissionStatus.Disabled) {
                    Current.MainPage.DisplayAlert("Uwaga!", "Do poprawnego działania aplikacji wymagane jest udzielenie permisji do pobierania danych dotyczących lokalizacji.", "OK");
                }
            }
        }
    }
}
