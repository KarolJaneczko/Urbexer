using System.Collections.Generic;
using System.Threading.Tasks;
using Urbexer.Models.ApiModels;

namespace Urbexer.ViewModels {
    internal class LeaderboardViewModel : BaseViewModel {
        public List<Rekord> RankingList { get => GetRanking(); }
        public static int RankingType;

        public LeaderboardViewModel() {

        }

        private List<Rekord> GetRanking() {
            var result = connectionService.GetRankingList(RankingType, httpClient).Result;
            var tempList = Rekord.ZmapowanaLista(result);
            return tempList;
        }
    }
    public class Rekord {
        public string login { get; set; }
        public int liczbaMiejsc { get; set; }
        public Rekord(string Login, int LiczbaMiejsc) {
            login = Login;
            liczbaMiejsc = LiczbaMiejsc;
        }
        public static List<Rekord> ZmapowanaLista(List<APIRanking> list) {
            var result = new List<Rekord>();
            foreach(var x in list) {
                var item = new Rekord(x.login, x.liczbaMiejsc);
                result.Add(item);
            }
            return result;
        }
    }
}
