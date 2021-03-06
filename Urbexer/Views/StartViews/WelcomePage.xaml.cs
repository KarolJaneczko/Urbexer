using System.Timers;
using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    /// <summary>
    /// Klasa reprezentująca stronę powitalną aplikacji.
    /// </summary>
    public partial class WelcomePage : ContentPage {
        #region Zmienne
        Timer timer;
        #endregion
        #region Konstruktory
        public WelcomePage() {
            InitializeComponent();
            BindingContext = new WelcomeViewModel();
            Routing.RegisterRoute(nameof(SignInPage), typeof(SignInPage));
            Routing.RegisterRoute(nameof(RegisterPage), typeof(RegisterPage));
            AnimatedInfoCarousel();
            buttons.Margin = new Thickness(25, 0, 25, 50);
        }
        #endregion
        #region Metody
        private void AnimatedInfoCarousel() {
            timer = new Timer(3500) {
                AutoReset = true,
                Enabled = true
            };
            timer.Elapsed += (s, e) => {
                Device.BeginInvokeOnMainThread(() => {
                    if (cvOnboarding.Position == 2) {
                        cvOnboarding.Position = 0;
                        backOnboarding.Position = 0;
                        return;
                    }
                    cvOnboarding.Position += 1;
                    if (backOnboarding.Position == 1) {
                        backOnboarding.Position = 2;
                        return;
                    }
                    if (backOnboarding.Position == 2) {
                        backOnboarding.Position = 0;
                        return;
                    }
                    backOnboarding.Position += 1;
                });
            };
        }
        public void GoToSignInPage(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync(nameof(SignInPage));
        }
        public void GoToRegisterPage(object sender, System.EventArgs e) {
            Shell.Current.GoToAsync(nameof(RegisterPage));
        }
        protected override bool OnBackButtonPressed() {
            return true;
        }
        #endregion
    }
}