using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels
{

    public class WelcomeViewModel : BaseViewModel
    {

        public Command WelcomeSignInCommand { get; }
        public Command WelcomeRegisterCommand { get; }
        public List<Onboarding> Onboardings { get; set; }


        public WelcomeViewModel()
        {
            WelcomeSignInCommand = new Command(WelcomeSignInPressed);
            WelcomeRegisterCommand = new Command(WelcomeRegisterPressed);
            Onboardings = GetOnboarding();


        }

        private List<Onboarding> GetOnboarding()
        {
            return new List<Onboarding>
            {
                new Onboarding {Heading = "Heading1", Caption = "Caption1"},
                new Onboarding {Heading = "Heading2", Caption = "Caption2"},
                new Onboarding {Heading = "Heading3", Caption = "Caption3"},
                new Onboarding {Heading = "Heading4", Caption = "Caption4"},
                new Onboarding {Heading = "Heading5", Caption = "Caption5"}
                
            };
        }


        public async void WelcomeSignInPressed(object obj)
        {
            Shell.Current.GoToAsync("//SignInPage");
        }
        public async void WelcomeRegisterPressed(object obj)
        {

        }

    }
    public class Onboarding
    {

        public string Heading { get; set; }
        public string Caption { get; set; }

    }

}


