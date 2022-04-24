using Urbexer.Models.ApiModels;
#nullable enable

namespace Urbexer.Models.UserModels {
    public class ProfileData {
        #region Zmienne
        public string Login { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Description { get; set; }
        public string FacebookLink { get; set; }
        public string InstagramLink { get; set; }
        public string YoutubeLink { get; set; }
        public int ProfileLayout { get; set; }
        public int LeaderboardPosition { get; set; }
        public int VisitedPlaces { get; set; }
        #endregion
        #region Konstruktory
        public ProfileData(APIProfile apiProfile) {
            Login = string.IsNullOrEmpty(apiProfile.login) ? "-" : apiProfile.login;
            FirstName = string.IsNullOrEmpty(apiProfile.imie) ? "-" : apiProfile.imie;
            LastName = string.IsNullOrEmpty(apiProfile.nazwisko) ? "-" : apiProfile.nazwisko;
            Description = string.IsNullOrEmpty(apiProfile.opis) ? "Opis jest pusty." : apiProfile.opis;
            FacebookLink = string.IsNullOrEmpty(apiProfile.linkFacebook) ? string.Empty : apiProfile.linkFacebook;
            InstagramLink = string.IsNullOrEmpty(apiProfile.linkInstagram) ? string.Empty : apiProfile.linkInstagram;
            YoutubeLink = string.IsNullOrEmpty(apiProfile.linkYoutube) ? string.Empty : apiProfile.linkYoutube;
            ProfileLayout = apiProfile.layout;
            //Pozycja w rankingu - do zrobienia.
            LeaderboardPosition = 0;
            //Ilosc zwiedzonych miejsc - do zrobienia.
            VisitedPlaces = 0;
        }
        #endregion
    }
}