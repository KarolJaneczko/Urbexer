using System;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Services;
using Urbexer.Views.LocationViews;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    [QueryProperty(nameof(LocationId), nameof(LocationId))]
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LocationDetailsPage : ContentPage {
        public string LocationId { get; set; }
        private LocationDetailed location;
        private bool hasVisited = false;
        public LocationDetailsPage() {
            InitializeComponent();
        }

        protected override void OnAppearing() {
            base.OnAppearing();

            Device.InvokeOnMainThreadAsync(async () => await PreparePage());
        }

        private async Task PreparePage() {
            // Pobierz dane i ustaw binding
            location = await LocationService.GetLocationByIdDetailed(int.Parse(LocationId));
            await location.LoadMoreReviews();
            BindingContext = location;

            // Sprawdź, czy lokacja jest odwiedzona
            if (await ReviewService.IsLocationVisited(location.Id)) {
                // Lokacja jest już odwiedzona, pokaż przycisk wstawiania opinii
                WriteReviewButton.IsVisible = true;
            }
            else {
                // Lokacja nie jest odwiedzona, pokaż przycisk odwiedzenia miejsca
                MarkVisitedButton.IsVisible = true;
            }

            // Wyłącz scrollowanie karuzeli jeżeli jest za mało zdjęć
            if (location.ImageLinks.Count <= 1) {
                ImageCarousel.IsSwipeEnabled = false;
            }
        }

        private void GoToWriteReviewPage(object sender, System.EventArgs e) {
            var route = $"{nameof(WriteReviewPage)}?LocationId={location.Id}&LocationName={location.Name}";
            Shell.Current.GoToAsync(route);
        }
        private async void MarkVisited(object sender, System.EventArgs e) {
            int requiredDistance = 200; // w metrach
            Xamarin.Essentials.Location userLocation = await Geolocation.GetLastKnownLocationAsync().ConfigureAwait(false);
            
            // Sprawdź, czy użytkownik jest w zasięgu pinezki
            double distance = Math.Sqrt(
                Math.Pow(userLocation.Latitude - location.Position.Latitude,2)
                + Math.Pow(userLocation.Longitude - location.Position.Longitude,2));
            if (KmToDegrees(requiredDistance) < distance) {
                // Jeżeli użytkownik jest w zasięgu pinezki oznacz ją jako odwiedzoną
                await ReviewService.MarkLocationAsVisited(location.Id);
                WriteReviewButton.IsVisible = true;
                MarkVisitedButton.IsVisible = false;
            }
            else {
                // Wyświetl komunikat, że użytkownik jest za daleko
                await DisplayAlert("Za daleko!", $"Musisz być w zasięgu {requiredDistance} metrów żeby oznaczyć lokacje jako odwiedzoną.", "OK");
            }
        }

        private void CollectionView_RemainingItemsThresholdReached(object sender, System.EventArgs e) {
            if (location == null) return;
            Task.Run(async () => await location.LoadMoreReviews());
        }

        private async void OpenGoogleMapsOnLocation(object sender, System.EventArgs e) {
            await Map.OpenAsync(location.Position.Latitude, location.Position.Longitude);
        }
        private static float KmToDegrees(float km) {
            // 1 stopień to ok 111.111km
            return (float)km / 111.111f;
        }
    }
}