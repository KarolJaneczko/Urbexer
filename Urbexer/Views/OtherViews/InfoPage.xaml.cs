using System;
using System.IO;
using System.Reflection;
using Urbexer.ViewModels;
using Xamarin.Essentials;
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
        /// <summary>
        /// Otwiera klienta poczty i odpala "pisanie maila" do urbexer@onet.pl
        /// </summary>
        private void OpenMail(object sender, EventArgs e) {
            string address = "urbexer@onet.pl";
            Launcher.OpenAsync(new Uri($"mailto:{address}"));
        }
    }
}