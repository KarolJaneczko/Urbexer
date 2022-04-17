using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class SignInPage : ContentPage {
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
        public void GoToSignUp(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync(nameof(RegisterPage));
        }
        public void GoBack(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync(nameof(WelcomePage));
        }
    }
}