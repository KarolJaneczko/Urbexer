using System.Windows.Input;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class ProfileViewModel : BaseViewModel {
        public ICommand ClickedInstagram { protected set; get; }
        public ICommand ClickedYoutube { protected set; get; }
        public ICommand ClickedFacebook { protected set; get; }
        public ProfileViewModel() {
            ClickedInstagram = new Command(OnClickedInstagram);
            ClickedYoutube = new Command(OnClickedYoutube);
            ClickedFacebook = new Command(OnClickedFacebook);
        }
        public void OnClickedInstagram() {

        }
        public void OnClickedYoutube() {

        }
        public void OnClickedFacebook() {

        }
    }
}
