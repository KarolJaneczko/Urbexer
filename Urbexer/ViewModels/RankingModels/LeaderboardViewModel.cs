using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Services;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    internal class LeaderboardViewModel : BaseViewModel {
        /// <summary>
        /// Klasa implementująca logikę strony LeaderboardPage - strony z rankingiem danej kategorii.
        /// </summary>
        #region Zmienne
        public ObservableRangeCollection<LeaderboardRecord> _recordsCollection = new ObservableRangeCollection<LeaderboardRecord>();
        public ObservableRangeCollection<LeaderboardRecord> RecordsCollection {
            get { return _recordsCollection; }
            set {
                _recordsCollection = value;
                OnPropertyChanged("RecordsCollection");
            }
        }
        private int _leaderboardMyCount;
        public int LeaderboardMyCount {
            get { return _leaderboardMyCount; }
            set {
                _leaderboardMyCount = value;
                OnPropertyChanged("LeaderboardMyCount");
            }
        }
        private string _leaderboardMyAvatar;
        public string LeaderboardMyAvatar {
            get { return _leaderboardMyAvatar; }
            set {
                _leaderboardMyAvatar = value;
                OnPropertyChanged("LeaderboardMyAvatar");
            }
        }
        private string _leaderboardMyLogin;
        public string LeaderboardMyLogin {
            get { return _leaderboardMyLogin; }
            set {
                _leaderboardMyLogin = value;
                OnPropertyChanged("LeaderboardMyLogin");
            }
        }
        private string _leaderboardMyPlace;
        public string LeaderboardMyPlace {
            get { return _leaderboardMyPlace; }
            set {
                _leaderboardMyPlace = value;
                OnPropertyChanged("LeaderboardMyPlace");
            }
        }
        private string _leaderboardCategory;
        public string LeaderboardCategory {
            get { return _leaderboardCategory; }
            set {
                _leaderboardCategory = value;
                OnPropertyChanged("LeaderboardCategory");
            }
        }
        #endregion
        #region Konstruktory
        public LeaderboardViewModel(int category) {
            Task.Run(async () => await FillRecords(category));
            //Device.InvokeOnMainThreadAsync(async () => await FillRecords(category));
        }
        #endregion
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        #region Metody
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
        private async Task FillRecords(int category) {
            List<LeaderboardRecord> records = await ConnectionService.GetRankingList(category);

            // Dodaj tylko te rekordy, które mają jakieś odwiedzenia w danej kategorii
            RecordsCollection.AddRange(records.Where(r => r.LiczbaMiejsc > 0));
            //RecordsCollection.AddRange(records);

            // Znajdź rekord obecnego użytkownika i odpowiendio ustaw dane na górze strony.
            Device.BeginInvokeOnMainThread(() => {
                LeaderboardMyAvatar = ProfileViewModel.GetAvatarByLayout(UserInfo.yourProfile.ProfileLayout);
                LeaderboardMyLogin = UserInfo.Login;
                LeaderboardMyPlace = (records.FindIndex(r => r.Login == UserInfo.Login) + 1).ToString();
                LeaderboardCategory = GetLeaderboardCategory(category);
                LeaderboardMyCount = records.Find(r => r.Login == UserInfo.Login).LiczbaMiejsc;
            });
        }
        #endregion
    }
}