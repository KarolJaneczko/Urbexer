using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class ProfilePage : ContentPage {
        public ProfilePage() {
            InitializeComponent();
            BindingContext = new ProfileViewModel();
        }

        private void Button_Clicked(object sender, EventArgs e) {

        }
    }
}