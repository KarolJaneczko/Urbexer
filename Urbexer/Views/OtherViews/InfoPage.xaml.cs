using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca zakładkę z informacją o zespole/aplikacji.
    /// </summary>
    public partial class InfoPage : ContentPage {
        #region Konstruktory
        public InfoPage() {
            Routing.RegisterRoute(nameof(PolicyPage), typeof(PolicyPage));
            InitializeComponent();
            BindingContext = new HomeViewModel();
        }
        #endregion
        #region Metody
        public async void ShowPolicy(object sender, EventArgs e) {
            await Shell.Current.GoToAsync(nameof(PolicyPage));
        }
        #endregion
    }
}