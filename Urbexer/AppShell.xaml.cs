using System;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer {
    public partial class AppShell : Shell {
        public AppShell() {
            InitializeComponent();
            Routing.RegisterRoute(nameof(LocationDetailsPage), typeof(LocationDetailsPage));
            Routing.RegisterRoute(nameof(WelcomePage), typeof(WelcomePage));
            Routing.RegisterRoute(nameof(ProfilePage), typeof(ProfilePage));
        }
        private async void ClickedLogout(object sender, EventArgs e) {
            await Current.GoToAsync(nameof(WelcomePage));
        }
    }
}
