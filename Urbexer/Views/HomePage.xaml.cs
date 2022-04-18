using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class HomePage : ContentPage {
        public HomePage() {
            InitializeComponent();
            BindingContext = new HomeViewModel();
        }
        protected override bool OnBackButtonPressed() {
            return true;
        }
    }
}