using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Services;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    /// <summary>
    /// ViewModel strony rankingu.
    /// </summary>
    internal class LeaderboardViewModel : BaseViewModel {
        #region Zmienne
        private readonly ObservableRangeCollection<LeaderboardRecord> _records = new ObservableRangeCollection<LeaderboardRecord>();
        public ObservableRangeCollection<LeaderboardRecord> Records { get => _records; }
        private readonly ObservableRangeCollection<LeaderboardRecord> _recordsFiltered = new ObservableRangeCollection<LeaderboardRecord>();
        public ObservableRangeCollection<LeaderboardRecord> RecordsFiltered { get => _recordsFiltered; }
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
        private string _searchFilter = "";
        public string SearchFilter {
            get { return _searchFilter; }
            set {
                if (_searchFilter.Length > value.Length) {
                    RecordsFiltered.Clear();
                    RecordsFiltered.AddRange(Records.ToList());
                }
                _searchFilter = value;
                FilterRecords();
                OnPropertyChanged(nameof(SearchFilter));
            }
        }
        #endregion
        #region Konstruktory
        public LeaderboardViewModel(int category) {
            Device.InvokeOnMainThreadAsync(async () => await FillRecords(category));
        }
        #endregion
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
            // Pobierze rekordy i usuń te, które nie mają odwiedzonych miejsc w tej kategorii
            var recordsAll = await ConnectionService.GetRankingList(category); // Wszystkie rekordy z kategori
            List<LeaderboardRecord> records = recordsAll // Tylko rekordy gdzie użytkownicy mają więcej niż 0 odwiedzin
                .Where(r => r.LiczbaMiejsc > 0)
                .ToList();
            RecordsFiltered.AddRange(recordsAll);
            Records.AddRange(recordsAll);

            // Znajdź rekord obecnego użytkownika i odpowiendio ustaw dane na górze strony.
            LeaderboardMyAvatar = ProfileViewModel.GetAvatarByLayout(UserInfo.yourProfile.ProfileLayout);
            LeaderboardMyLogin = UserInfo.Login;
            int myPlace = records.FindIndex(r => r.Login == UserInfo.Login) + 1;
            LeaderboardMyPlace = (myPlace == 0 ? records.Count() + 1 : myPlace).ToString();
            LeaderboardCategory = GetLeaderboardCategory(category);
            LeaderboardMyCount = records.Find(r => r.Login == UserInfo.Login).LiczbaMiejsc;
        }
        private void FilterRecords() {
            if (string.IsNullOrEmpty(SearchFilter))
                return;
            RecordsFiltered.RemoveRange(RecordsFiltered.ToList()
                .Where(r => !r.Login.ToLower().Contains(SearchFilter.ToLower())));
        }
        #endregion
    }
}