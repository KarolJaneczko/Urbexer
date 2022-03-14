using System;
using System.Collections.Generic;
using System.ComponentModel;
using Urbexer.Models;
using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    public partial class SignInPage : ContentPage {
        public SignInPage() {
            Routing.RegisterRoute(nameof(RegisterPage), typeof(RegisterPage));
            var vm = new SignInPageViewModel();
            this.BindingContext = vm;
            vm.DisplayInvalidLoginPrompt += () => DisplayAlert("Błąd", "Niepoprawny login lub hasło", "OK");
            InitializeComponent();

            Email.Completed += (object sender, EventArgs e) => {
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
            Shell.Current.GoToAsync("//WelcomePage");
        }
    }
}