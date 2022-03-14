using System;
using Urbexer;
using Urbexer.Services;
using Urbexer.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer {
    public partial class App : Application {
        public App() {
            InitializeComponent();
            DependencyService.Register<MockDataStore>();
            MainPage = new AppShell();
        }
        protected override void OnStart() {
            Shell.Current.GoToAsync(nameof(MapPage));
            //Shell.Current.GoToAsync(nameof(WelcomePage));
            //Shell.Current.GoToAsync(nameof(LocationListPage));
        }
        protected override void OnSleep() {
        }
        protected override void OnResume() {
        }
    }
}
