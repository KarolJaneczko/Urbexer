using System.ComponentModel;
using System.Windows.Input;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    /// <summary>
    /// Klasa implementująca logikę strony RankingPage - wyboru kategorii tabeli rankingowej.
    /// </summary>
    public class RankingViewModel {
        #region Zmienne
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        public ICommand GoKolejowe { protected set; get; }
        public ICommand GoHotele { protected set; get; }
        public ICommand GoDomy { protected set; get; }
        public ICommand GoIndustrialne { protected set; get; }
        public ICommand GoRestauracje { protected set; get; }
        public ICommand GoRolnicze { protected set; get; }
        public ICommand GoZamki { protected set; get; }
        public ICommand GoPodziemia { protected set; get; }
        public ICommand GoBiurowce { protected set; get; }
        public ICommand GoMilitarne { protected set; get; }
        public ICommand GoSzpitale { protected set; get; }
        public ICommand GoTunele { protected set; get; }
        public ICommand GoInne { protected set; get; }
        public ICommand GoWszystkie { protected set; get; }
        #endregion
        #region Konstruktory
        public RankingViewModel() {
            GoKolejowe = new Command(Go_Kolejowe);
            GoHotele = new Command(Go_Hotele);
            GoDomy = new Command(Go_Domy);
            GoIndustrialne = new Command(Go_Industrialne);
            GoRestauracje = new Command(Go_Restauracje);
            GoRolnicze = new Command(Go_Rolnicze);
            GoZamki = new Command(Go_Zamki);
            GoPodziemia = new Command(Go_Podziemia);
            GoBiurowce = new Command(Go_Biurowce);
            GoMilitarne = new Command(Go_Militarne);
            GoSzpitale = new Command(Go_Szpitale);
            GoTunele = new Command(Go_Tunele);
            GoInne = new Command(Go_Inne);
            GoWszystkie = new Command(Go_Wszystkie);
        }
        #endregion
        #region Metody
        public void Go_Kolejowe() {
            GoToRanking(1);
        }
        public void Go_Hotele() {
            GoToRanking(2);
        }
        public void Go_Domy() {
            GoToRanking(3);
        }
        public void Go_Industrialne() {
            GoToRanking(4);
        }
        public void Go_Restauracje() {
            GoToRanking(5);
        }
        public void Go_Rolnicze() {
            GoToRanking(6);
        }
        public void Go_Zamki() {
            GoToRanking(7);
        }
        public void Go_Podziemia() {
            GoToRanking(8);
        }
        public void Go_Biurowce() {
            GoToRanking(9);
        }
        public void Go_Militarne() {
            GoToRanking(10);
        }
        public void Go_Szpitale() {
            GoToRanking(11);
        }
        public void Go_Tunele() {
            GoToRanking(12);
        }
        public void Go_Inne() {
            GoToRanking(13);
        }
        public void Go_Wszystkie() {
            GoToRanking(0);
        }
        public async void GoToRanking(int type) {
            string path = $"{nameof(LeaderboardPage)}?RankingCategory={type}";
            await Shell.Current.GoToAsync(path);
        }
        #endregion
    }
}