using Plugin.Connectivity;
using System;
using Urbexer.Services;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer {
    public partial class App : Application {
        public App() {
            InitializeComponent();
            DependencyService.Register<MockDataStore>();
            MainPage = new AppShell();
            var seconds = TimeSpan.FromSeconds(10);
            Device.StartTimer(seconds, () => { CheckConnection(); return true; }); 
        }
        protected override void OnStart() {
            Shell.Current.GoToAsync(nameof(WelcomePage));
            //Shell.Current.GoToAsync(nameof(HomePage));
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
    }
}
