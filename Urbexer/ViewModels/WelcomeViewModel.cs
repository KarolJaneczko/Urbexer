using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class WelcomeViewModel : BaseViewModel {

        public List<Onboarding> Onboardings { get; set; }
        public WelcomeViewModel() {

            Onboardings = GetOnboarding();
        }
        private List<Onboarding> GetOnboarding() {
            return new List<Onboarding> {
                new Onboarding {Heading = "Eksploruj opuszczone lokacje", Caption = "Przygoda na całe życie", Image ="background_image1"},
                new Onboarding {Heading = "Rywalizuj z innymi", Caption = "Zostań najlepszym z eksploatorów", Image ="background_image2"},               
                new Onboarding {Heading = "Odczuj dreszcz emocji", Caption = "Podziel się wrażeniami z innymi", Image ="background_image3"}            
            };
        }
    }
    public class Onboarding {
        public string Heading { get; set; }
        public string Caption { get; set; }
        public string Image { get; set; }  
    }
    

}



