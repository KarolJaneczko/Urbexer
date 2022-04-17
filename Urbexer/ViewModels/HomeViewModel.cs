using System.Threading.Tasks;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class HomeViewModel : BaseViewModel {
        public ICommand BackCommand { get; private set; }
        public HomeViewModel() {
            BackCommand = new Command(async (x) => {
                if (await LogoutPopout()) {
                    UserInfo.Logout();
                    await Shell.Current.GoToAsync(nameof(MapPage));
                } }  );
        }
        public async Task<bool> LogoutPopout() {
            var result = await Shell.Current.DisplayAlert("Uwaga", "Czy chcesz się wylogować?", "Nie", "Tak");
            if (result != true)
                return true;
            else
                return false;
        }
    }
}