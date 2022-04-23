using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class RegisterPage : ContentPage {
        #region Konstruktory
        public RegisterPage() {
            Routing.RegisterRoute(nameof(ActivatePage), typeof(ActivatePage));
            var vm = new RegisterPageModel();
            BindingContext = vm;
            InitializeComponent();

            Login.Completed += (object sender, EventArgs e) => {
                Email.Focus();
            };
            Email.Completed += (object sender, EventArgs e) => {
                Password.Focus();
            };
            Password.Completed += (object sender, EventArgs e) => {
                PasswordRepeat.Focus();
            };
            PasswordRepeat.Completed += (object sender, EventArgs e) => {
                vm.SubmitCommand.Execute(null);
            };
        }
        #endregion

        #region Metody
        public void GoToSignIn(object sender, EventArgs e) {
            Shell.Current.GoToAsync(nameof(SignInPage));
        }
        public void GoToActivatePage(object sender, EventArgs e) {
            Shell.Current.GoToAsync(nameof(ActivatePage));
        }
        public void GoBack(object sender, EventArgs e) {
            Shell.Current.GoToAsync(nameof(WelcomePage));
        }
        protected override bool OnBackButtonPressed() {
            return true;
        }
        void OnCheckBoxCheckedChanged(object sender, CheckedChangedEventArgs e) {
            if (e.Value) {
                RejestracjaPrzycisk.IsEnabled = true;
                RejestracjaPrzycisk.BackgroundColor = Color.FromHex("B52435");
            }
            else {
                RejestracjaPrzycisk.IsEnabled = false;
                RejestracjaPrzycisk.BackgroundColor = new Color(0, 0, 0);
            }
        }
        #endregion
    }
}