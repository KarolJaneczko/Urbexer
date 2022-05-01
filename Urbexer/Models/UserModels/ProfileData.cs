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
            Login = string.IsNullOrEmpty(apiProfile.login) ? string.Empty : apiProfile.login;
            FirstName = string.IsNullOrEmpty(apiProfile.imie) ? string.Empty : apiProfile.imie;
            LastName = string.IsNullOrEmpty(apiProfile.nazwisko) ? string.Empty : apiProfile.nazwisko;
            Description = string.IsNullOrEmpty(apiProfile.opis) ? string.Empty : apiProfile.opis;
            FacebookLink = string.IsNullOrEmpty(apiProfile.linkFacebook) ? string.Empty : apiProfile.linkFacebook;
            InstagramLink = string.IsNullOrEmpty(apiProfile.linkInstagram) ? string.Empty : apiProfile.linkInstagram;
            YoutubeLink = string.IsNullOrEmpty(apiProfile.linkYoutube) ? string.Empty : apiProfile.linkYoutube;
            ProfileLayout = apiProfile.layout;
            LeaderboardPosition = 0;
            VisitedPlaces = 0;
        }
        #endregion
        #region Metody
        public static string GetLayoutNameFromNumber(int layout) {
            switch (layout) {
                case 0:
                    return "Domyślny";
                case 1:
                    return "Fotograf";
                case 2:
                    return "Historyk";
                case 3:
                    return "Łowca przygód";
                case 4:
                    return "Obieżyświat";
                case 5:
                    return "Poszukiwacz";
                case 6:
                    return "Włóczykij";
                default:
                    break;
            }
            return "Domyślny";
        }
        public static int GetLayoutNumberFromName(string layout) {
            switch (layout) {
                case "Domyślny":
                    return 0;
                case "Fotograf":
                    return 1;
                case "Historyk":
                    return 2;
                case "Łowca przygód":
                    return 3;
                case "Obieżyświat":
                    return 4;
                case "Poszukiwacz":
                    return 5;
                case "Włóczykij":
                    return 6;
                default:
                    break;
            }
            return 0;
        }
        #endregion
    }
}