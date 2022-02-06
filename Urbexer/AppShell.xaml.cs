using System;
using System.Collections.Generic;
using Urbexer.Models;
using Urbexer.ViewModels;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer {
    public partial class AppShell : Xamarin.Forms.Shell {
        loginInfo currentLoginInfo = new loginInfo();
        public AppShell() {
            InitializeComponent();
            Routing.RegisterRoute(nameof(ItemDetailPage), typeof(ItemDetailPage));
            Routing.RegisterRoute(nameof(NewItemPage), typeof(NewItemPage));
        }
        private async void clickedLogout(object sender, EventArgs e) 
        {
            // Po kliknieciu 'Wyloguj sie' przechodzimy do okna logowania.
            await Shell.Current.GoToAsync("//LoginPage");
            currentLoginInfo.setIsLoggedIn(false);
        }
    }

}
