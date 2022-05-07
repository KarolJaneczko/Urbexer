using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca tabelę rankingową.
    /// </summary>
    public partial class LeaderboardPage : ContentPage {
        #region Konstruktory
        public LeaderboardPage() {
            InitializeComponent();
            Routing.RegisterRoute(nameof(RankingProfile), typeof(RankingProfile));
            BindingContext = new LeaderboardViewModel();
        }
        #endregion
        #region Metody
        protected override void OnAppearing() {
            BindingContext = new LeaderboardViewModel();
        }
        #endregion
    }
}