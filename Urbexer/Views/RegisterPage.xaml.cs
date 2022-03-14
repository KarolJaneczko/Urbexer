using System;
using System.Collections.Generic;
using System.ComponentModel;
using Urbexer.Models;
using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    public partial class RegisterPage : ContentPage {
        public RegisterPage() {
            InitializeComponent();
        }
        public void GoToSignIn(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync(nameof(SignInPage));
        }
        public void GoBack(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync("//WelcomePage");
        }
    }
}