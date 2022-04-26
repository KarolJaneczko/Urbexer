using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class EditProfilePage : ContentPage {
        public EditProfilePage() {
            InitializeComponent();
            BindingContext = new EditProfileViewModel();
        }
    }
}