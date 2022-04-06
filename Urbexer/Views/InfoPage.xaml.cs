using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class InfoPage : ContentPage {
        public InfoPage() {
            InitializeComponent();
            BindingContext = new HomeViewModel();
        }
    }
}