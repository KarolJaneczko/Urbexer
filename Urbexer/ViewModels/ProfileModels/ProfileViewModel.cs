using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Threading.Tasks;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Urbexer.Models.Enums;
using Urbexer.Models.UserModels;
using Urbexer.Services;
using Urbexer.Views;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class ProfileViewModel : BaseViewModel, INotifyPropertyChanged {
        #region Zmienne
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        private static string profileAvatarSource, profileLogin, profilePosition, profileDescription, profileFirstName, profileLastName, profileVisitedPlaces;
        public string ProfileAvatarSource {
            get { return profileAvatarSource; }
            set {
                profileAvatarSource = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileAvatarSource"));
            }
        }
        public string ProfileLogin {
            get { return profileLogin; }
            set {
                profileLogin = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileLogin"));
            }
        }
        public string ProfilePosition {
            get { return profilePosition; }
            set {
                profilePosition = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfilePosition"));
            }
        }
        public string ProfileDescription {
            get { return profileDescription; }
            set {
                profileDescription = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileDescription"));
            }
        }
        public string ProfileFirstName {
            get { return profileFirstName; }
            set {
                profileFirstName = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileFirstName"));
            }
        }
        public string ProfileLastName {
            get { return profileLastName; }
            set {
                profileLastName = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileLastName"));
            }
        }
        public string ProfileVisitedPlaces {
            get { return profileVisitedPlaces; }
            set {
                profileVisitedPlaces = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileVisitedPlaces"));
            }
        }
        public ICommand ClickedInstagram { protected set; get; }
        public ICommand ClickedYoutube { protected set; get; }
        public ICommand ClickedFacebook { protected set; get; }
        public ICommand ClickedEdit { protected set; get; }
        #endregion
        #region Konstruktory
        public ProfileViewModel() {
            ClickedInstagram = new Command(OnClickedInstagram);
            ClickedYoutube = new Command(OnClickedYoutube);
            ClickedFacebook = new Command(OnClickedFacebook);
            ClickedEdit = new Command(OnClickedEdit);
            RefreshProfile();
        }
        #endregion
        #region Metody
        public static void FillProfile(ProfileData profileData) {
            if (profileData != null) {
                profileAvatarSource = GetAvatarByLayout(profileData.ProfileLayout);
                profileLogin = profileData.Login;
                profilePosition = "Miejsce w rankingu ogólnym - #" + profileData.LeaderboardPosition.ToString();
                profileDescription = string.IsNullOrEmpty(profileData.Description) ? "Opis jest pusty." : profileData.Description;
                profileFirstName = string.IsNullOrEmpty(profileData.FirstName) ? "-" : profileData.FirstName;
                profileLastName = string.IsNullOrEmpty(profileData.LastName) ? "-" : profileData.LastName;
                profileVisitedPlaces = profileData.VisitedPlaces.ToString();
            }
        }
        public void OnClickedInstagram() {
            if (!string.IsNullOrEmpty(UserInfo.yourProfile.InstagramLink)) {
                Browser.OpenAsync(new Uri(UserInfo.yourProfile.InstagramLink));
            }
        }
        public void OnClickedYoutube() {
            if (!string.IsNullOrEmpty(UserInfo.yourProfile.YoutubeLink)) {
                Browser.OpenAsync(new Uri(UserInfo.yourProfile.YoutubeLink));
            }
        }
        public void OnClickedFacebook() {
            if (!string.IsNullOrEmpty(UserInfo.yourProfile.FacebookLink)) {
                Browser.OpenAsync(new Uri(UserInfo.yourProfile.FacebookLink));
            }
        }
        public void OnClickedEdit() {
            EditProfileViewModel.FillEdit(UserInfo.yourProfile);
            Shell.Current.GoToAsync(nameof(EditProfilePage));
        }
        public static async Task RefreshProfile() {
            UserInfo.yourProfile = await ConnectionService.GetProfileByLogin(UserInfo.Login, ConnectionService.httpClient2);
            UserInfo.yourProfile.LeaderboardPosition = GetLeaderboardPositionByLogin(UserInfo.Login);
            FillProfile(UserInfo.yourProfile);
        }
        public static int GetLeaderboardPositionByLogin(string login) {
            var result = connectionService2.GetRankingList(0, httpClient2).Result;
            List<string> tempList = new List<string>();
            foreach (var x in result) {
                tempList.Add(x.login);
            }
            var index = tempList.IndexOf(login);
            if (index != -1) {
                return index + 1;
            }
            else {
                return 0;
            }
        }
        public static string GetAvatarByLayout(int layout) {
            switch (layout) {
                case (int)LayoutTypeEnum.Default:
                    return "default_avatar.png";
                case (int)LayoutTypeEnum.Fotograf:
                    return "fotograf_avatar.png";
                case (int)LayoutTypeEnum.Historyk:
                    return "historyk_avatar.png";
                case (int)LayoutTypeEnum.LowcaPrzygod:
                    return "lowca_przygod_avatar.png";
                case (int)LayoutTypeEnum.Obiezyswiat:
                    return "obiezyswiat_avatar.png";
                case (int)LayoutTypeEnum.Poszukiwacz:
                    return "poszukiwacz_avatar.png";
                case (int)LayoutTypeEnum.Wloczykij:
                    return "wloczykij_avatar.png";
                default:
                    break;
            }
            return "";
        }
        #endregion
    }
}