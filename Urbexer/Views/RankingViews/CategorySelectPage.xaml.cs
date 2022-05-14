using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca wybór kategorii rankingu przed wyświetleniem tabeli rankingowej.
    /// </summary>
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CategorySelectPage : ContentPage {
        #region Konstruktory
        public CategorySelectPage() {
            Routing.RegisterRoute(nameof(LeaderboardPage), typeof(LeaderboardPage));
            InitializeComponent();
        }
        #endregion
    }
}