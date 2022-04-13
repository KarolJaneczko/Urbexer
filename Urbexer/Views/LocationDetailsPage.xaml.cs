using Urbexer.Services;
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

            // Pobierz dane i zbinduj do lokacji 
            int.TryParse(LocationId, out var id);
            LocationService locationService = new LocationService();
            BindingContext = locationService.GetLocationById(id).Result;
        }
    }
}