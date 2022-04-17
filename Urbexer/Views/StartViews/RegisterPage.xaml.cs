using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class RegisterPage : ContentPage {
        public RegisterPage() {
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
        public void GoToSignIn(object sender, EventArgs e) {
            Shell.Current.GoToAsync(nameof(SignInPage));
        }
        public void GoBack(object sender, EventArgs e) {
            Shell.Current.GoToAsync(nameof(WelcomePage));
        }
        protected override bool OnBackButtonPressed() {
            return true;
        }
    }
}