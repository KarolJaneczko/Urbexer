using Urbexer.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    /// <summary>
    /// Strona listy lokacji.
    /// </summary>
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LocationListPage : ContentPage {
        public LocationListPage() {
            InitializeComponent();
        }
        /// <summary>
        /// Wywoływane przy kliknięciu na karte lokacji. <para/>
        /// Przenosi na odpowiednią stronę lokacji.
        /// </summary>
        /// <param name="sender">Karta, która wywołałą event.</param>
        private void CollectionView_SelectionChanged(CollectionView sender, SelectionChangedEventArgs e) {
            if (sender.SelectedItem == null)
                return;

            int locationId = ((Location)sender.SelectedItem).Id;
            if (locationId < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={locationId}";
            Shell.Current.GoToAsync(route);

            sender.SelectedItem = null;
        }
    }
}