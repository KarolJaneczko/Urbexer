using System;
using System.Threading.Tasks;
using Urbexer.Models;
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
            Device.InvokeOnMainThreadAsync(async () => await TryActivateEditMode());
        }

        /// <summary>
        /// Sprawdź czy istnieje już recenzja od tego użytkownika dla tego miejsca. <para/>
        /// Jeśli tak, to wczytaj jej treść.
        /// </summary>
        private async Task TryActivateEditMode() {
            Review oldReview = await ReviewService.GetReview(int.Parse(LocationId));
            if (oldReview == null) return;

            SendButton.Text = "Aktualizuj";
            Editor.Text = oldReview.Message;
            ScorePicker.SelectedIndex = oldReview.Score - 1; // -1, bo indeks jest o 1 mniejszy niż ocena
        }
        /// <summary>
        /// Funkcja wysyłająca recenzje do API. <para/>
        /// Dba o poprawny format recenzji. <para/>
        /// Wywoływana przy kliknięciu odpowiedniego przycisku na stronie.
        /// </summary>
        private async void SubmitReview(object sender, EventArgs e) {
            int score = ScorePicker.SelectedIndex + 1; // +1, bo indeks jest o 1 mniejszy niż ocena
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