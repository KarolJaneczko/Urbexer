using System;
using Urbexer.Models;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer {
    public partial class AppShell : Shell {
        public AppShell() {
            InitializeComponent();
            Routing.RegisterRoute(nameof(WelcomePage), typeof(WelcomePage));
            Routing.RegisterRoute(nameof(HomePage), typeof(HomePage));
            Routing.RegisterRoute(nameof(ProfilePage), typeof(ProfilePage));
        }
        private async void ClickedLogout(object sender, EventArgs e) {
            UserInfo.Logout();
            await Current.GoToAsync(nameof(WelcomePage));
        }
    }
}
