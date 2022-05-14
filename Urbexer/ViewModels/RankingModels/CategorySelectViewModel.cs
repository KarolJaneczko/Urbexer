using System.Collections.Generic;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    /// <summary>
    /// ViewModel strony wyboru kategorii rankingu.
    /// </summary>
    public class CategorySelectViewModel : BaseViewModel {
        #region Zmienne
        /// <summary>
        /// Mapuje nazwy kategorii do id.
        /// </summary>
        readonly Dictionary<string, int> CategoryDictionary = new Dictionary<string, int> {
            {"Wszystkie", 0},
            {"Kolejowe", 1},
            {"Hotele", 2},
            {"Domy", 3},
            {"Industrialne", 4},
            {"Restauracje", 5},
            {"Rolnicze", 6},
            {"Zamki", 7},
            {"Podziemia", 8},
            {"Biurowce", 9},
            {"Militarne", 10},
            {"Szpitale", 11},
            {"Tunele", 12},
            {"Inne", 13},
        };
        public Command GoToRankingCommand { get; set; }
        #endregion
        #region Konstruktory
        public CategorySelectViewModel() {
            GoToRankingCommand = new Command<string>(GoToRanking);
        }
        #endregion
        #region Metody
        /// <summary>
        /// Przenosi do strony rankingu odpowiedniej kategorii.
        /// </summary>
        /// <param name="category">Jeden z kluczy <see cref="CategoryDictionary"/></param>
        private void GoToRanking(string category) {
            var route = $"{nameof(LeaderboardPage)}?category={CategoryDictionary[category]}";
            Shell.Current.GoToAsync(route);
        }
        #endregion
    }
}