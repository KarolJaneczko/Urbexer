using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class SignInPage : ContentPage {
        #region Konstruktory
        public SignInPage() {
            Routing.RegisterRoute(nameof(RegisterPage), typeof(RegisterPage));
            var vm = new SignInPageViewModel();
            BindingContext = vm;
            InitializeComponent();

            Login.Completed += (object sender, EventArgs e) => {
                Password.Focus();
            };

            Password.Completed += (object sender, EventArgs e) => {
                vm.SubmitCommand.Execute(null);
            };
        }
        #endregion
        #region Metody
        public void GoToSignUp(object sender, EventArgs e) {
            Shell.Current.GoToAsync(nameof(RegisterPage));
        }
        public void GoBack(object sender, EventArgs e) {
            Shell.Current.GoToAsync(nameof(WelcomePage));
        }
        protected override bool OnBackButtonPressed() {
            return true;
        }
        #endregion
    }
}