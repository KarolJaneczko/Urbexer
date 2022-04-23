using System;
using System.Threading.Tasks;
using System.Windows.Input;
using Urbexer.Models;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class HomeViewModel : BaseViewModel {
        public ICommand GoBackCommand { get; private set; }
        public HomeViewModel() {
            GoBackCommand = new Command(async (x) => {
                if (await LogoutPopout()) {
                    UserInfo.Logout();
                    await Shell.Current.GoToAsync("WelcomePage");
                }
            });
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