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

            return;
            if (hasVisited) {
                MarkVisitedButton.IsVisible = false;
                WriteReviewButton.IsVisible = true;
            }
            else {
                MarkVisitedButton.IsVisible = true;
                WriteReviewButton.IsVisible = false;
            }
        }

        private void GoToWriteReviewPage(object sender, System.EventArgs e) {
            var route = $"{nameof(WriteReviewPage)}?LocationId={location.Id}&LocationName={location.Name}";
            Shell.Current.GoToAsync(route);
        }
        private async void MarkVisited(object sender, System.EventArgs e) {
            await ReviewService.MarkLocationAsVisited(location.Id);
        }

        private void CollectionView_RemainingItemsThresholdReached(object sender, System.EventArgs e) {
            Task.Run(async () => await location.LoadMoreReviews());
        }

        private async void OpenGoogleMapsOnLocation(object sender, System.EventArgs e) {
            await Map.OpenAsync(location.Position.Latitude, location.Position.Longitude);
        }
    }
}