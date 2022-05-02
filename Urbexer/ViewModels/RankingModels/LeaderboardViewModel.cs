using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Urbexer.Models.UserModels;
using Urbexer.Services;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    internal class LeaderboardViewModel : BaseViewModel {
        #region Zmienne
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        public List<Rekord> RankingList { get => GetRanking(); }
        public static int RankingType;
        public string leaderboardMyAvatar, leaderboardMyLogin, leaderboardMyPlace, leaderboardCategory;
        public string LeaderboardMyAvatar {
            get { return leaderboardMyAvatar; }
            set {
                leaderboardMyAvatar = value;
                PropertyChanged(this, new PropertyChangedEventArgs("LeaderboardMyAvatar"));
            }
        }
        public string LeaderboardMyLogin {
            get { return leaderboardMyLogin; }
            set {
                leaderboardMyLogin = value;
                PropertyChanged(this, new PropertyChangedEventArgs("LeaderboardMyLogin"));
            }
        }
        public string LeaderboardMyPlace {
            get { return leaderboardMyPlace; }
            set {
                leaderboardMyPlace = value;
                PropertyChanged(this, new PropertyChangedEventArgs("LeaderboardMyPlace"));
            }
        }
        public string LeaderboardCategory {
            get { return leaderboardCategory; }
            set {
                leaderboardCategory = value;
                PropertyChanged(this, new PropertyChangedEventArgs("LeaderboardCategory"));
            }
        }
        #endregion
        #region Konstruktory
        public LeaderboardViewModel() {
            leaderboardMyAvatar = ProfileViewModel.GetAvatarByLayout(UserInfo.yourProfile.ProfileLayout);
            leaderboardMyLogin = UserInfo.Login;
            leaderboardMyPlace = GetMyLeaderboardPlace(RankingType);
            leaderboardCategory = GetLeaderboardCategory(RankingType);
        }
        #endregion
        #region Metody
        public List<Rekord> GetRanking() {
            var result = connectionService.GetRankingList(RankingType, httpClient).Result;
            var tempList = Rekord.ZmapowanaLista(result);
            return tempList;
        }
        private string GetLeaderboardCategory(int leaderboardType) {
            var temp = string.Empty;
            switch (leaderboardType) {
                case 0:
                    temp += "Ogólny";
                    break;
                case 1:
                    temp += "Kolejowe";
                    break;
                case 2:
                    temp += "Hotele";
                    break;
                case 3:
                    temp += "Domy";
                    break;
                case 4:
                    temp += "Industrialne";
                    break;
                case 5:
                    temp += "Restauracje";
                    break;
                case 6:
                    temp += "Rolnicze";
                    break;
                case 7:
                    temp += "Zamki";
                    break;
                case 8:
                    temp += "Podziemia";
                    break;
                case 9:
                    temp += "Biurowce";
                    break;
                case 10:
                    temp += "Militarne";
                    break;
                case 11:
                    temp += "Szpitale";
                    break;
                case 12:
                    temp += "Tunele";
                    break;
                case 13:
                    temp += "Inne";
                    break;
            }
            return temp;
        }
        private string GetMyLeaderboardPlace(int leaderboardType) {
            string temp = string.Empty;
            var tempList = GetRanking();
            if (tempList.Count == 0) {
                temp += "brak danych";
            }
            else if (tempList.FindIndex(x => x.Login == UserInfo.Login) == -1) {
                temp += "brak danych";
            }
            else {
                temp += (tempList.FindIndex(x => x.Login == UserInfo.Login) + 1).ToString();
            }
            return temp;
        }
        #endregion
    }
    public class Rekord {
        #region Zmienne
        public string Login { get; set; }
        public int LiczbaMiejsc { get; set; }
        public string AvatarSource { get; set; }
        public int Miejsce { get; set; }
        public ICommand GoToProfile { protected set; get; }
        public System.Net.Http.HttpClient httpClient = new System.Net.Http.HttpClient(ConnectionService.clientHandler);
        #endregion
        #region Konstruktory
        public Rekord(string login, int liczbaMiejsc, int layout) {
            Login = login;
            LiczbaMiejsc = liczbaMiejsc;
            GoToProfile = new Command(GoToProfileClicked);
            AvatarSource = ProfileViewModel.GetAvatarByLayout(layout);
            Miejsce = RankingProfileViewModel.GetLeaderboardPositionByLogin(Login, LeaderboardViewModel.RankingType);
        }
        #endregion
        #region Metody
        public static List<Rekord> ZmapowanaLista(List<APIRanking> list) {
            var result = new List<Rekord>();
            foreach (var x in list) {
                var item = new Rekord(x.login, x.liczbaMiejsc, x.layout);
                result.Add(item);
            }
            return result;
        }
        public async void GoToProfileClicked() {
            ProfileData profileData = await ConnectionService.GetProfileByLogin(Login, httpClient);
            profileData.LeaderboardPosition = RankingProfileViewModel.GetLeaderboardPositionByLogin(profileData.Login, 0);
            profileData.VisitedPlaces = await ConnectionService.GetVisitedPlacesCountByLogin(profileData.Login, httpClient);
            RankingProfileViewModel.FillProfile(profileData);
            await Shell.Current.GoToAsync(nameof(RankingProfile));
        }

        #endregion
    }
}