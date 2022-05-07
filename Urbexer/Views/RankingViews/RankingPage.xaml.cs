using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    /// <summary>
    /// Klasa reprezentująca wybór kategorii rankingu przed wyświetleniem tabeli rankingowej.
    /// </summary>
    public partial class RankingPage : ContentPage {
        #region Konstruktory
        public RankingPage() {
            InitializeComponent();
            BindingContext = new RankingViewModel();
            Routing.RegisterRoute(nameof(LeaderboardPage), typeof(LeaderboardPage));
        }
        #endregion
    }
}