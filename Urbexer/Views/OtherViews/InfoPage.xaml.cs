using System;
using Urbexer.ViewModels;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca zakładkę z informacją o zespole/aplikacji.
    /// </summary>
    public partial class InfoPage : ContentPage {
        #region Konstruktory
        public InfoPage() {
            InitializeComponent();
            BindingContext = new HomeViewModel();
        }
        #endregion
        #region Metody
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
        #endregion
    }
}