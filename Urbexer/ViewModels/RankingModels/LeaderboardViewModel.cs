using System.Collections.Generic;
using System.Windows.Input;
using Urbexer.Models.ApiModels;
using Urbexer.Models.UserModels;
using Urbexer.Services;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    internal class LeaderboardViewModel : BaseViewModel {
        #region Zmienne
        public List<Rekord> RankingList { get => GetRanking(); }
        public static int RankingType;
        #endregion
        #region Konstruktory
        public LeaderboardViewModel() {
        }
        #endregion
        #region Metody
        private List<Rekord> GetRanking() {
            var result = connectionService.GetRankingList(RankingType, httpClient).Result;
            var tempList = Rekord.ZmapowanaLista(result);
            return tempList;
        }
        #endregion
    }
    public class Rekord {
        #region Zmienne
        public string login { get; set; }
        public int liczbaMiejsc { get; set; }
        public ICommand goToProfile { protected set; get; }
        public System.Net.Http.HttpClient httpClient = new System.Net.Http.HttpClient(ConnectionService.clientHandler);
        #endregion
        #region Konstruktory
        public Rekord(string Login, int LiczbaMiejsc) {
            login = Login;
            liczbaMiejsc = LiczbaMiejsc;
            goToProfile = new Command(GoToProfile);
        }
        #endregion
        #region Metody
        public static List<Rekord> ZmapowanaLista(List<APIRanking> list) {
            var result = new List<Rekord>();
            foreach (var x in list) {
                var item = new Rekord(x.login, x.liczbaMiejsc);
                result.Add(item);
            }
            return result;
        }
        public async void GoToProfile() {
            ProfileData profileData = await ConnectionService.GetProfileByLogin(login, httpClient);
            RankingProfileViewModel.FillProfile(profileData);
            await Shell.Current.GoToAsync(nameof(RankingProfile));
        }
        #endregion
    }
}