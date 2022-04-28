using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class LeaderboardPage : ContentPage {
        public LeaderboardPage() {
            InitializeComponent();
            BindingContext = new LeaderboardViewModel();
        }
    }
}