using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca tabelę rankingową.
    /// </summary>
    [QueryProperty(nameof(RankingCategory), "category")]
    public partial class LeaderboardPage : ContentPage {
        /// <summary>
        /// Ustawianie tej zmiennej ustawia BindingContext tej strony na ViewModel rankingu o odpowiedniej kategorii
        /// </summary>
        public int RankingCategory {
            set => BindingContext = new LeaderboardViewModel(value);
        }
        #region Konstruktory
        public LeaderboardPage() {
            InitializeComponent();
        }
        protected override void OnAppearing() {
            base.OnAppearing();
        }
        #endregion
    }
}