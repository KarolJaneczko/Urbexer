using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class ProfilePage : ContentPage {
        public ProfilePage() {
            InitializeComponent();
            Routing.RegisterRoute(nameof(EditProfilePage), typeof(EditProfilePage));
            BindingContext = new ProfileViewModel();
        }
    }
}