using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class ProfilePage : ContentPage {
        public ProfilePage() {
            InitializeComponent();
            this.BindingContext = new ProfileViewModel();
        }

        private void Button_Clicked(object sender, EventArgs e) {

        }
    }
}