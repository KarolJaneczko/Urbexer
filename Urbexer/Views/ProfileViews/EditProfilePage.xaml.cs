using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class EditProfilePage : ContentPage {
        public EditProfilePage() {
            InitializeComponent();
            BindingContext = new EditProfileViewModel();
        }
        void OnPickerSelectedIndexChanged(object sender, EventArgs e) {
            BindingContext = new EditProfileViewModel();
        }
    }
}