using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;

namespace Urbexer.Views {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class WelcomePage : ContentPage {
        public WelcomePage() {
            InitializeComponent();
            this.BindingContext = new WelcomeViewModel();
            WelcomeLayout.WidthRequest = DeviceDisplay.MainDisplayInfo.Width / 4;
            WelcomeLayout.Padding = new Thickness(DeviceDisplay.MainDisplayInfo.Width * 0.01, DeviceDisplay.MainDisplayInfo.Width * 0.05,
                DeviceDisplay.MainDisplayInfo.Width * 0.01, DeviceDisplay.MainDisplayInfo.Width * 0.01);
        }
    }
}