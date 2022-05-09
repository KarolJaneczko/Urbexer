using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Threading.Tasks;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.Enums;
using Urbexer.Models.UserModels;
using Urbexer.Services;
using Urbexer.Views;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Location = Urbexer.Models.Location;

namespace Urbexer.ViewModels {
    /// <summary>
    /// Klasa implementująca logikę strony ProfilePage - podglądu profilu obecnie zalogowanego użytkownika.
    /// </summary>
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
        private ObservableRangeCollection<Location> _locationsVisited;
        /// <summary>
        /// Przechowuje lokacje odwiedzone przez wyświetlanego użytkownika.
        /// </summary>
        public ObservableRangeCollection<Location> LocationsVisited {
            get { return _locationsVisited; }
            set { _locationsVisited = value;
                PropertyChanged(this, new PropertyChangedEventArgs("VisitedLocations"));
            }
        }
        public ICommand ClickedInstagram { protected set; get; }
        public ICommand ClickedYoutube { protected set; get; }
        public ICommand ClickedFacebook { protected set; get; }
        public ICommand ClickedEdit { protected set; get; }
        private int currentLocationsPage = 1;
        private bool isLoading = false;
        #endregion
        #region Konstruktory
        public ProfileViewModel() {
            LocationsVisited = new ObservableRangeCollection<Location>();

            ClickedInstagram = new Command(OnClickedInstagram);
            ClickedYoutube = new Command(OnClickedYoutube);
            ClickedFacebook = new Command(OnClickedFacebook);
            ClickedEdit = new Command(OnClickedEdit);
            LoadMoreLocationsCommand = new Command(async() => await LoadMoreLocations());
            
            Task.Run(async () => await LoadMoreLocations());
            Device.InvokeOnMainThreadAsync(RefreshProfile);
        }
        #endregion
        #region Metody
        /// <summary>
        /// Metoda wypełniająca profil danymi, pobranymi z bazy danych.
        /// </summary>
        public static void FillProfile(ProfileData profileData) {
            if (profileData == null) return;
            profileAvatarSource = GetAvatarByLayout(profileData.ProfileLayout);
            profileLogin = profileData.Login;
            profilePosition = " #" + profileData.LeaderboardPosition.ToString();
            profileDescription = string.IsNullOrEmpty(profileData.Description) ? "Opis jest pusty." : profileData.Description;
            profileFirstName = string.IsNullOrEmpty(profileData.FirstName) ? "-" : profileData.FirstName;
            profileLastName = string.IsNullOrEmpty(profileData.LastName) ? "-" : profileData.LastName;
            profileVisitedPlaces = profileData.VisitedPlaces.ToString();
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
        /// <summary>
        /// Metoda pozwalająca odświeżyć profil poprzez pobranie aktualnych informacji z bazy danych i wypełnianiu ich metodą FillProfile.
        /// </summary>
        public static async Task RefreshProfile() {
            UserInfo.yourProfile = await ConnectionService.GetProfileByLogin(UserInfo.Login, ConnectionService.httpClient2);
            UserInfo.yourProfile.LeaderboardPosition = GetLeaderboardPositionByLogin(UserInfo.Login);
            UserInfo.yourProfile.VisitedPlaces = await ConnectionService.GetVisitedPlacesCountByLogin(UserInfo.Login, httpClient2);
            FillProfile(UserInfo.yourProfile);
        }
        /// <summary>
        /// Metoda wyliczająca miejsce użytkownika w rankingu ogólnym.
        /// </summary>
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
        /// <summary>
        /// Metoda przyjmująca numer layoutu i zwracająca odpowiednią nazwę zdjęcia profilowego, wyświetlanego w profilu.
        /// </summary>
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
        /// <summary>
        /// Wczytuje dodatkowe lokacje do listy odwiedzonych.
        /// </summary>
        public Command LoadMoreLocationsCommand;
        private async Task LoadMoreLocations() {
            if (!Plugin.Connectivity.CrossConnectivity.Current.IsConnected) return;
            if (isLoading) return; // Nie powzól na więcej niż jeden task LoadMore jednocześnie
            isLoading = true;

            //List<int> locationIds = await LocationService.GetIdListOfUserVisited(ProfileLogin, currentLocationsPage++);
            List<int> locationIds = await LocationService.GetIdListByCategory(1); // DO TESTOWANIA
            LocationsVisited.AddRange(await LocationService.GetLocationListByIds(locationIds));

            isLoading = false;
        }
        #endregion
    }
}