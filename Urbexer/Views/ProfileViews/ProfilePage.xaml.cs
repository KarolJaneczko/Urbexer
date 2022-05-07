using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca stronę profilu zalogowanego użytkownika.
    /// </summary>
    public partial class ProfilePage : ContentPage {
        #region Konstruktory
        public ProfilePage() {
            InitializeComponent();
            Routing.RegisterRoute(nameof(EditProfilePage), typeof(EditProfilePage));
            BindingContext = new ProfileViewModel();
        }
        #endregion
        #region Metody
        protected override void OnAppearing() {
            BindingContext = new ProfileViewModel();
        }
        #endregion
    }
}