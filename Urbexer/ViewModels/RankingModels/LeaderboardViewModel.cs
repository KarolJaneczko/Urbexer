using System.Collections.Generic;

namespace Urbexer.ViewModels {
    internal class LeaderboardViewModel : BaseViewModel {
        public List<Weather> RankingList { get => WeatherData(); }
        public static int RankingType;

        public LeaderboardViewModel() {

        }
        private List<Weather> WeatherData() {
            var tempList = new List<Weather>();
            tempList.Add(new Weather { Temp = "22", Date = "Sunday 16", Icon = "hotel_icon" });
            tempList.Add(new Weather { Temp = "21", Date = "Monday 17", Icon = "tunnel_icon.png" });
            tempList.Add(new Weather { Temp = "20", Date = "Tuesday 18", Icon = "tunnel_icon.png" });
            tempList.Add(new Weather { Temp = "12", Date = "Wednesday 19", Icon = "tunnel_icon.png" });
            tempList.Add(new Weather { Temp = "17", Date = "Thursday 20", Icon = "tunnel_icon.png" });
            tempList.Add(new Weather { Temp = "20", Date = "Friday 21", Icon = "tunnel_icon.png" });
            return tempList;
        }
    }
    public class Weather {
        public string Temp { get; set; }
        public string Date { get; set; }
        public string Icon { get; set; }
    }
}
