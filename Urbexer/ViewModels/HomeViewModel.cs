using System.Windows.Input;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class HomeViewModel : BaseViewModel {
        public ICommand BackCommand { protected set; get; }
        public HomeViewModel() {
            BackCommand = new Command(OnBack);
        }
        public void OnBack() {
        }
    }
}