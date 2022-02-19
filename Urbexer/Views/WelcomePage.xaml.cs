﻿using Urbexer.ViewModels;
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
        public WelcomePage() {
            InitializeComponent();
            this.BindingContext = new WelcomeViewModel();
            AnimatedInfoCarousel();

           //WelcomeLayout.WidthRequest = DeviceDisplay.MainDisplayInfo.Width / 4;
           // WelcomeLayout.Padding = new Thickness(DeviceDisplay.MainDisplayInfo.Width * 0.01, DeviceDisplay.MainDisplayInfo.Width * 0.05,
           //     DeviceDisplay.MainDisplayInfo.Width * 0.01, DeviceDisplay.MainDisplayInfo.Width * 0.01);

            BackgroundVideo.MinimumWidthRequest = DeviceDisplay.MainDisplayInfo.Width;
            BackgroundVideo.MinimumHeightRequest = DeviceDisplay.MainDisplayInfo.Height;
            BackgroundVideo.Source = VideoSource.FromUri("https://i.imgur.com/UIe3Oue.mp4");
        }

        Timer timer;
        private void AnimatedInfoCarousel()
        {
            timer = new Timer(3000)
            {
                AutoReset = true,
                Enabled = true
            };
            timer.Elapsed += (s, e) =>
            {
                Device.BeginInvokeOnMainThread(() =>
                  {
                      if (cvOnboarding.Position == 4)
                      {
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