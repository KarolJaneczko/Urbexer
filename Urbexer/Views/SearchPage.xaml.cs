using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class SearchPage : ContentPage {
        public SearchPage() {
            InitializeComponent();
            BindingContext = new HomeViewModel();
        }
    }
}