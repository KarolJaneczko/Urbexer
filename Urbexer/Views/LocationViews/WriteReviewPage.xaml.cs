using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Services;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views.LocationViews {
    [QueryProperty(nameof(LocationId), nameof(LocationId))]
    [QueryProperty(nameof(LocationName), nameof(LocationName))]
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class WriteReviewPage : ContentPage {
        public string LocationId { get; set; }
        public string LocationName { get; set; }
        public WriteReviewPage() {
            
            InitializeComponent();
        }
        protected override void OnAppearing() {
            BindingContext = this;
        }

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