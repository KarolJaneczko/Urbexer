using Urbexer.Models;
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

        private void CollectionView_SelectionChanged(CollectionView sender, SelectionChangedEventArgs e) {
            if (sender.SelectedItem == null)
                return;

            int locationId = ((Location)sender.SelectedItem).Id;
            if (locationId < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={locationId}";
            Shell.Current.GoToAsync(route);

            sender.SelectedItem = null;
        }
    }
}