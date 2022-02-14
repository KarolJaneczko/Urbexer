using System;
using System.Collections.Generic;
using System.Text;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {

    public class WelcomeViewModel : BaseViewModel {

        public Command WelcomeSignInCommand { get; }

        public WelcomeViewModel() {
            WelcomeSignInCommand = new Command(WelcomeSignInPressed);
        }

        public async void WelcomeSignInPressed(object obj) { 
        }
    }
}
