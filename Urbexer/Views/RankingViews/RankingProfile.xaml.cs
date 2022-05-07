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
        #endregion
    }
}