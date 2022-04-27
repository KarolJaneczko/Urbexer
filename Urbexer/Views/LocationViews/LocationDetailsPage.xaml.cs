using System.Threading.Tasks;
using Urbexer.Services;
using Urbexer.Views.LocationViews;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    [QueryProperty(nameof(LocationId), nameof(LocationId))]
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LocationDetailsPage : ContentPage {
        public string LocationId { get; set; }
        public LocationDetailsPage() {
            InitializeComponent();
        }

        protected override void OnAppearing() {
            base.OnAppearing();

            Device.InvokeOnMainThreadAsync(async () => await SetBinding());
        }

        private async Task SetBinding() {
            // Pobierz dane i zbinduj do lokacji 
            int.TryParse(LocationId, out var id);
            BindingContext = await LocationService.GetLocationById(id, detailed: true);
        }

        private void Button_Pressed(object sender, System.EventArgs e) {
            var route = $"{nameof(WriteReviewPage)}?LocationId={LocationId}";
            Shell.Current.GoToAsync(route);
        }
    }
}