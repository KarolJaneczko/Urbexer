using System;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Services;
using Urbexer.Views.LocationViews;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    /// <summary>
    /// Strona ze szczegółami o lokacji.
    /// </summary>
    [QueryProperty(nameof(LocationId), nameof(LocationId))]
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LocationDetailsPage : ContentPage {
        /// <summary>
        /// Id lokacji o której jest ta strona.
        /// </summary>
        public string LocationId { get; set; }
        private LocationDetailed location;
        public LocationDetailsPage() {
            InitializeComponent();
        }

        protected override void OnAppearing() {
            base.OnAppearing();

            Device.InvokeOnMainThreadAsync(async () => await PreparePage());
        }

        /// <summary>
        /// Przygotowuje strone. <para/>
        /// Pobiera dane o lokacji, ustawia binding, odpowiednio dostosowuje elementy strony.
        /// </summary>
        private async Task PreparePage() {
            // Pobierz dane i ustaw binding
            location = await LocationService.GetLocationByIdDetailed(int.Parse(LocationId));
            await location.LoadMoreReviews();
            BindingContext = location;

            // Sprawdź, czy lokacja jest odwiedzona i dostosuj odpowiednio strone
            IsVisitedIcon.IsVisible = location.IsVisited;
            WriteReviewButton.IsVisible = location.IsVisited;
            MarkVisitedButton.IsVisible = !location.IsVisited;
            IsNotVisitedIcon.IsVisible = !location.IsVisited;
            MarkVisitedHintLabel.IsVisible = !location.IsVisited;

            // Wyłącz scrollowanie karuzeli jeżeli jest za mało zdjęć
            if (location.ImageLinks.Count <= 1) {
                ImageCarousel.IsSwipeEnabled = false;
            }
        }

        /// <summary>
        /// Przenosi na stronę pisania recenzji o tej lokacji.
        /// </summary>
        private void GoToWriteReviewPage(object sender, System.EventArgs e) {
            var route = $"{nameof(WriteReviewPage)}?LocationId={location.Id}&LocationName={location.Name}";
            Shell.Current.GoToAsync(route);
        }
        /// <summary>
        /// Oznacza tą lokacje jako odwiedzoną.
        /// </summary>
        private async void MarkVisited(object sender, System.EventArgs e) {
            bool infiniteRange = true;
            int requiredDistance = 200; // w metrach
            Xamarin.Essentials.Location userLocation = await Geolocation.GetLastKnownLocationAsync().ConfigureAwait(false);

            // Sprawdź, czy użytkownik jest w zasięgu pinezki
            double distance = Math.Sqrt(
                Math.Pow(userLocation.Latitude - location.Position.Latitude, 2)
                + Math.Pow(userLocation.Longitude - location.Position.Longitude, 2));
            if (KmToDegrees(requiredDistance) < distance || infiniteRange) {
                // Jeżeli użytkownik jest w zasięgu pinezki oznacz ją jako odwiedzoną
                await ReviewService.MarkLocationAsVisited(location.Id);
                WriteReviewButton.IsVisible = true;
                MarkVisitedButton.IsVisible = false;
                IsVisitedIcon.IsVisible = true;
                IsNotVisitedIcon.IsVisible = false;
                MarkVisitedHintLabel.IsVisible = false;
            }
            else {
                // Wyświetl komunikat, że użytkownik jest za daleko
                await DisplayAlert("Za daleko!", $"Musisz być w zasięgu {requiredDistance} metrów żeby oznaczyć lokacje jako odwiedzoną.", "OK");
            }
        }

        /// <summary>
        /// Wczytuje dodatkowe recenzje. <para/>
        /// Wywoływane kiedy użytkownik przewinie na sam dół listy recenzji.
        /// </summary>
        private void CollectionView_RemainingItemsThresholdReached(object sender, System.EventArgs e) {
            if (location == null) return;
            Task.Run(async () => await location.LoadMoreReviews());
        }
        /// <summary>
        /// Po kliknięciu na odpowiedni przycisk otwiera zewnętrzną aplikacje mapy na współrzędnych tej lokacji.
        /// </summary>
        private async void OpenGoogleMapsOnLocation(object sender, System.EventArgs e) {
            await Map.OpenAsync(location.Position.Latitude, location.Position.Longitude);
        }
        private static float KmToDegrees(float km) {
            // 1 stopień to ok 111.111km
            return (float)km / 111.111f;
        }
    }
}