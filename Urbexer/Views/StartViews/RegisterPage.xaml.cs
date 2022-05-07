using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca ekran rejestracji.
    /// </summary>
    public partial class RegisterPage : ContentPage {
        #region Konstruktory
        public RegisterPage() {
            Routing.RegisterRoute(nameof(PolicyPage), typeof(PolicyPage));
            Routing.RegisterRoute(nameof(SignInPage), typeof(SignInPage));
            var vm = new RegisterPageModel();
            BindingContext = vm;
            InitializeComponent();
            RejestracjaPrzycisk.IsEnabled = false;
            Login.Completed += (object sender, EventArgs e) => {
                Email.Focus();
            };
            Email.Completed += (object sender, EventArgs e) => {
                Password.Focus();
            };
            Password.Completed += (object sender, EventArgs e) => {
                PasswordRepeat.Focus();
            };
        }
        #endregion
        #region Metody
        public void GoBack(object sender, EventArgs e) {
            Shell.Current.GoToAsync("..//");
        }
        public async void ShowPolicy(object sender, EventArgs e) {
            await Shell.Current.GoToAsync(nameof(PolicyPage));
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