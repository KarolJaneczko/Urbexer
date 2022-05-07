using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca widok edycji profilu zalogowanego użytkownika.
    /// </summary>
    public partial class EditProfilePage : ContentPage {
        #region Konstruktory
        public EditProfilePage() {
            InitializeComponent();
            BindingContext = new EditProfileViewModel();
        }
        #endregion
        #region Metody
        void OnPickerSelectedIndexChanged(object sender, EventArgs e) {
            BindingContext = new EditProfileViewModel();
        }
        #endregion
    }
}