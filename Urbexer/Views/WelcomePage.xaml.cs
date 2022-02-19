using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using Octane.Xamarin.Forms.VideoPlayer;
using System.IO;
using System;
using System.Timers;

namespace Urbexer.Views {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class WelcomePage : ContentPage {
        Timer timer;
        public WelcomePage() {
            InitializeComponent();
            this.BindingContext = new WelcomeViewModel();
            AnimatedInfoCarousel();

            BackgroundVideo.MinimumWidthRequest = DeviceDisplay.MainDisplayInfo.Width;
            BackgroundVideo.MinimumHeightRequest = DeviceDisplay.MainDisplayInfo.Height;
            LandingIndicator.Padding = new Thickness(25, 125, 25, 0);
        }
        private void AnimatedInfoCarousel() {
            timer = new Timer(3000) {
                AutoReset = true,
                Enabled = true
            };
            timer.Elapsed += (s, e) => {
                Device.BeginInvokeOnMainThread(() => {
                      if (cvOnboarding.Position == 4) {
                          cvOnboarding.Position = 0;
                          return;
                      }
                      cvOnboarding.Position += 1;
                  });
            };
        }

        public void WelcomeSignInPressed(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync("//SignInPage");
        }
        public void WelcomeSignUpPressed(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync("//SignInPage");
        }
    }
}