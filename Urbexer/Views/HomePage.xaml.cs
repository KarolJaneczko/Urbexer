using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class HomePage : ContentPage {
        public HomePage() {
            InitializeComponent();
            BindingContext = new HomeViewModel();
        }
        void OnExpanderTapped(object sender, EventArgs e) {
        }
        protected override bool OnBackButtonPressed() {
            return true;
        }
    }
}