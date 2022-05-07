using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class InfoPage : ContentPage {
        public InfoPage() {
            Routing.RegisterRoute(nameof(PolicyPage), typeof(PolicyPage));
            InitializeComponent();
            BindingContext = new HomeViewModel();
        }
        public async void ShowPolicy(object sender, EventArgs e) {
            await Shell.Current.GoToAsync(nameof(PolicyPage));
        }
    }
}