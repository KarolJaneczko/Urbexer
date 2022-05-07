using System.Collections.Generic;

namespace Urbexer.ViewModels {
    /// <summary>
    /// Klasa implementująca logikę strony WelcomePage - strony startowej aplikacji.
    /// </summary>
    public class WelcomeViewModel : BaseViewModel {
        #region Zmienne
        public List<Onboarding> Onboardings { get; set; }
        #endregion
        #region Konstruktory
        public WelcomeViewModel() {
            Onboardings = GetOnboarding();
        }
        #endregion
        #region Metody
        private List<Onboarding> GetOnboarding() {
            return new List<Onboarding> {
                new Onboarding {Heading = "Eksploruj opuszczone lokacje", Caption = "Ponad 2000 miejsc na mapie", Image ="background_image1"},
                new Onboarding {Heading = "Rywalizuj z innymi", Caption = "Zostań najlepszym z eksploatorów", Image ="background_image2"},
                new Onboarding {Heading = "Odczuj dreszcz emocji", Caption = "Podziel się wrażeniami z innymi", Image ="background_image3"}
            };
        }
        #endregion
    }

    public class Onboarding {
        public string Heading { get; set; }
        public string Caption { get; set; }
        public string Image { get; set; }
    }
}