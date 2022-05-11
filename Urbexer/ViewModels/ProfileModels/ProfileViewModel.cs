using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
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
        protected static string profileAvatarSource, profileLogin, profilePosition, profileDescription, profileFirstName, profileLastName, profileVisitedPlaces;
        protected bool isLoading = false;
        protected List<int> locationsVisitedIds;
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
        /// <summary>
        /// Imię użytkownika.
        /// </summary>
        public string ProfileFirstName {
            get { return profileFirstName; }
            set {
                profileFirstName = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileFirstName"));
            }
        }
        /// <summary>
        /// Nazwisko użytkownika.
        /// </summary>
        public string ProfileLastName {
            get { return profileLastName; }
            set {
                profileLastName = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileLastName"));
            }
        }
        /// <summary>
        /// Pokazuje liczbe odwiedzonych miejsc przez danego użytkownika.
        /// </summary>
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
            set {
                _locationsVisited = value;
                PropertyChanged(this, new PropertyChangedEventArgs("LocationsVisited"));
            }
        }
        #region Komendy
        public ICommand ClickedInstagramCommand { protected set; get; }
        public ICommand ClickedYoutubeCommand { protected set; get; }
        public ICommand ClickedFacebookCommand { protected set; get; }
        public ICommand ClickedEditCommand { protected set; get; }
        public ICommand LoadMoreLocationsCommand { protected set; get; }
        #endregion Komendy
        #endregion Zmienne
        #region Konstruktory
        public ProfileViewModel() {
            LocationsVisited = new ObservableRangeCollection<Location>();

            ClickedInstagramCommand = new Command(OnClickedInstagram);
            ClickedYoutubeCommand = new Command(OnClickedYoutube);
            ClickedFacebookCommand = new Command(OnClickedFacebook);
            ClickedEditCommand = new Command(OnClickedEdit);
            LoadMoreLocationsCommand = new Command(async () => await LoadMoreLocations());
        }
        public ProfileViewModel(string userLogin) : this() {
            Device.InvokeOnMainThreadAsync(async () => { await LoadProfile(userLogin); });
        }
        #endregion
        #region Metody
        #region Przyciski
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
        #endregion Przyciski
        /// <summary>
        /// Metoda pozwalająca odświeżyć profil poprzez pobranie aktualnych informacji z bazy danych i wypełnianiu ich metodą FillProfile.
        /// </summary>
        public async Task LoadProfile(string userLogin = null) {
            if (string.IsNullOrEmpty(userLogin)) userLogin = UserInfo.Login;
            ProfileData profileData = await ConnectionService.GetProfileByLogin(userLogin);
            profileData.LeaderboardPosition = GetLeaderboardPositionByLogin(userLogin);
            FillProfile(profileData);
            await LoadMoreLocations();
        }
        /// <summary>
        /// Metoda wypełniająca profil danymi, pobranymi z bazy danych.
        /// </summary>
        public void FillProfile(ProfileData profileData) {
            if (profileData == null) return;
            ProfileAvatarSource = GetAvatarByLayout(profileData.ProfileLayout);
            ProfileLogin = profileData.Login;
            ProfilePosition = " #" + profileData.LeaderboardPosition.ToString();
            ProfileDescription = string.IsNullOrEmpty(profileData.Description) ? "Opis jest pusty." : profileData.Description;
            ProfileFirstName = string.IsNullOrEmpty(profileData.FirstName) ? "-" : profileData.FirstName;
            ProfileLastName = string.IsNullOrEmpty(profileData.LastName) ? "-" : profileData.LastName;
            ProfileVisitedPlaces = profileData.VisitedPlaces.ToString();
        }
        /// <summary>
        /// Metoda wyliczająca miejsce użytkownika w rankingu ogólnym.
        /// </summary>
        public static int GetLeaderboardPositionByLogin(string login, int type = 0) {
            var result = connectionService2.GetRankingList(type, httpClient2).Result;
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
        /// Pobierz id lokacji odwiedzonych przez użytkownika.
        /// </summary>
        protected async Task DownloadLocationsVisitedIds() {
            locationsVisitedIds = await LocationService.GetIdListOfUserVisited(ProfileLogin);
            locationsVisitedIds.Reverse(); // To sprawi że id będą w kolejności od najnowszego do najstarszego odwiedzonego
            await Device.InvokeOnMainThreadAsync(() => ProfileVisitedPlaces = Convert.ToString(locationsVisitedIds.Count()));
        }
        /// <summary>
        /// Wczytaj dodatkowe lokacje do listy odwiedzonych.
        /// </summary>
        protected async Task LoadMoreLocations(int loadAmount = 10) {
            if (isLoading) return; // Nie powzól na więcej niż jeden task LoadMore jednocześnie
            isLoading = true;

            if (locationsVisitedIds == null)
                await DownloadLocationsVisitedIds();

            int remainingLocations = locationsVisitedIds.Count - LocationsVisited.Count;
            List<int> ids = locationsVisitedIds.GetRange(LocationsVisited.Count, Math.Min(remainingLocations, loadAmount));
            LocationsVisited.AddRange(await LocationService.GetLocationListByIds(ids));


            isLoading = false;
        }
        #endregion
    }
}