using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using Octane.Xamarin.Forms.VideoPlayer;
using System.IO;

namespace Urbexer.Views {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class WelcomePage : ContentPage {
        public WelcomePage() {
            InitializeComponent();
            this.BindingContext = new WelcomeViewModel();
            WelcomeLayout.WidthRequest = DeviceDisplay.MainDisplayInfo.Width / 4;
            WelcomeLayout.Padding = new Thickness(DeviceDisplay.MainDisplayInfo.Width * 0.01, DeviceDisplay.MainDisplayInfo.Width * 0.05,
                DeviceDisplay.MainDisplayInfo.Width * 0.01, DeviceDisplay.MainDisplayInfo.Width * 0.01);

            //BackgroundVideo.MinimumWidthRequest = DeviceDisplay.MainDisplayInfo.Width;
            //BackgroundVideo.MinimumHeightRequest = DeviceDisplay.MainDisplayInfo.Height;
            //BackgroundVideo.Source = VideoSource.FromUri("https://i.imgur.com/UIe3Oue.mp4");
            BackgroundVideo.Source = VideoSource.FromFile("\Resources\mainvideo.mp4");
        }
        public void WelcomeSignInPressed(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync("//AboutPage");
        }
        public void WelcomeSignUpPressed(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync("//AboutPage");
        }
    }
}