using Urbexer.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LocationListPage : ContentPage {
        public LocationListPage() {
            InitializeComponent();
        }

        private void CollectionView_SelectionChanged(CollectionView sender, SelectionChangedEventArgs e) {
            // To można zrobić komendą, ale nie wiem jak przekazać SelectedItem jako parametr do komendy
            Location location = (Location)sender.SelectedItem;
            int id = location.Id;
            if (location.Id < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={location.Id}";
            Shell.Current.GoToAsync(route);
        }
    }
}