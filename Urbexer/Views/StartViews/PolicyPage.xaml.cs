using System;
using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PolicyPage : ContentPage {
        #region Zmienne
        #endregion
        #region Konstruktory
        public PolicyPage() {
            InitializeComponent();
            BindingContext = new WelcomeViewModel();
            Routing.RegisterRoute(nameof(InfoPage), typeof(InfoPage));
            Routing.RegisterRoute(nameof(RegisterPage), typeof(RegisterPage));

        }
        #endregion
        #region Metody
        public void GoBack(object sender, EventArgs e) {
            Shell.Current.GoToAsync("..//");
        }
        protected override bool OnBackButtonPressed() {
            return true;
        }
        #endregion
    }
}