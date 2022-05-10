using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Urbexer.Models.UserModels;
using Urbexer.Services;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    internal class LeaderboardViewModel : BaseViewModel {
        /// <summary>
        /// Klasa implementująca logikę strony LeaderboardPage - strony z rankingiem danej kategorii.
        /// </summary>
        #region Zmienne
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        public List<Rekord> RankingList { get => GetRanking(); }
        public static int RankingType;
        public int leaderboardMyCount;
        public string leaderboardMyAvatar, leaderboardMyLogin, leaderboardMyPlace, leaderboardCategory;
        public int LeaderboardMyCount {
            get { return leaderboardMyCount; }
            set {
                leaderboardMyCount = value;
                PropertyChanged(this, new PropertyChangedEventArgs("LeaderboardMyCount"));
            }
        }
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
            leaderboardMyPlace = GetMyLeaderboardPlace();
            leaderboardCategory = GetLeaderboardCategory(RankingType);
            leaderboardMyCount = GetLeaderboardMyCount(UserInfo.Login);
        }
        #endregion
        #region Metody
        /// <summary>
        /// Metoda pobierająca ranking z bazy danych.
        /// </summary>
        public List<Rekord> GetRanking() {
            var result = connectionService.GetRankingList(RankingType, httpClient).Result;
            var tempList = Rekord.ZmapowanaLista(result);
            return tempList;
        }
        /// <summary>
        /// Metoda pobierająca numeryczny typ rankingu i zwracająca nazwę kategorii.
        /// </summary>
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
        /// <summary>
        /// Metoda wyliczająca pozycję w rankingu bieżącego, zalogowanego użytkownika i wyświetlająca ją na stronie rankingu.
        /// </summary>
        private string GetMyLeaderboardPlace() {
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
        /// <summary>
        /// Metoda pobierająca liczbę odwiedzonych miejsc z wybranej przez nas kategorii w rankingu i wyświetaljąca ją na stronie rankingu.
        /// </summary>
        private int GetLeaderboardMyCount(string login) {
            int temp = 0;
            var tempList = GetRanking();
            if (tempList.Count == 0) {
                return temp;
            }
            else if (tempList.FindIndex(x => x.Login == login) == -1) {
                return temp;
            }
            else {
                temp = (tempList.FirstOrDefault(x => x.Login == login).LiczbaMiejsc);
            }
            return temp;
        }
        #endregion
    }
    public class Rekord {
        /// <summary>
        /// Klasa reprezentująca rekord w tabeli rankingowej.
        /// </summary>
        #region Zmienne
        public string Login { get; set; }
        public int LiczbaMiejsc { get; set; }
        public string AvatarSource { get; set; }
        public int Miejsce { get; set; }
        public Command<string> GoToProfileCommand { protected set; get; }
        public System.Net.Http.HttpClient httpClient = new System.Net.Http.HttpClient(ConnectionService.clientHandler);
        #endregion
        #region Konstruktory
        public Rekord(string login, int liczbaMiejsc, int layout) {
            Login = login;
            LiczbaMiejsc = liczbaMiejsc;
            GoToProfileCommand = new Command<string>(GoToProfile);
            AvatarSource = ProfileViewModel.GetAvatarByLayout(layout);
            Miejsce = ProfileViewModel.GetLeaderboardPositionByLogin(Login, LeaderboardViewModel.RankingType);
        }
        #endregion
        #region Metody
        /// <summary>
        /// Metoda mapująca listę rankingową, pobraną z bazy danych i mapująca ją na rekordy w tabeli.
        /// </summary>
        public static List<Rekord> ZmapowanaLista(List<APIRanking> list) {
            var result = new List<Rekord>();
            foreach (var x in list) {
                if (!x.layout.HasValue)
                    x.layout = 0;
                var item = new Rekord(x.login, (int)x.liczbaMiejsc, (int)x.layout);
                result.Add(item);
            }
            return result;
        }
        /// <summary>
        /// Metoda wywoływana przy kliknięciu rekordu w tabeli - przenosi użytkownika do podglądu profilu użytkownika.
        /// </summary>
        public async void GoToProfile(string login) {
            var route = $"{nameof(ProfilePage)}?UserLogin={login}";
            await Shell.Current.GoToAsync(route);
        }

        #endregion
    }
}