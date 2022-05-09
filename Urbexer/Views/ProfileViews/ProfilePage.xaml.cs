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
        }
        #endregion
    }
}