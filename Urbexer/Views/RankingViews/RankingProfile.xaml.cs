using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class RankingProfile : ContentPage {
        public RankingProfile() {
            InitializeComponent();
            BindingContext = new RankingProfileViewModel();
        }
        protected override void OnAppearing() {
            BindingContext = new RankingProfileViewModel();
        }
    }
}