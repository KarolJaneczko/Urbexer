using System;
using Urbexer.Services;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views.LocationViews {
    /// <summary>
    /// Strona pisania recenzji o lokacji
    /// </summary>
    [QueryProperty(nameof(LocationId), nameof(LocationId))]
    [QueryProperty(nameof(LocationName), nameof(LocationName))]
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class WriteReviewPage : ContentPage {
        /// <summary>
        /// Id lokacji, której dotyczy się pisana recenzja.
        /// </summary>
        public string LocationId { get; set; }
        /// <summary>
        /// Służy do wyświetlania nazwy lokacji na stronie.
        /// </summary>
        public string LocationName { get; set; }
        public WriteReviewPage() {

            InitializeComponent();
        }
        protected override void OnAppearing() {
            BindingContext = this;
        }

        /// <summary>
        /// Funkcja wysyłająca recenzje do API. <para/>
        /// Dba o poprawny format recenzji. <para/>
        /// Wywoływana przy kliknięciu odpowiedniego przycisku na stronie.
        /// </summary>
        private async void Button_Clicked(object sender, EventArgs e) {
            int score = ScoreQuality.SelectedIndex + 1; // +1, bo indeks jest o 1 mniejszy niż ocena
            if (score < 1) {
                // Jeżeli użytkownik nie wybrał żadnej oceny
                await DisplayAlert("Podaj ocenę", "Przed wysłaniem recenzji musisz podać ocenę", "OK");
                return;
            }
            await ReviewService.PostReview(int.Parse(LocationId), score, Editor.Text);
            await Shell.Current.GoToAsync("../");
        }
    }
}