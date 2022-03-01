using System;
using System.Collections.Generic;
using Urbexer.Models;
using Urbexer.ViewModels;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer {
    public partial class AppShell : Xamarin.Forms.Shell {
        public AppShell() {
            InitializeComponent();

            Routing.RegisterRoute(nameof(ItemDetailPage), typeof(ItemDetailPage));
            Routing.RegisterRoute(nameof(NewItemPage), typeof(NewItemPage));
            Routing.RegisterRoute(nameof(LocationDetailsPage), typeof(LocationDetailsPage));
            Routing.RegisterRoute(nameof(WelcomePage), typeof(WelcomePage));
        }
        private async void ClickedLogout(object sender, EventArgs e) {
            await Shell.Current.GoToAsync(nameof(WelcomePage));
        }
    }
}
