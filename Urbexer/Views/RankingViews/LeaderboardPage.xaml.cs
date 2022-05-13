using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca tabelę rankingową.
    /// </summary>
    [QueryProperty(nameof(RankingCategory), nameof(RankingCategory))]
    public partial class LeaderboardPage : ContentPage {
        string RankingCategory;
        #region Konstruktory
        public LeaderboardPage() {
            InitializeComponent();
        }
        protected override void OnAppearing() {
            base.OnAppearing();
            BindingContext = new LeaderboardViewModel(Convert.ToInt16(RankingCategory));
        }
        #endregion
    }
}