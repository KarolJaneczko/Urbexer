using Urbexer.Models;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca widok profilu po wybraniu rekordu z tabeli rankingowej.
    /// </summary>
    public partial class RankingProfile : ContentPage {
        #region Konstruktory
        public RankingProfile() {
            InitializeComponent();
            BindingContext = new RankingProfileViewModel();
        }
        #endregion
        #region Metody
        protected override void OnAppearing() {
            BindingContext = new RankingProfileViewModel();
        }
        private void CollectionView_SelectionChanged(CollectionView sender, SelectionChangedEventArgs e) {
            if (sender.SelectedItem == null)
                return;

            int locationId = ((Location)sender.SelectedItem).Id;
            if (locationId < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={locationId}";
            Shell.Current.GoToAsync(route);

            sender.SelectedItem = null;
        }
        #endregion
    }
}