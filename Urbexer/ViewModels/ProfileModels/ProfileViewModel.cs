﻿using System;
using System.ComponentModel;
using System.Threading.Tasks;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.Enums;
using Urbexer.Models.UserModels;
using Urbexer.Services;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class ProfileViewModel : BaseViewModel {
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
                profileLogin = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfilePosition"));
            }
        }
        public string ProfileDescription {
            get { return profileDescription; }
            set {
                profileLogin = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileDescription"));
            }
        }
        public string ProfileFirstName {
            get { return profileFirstName; }
            set {
                profileLogin = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileFirstName"));
            }
        }
        public string ProfileLastName {
            get { return profileLastName; }
            set {
                profileLogin = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileLastName"));
            }
        }
        public string ProfileVisitedPlaces {
            get { return profileVisitedPlaces; }
            set {
                profileLogin = value;
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
            FillProfile(UserInfo.yourProfile);
        }
        #endregion
        #region Metody
        public static void FillProfile(ProfileData profileData) {
            if (profileData != null) {
                profileAvatarSource = GetAvatarByLayout(profileData.ProfileLayout);
                profileLogin = profileData.Login;
                profilePosition = "Miejsce w rankingu #" + profileData.LeaderboardPosition.ToString();
                profileDescription = profileData.Description;
                profileFirstName = profileData.FirstName;
                profileLastName = profileData.LastName;
                profileVisitedPlaces = profileData.VisitedPlaces.ToString();
            }
        }
        public void OnClickedInstagram() {
            if (UserInfo.yourProfile.InstagramLink != null) {
                Device.OpenUri(new Uri(UserInfo.yourProfile.InstagramLink));
            }
        }
        public void OnClickedYoutube() {
            if (UserInfo.yourProfile.YoutubeLink != null) {
                Device.OpenUri(new Uri(UserInfo.yourProfile.YoutubeLink));
            }
        }
        public void OnClickedFacebook() {
            if (UserInfo.yourProfile.FacebookLink != null) {
                Device.OpenUri(new Uri(UserInfo.yourProfile.FacebookLink));
            }
        }
        public void OnClickedEdit() {
            Shell.Current.GoToAsync(nameof(EditProfilePage));
        }
        // Jeśli dodamy miejsce do odwiedzonych lub ranking się odświeży po jakimś okresie to wywołujemy metodę.
        public static async Task RefreshProfileAsync() {
            UserInfo.yourProfile = await ConnectionService.GetProfileByLogin(UserInfo.Login, ConnectionService.httpClient2);
            FillProfile(UserInfo.yourProfile);
        }
        private static string GetAvatarByLayout(int layout) {
            switch (layout) {
                case (int)LayoutTypeEnum.Default:
                    return "fotograf_avatar.png";
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
                    return "";
            }
        }
        #endregion
    }
}