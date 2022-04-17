using System;
using System.Windows.Input;
using Urbexer.Models;
using Xamarin.Forms;
using System.ComponentModel;
using Urbexer.Models.ApiModels;
using Urbexer.Views;

namespace Urbexer.ViewModels {
    public class SignInPageViewModel : BaseViewModel {
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        private string login;
        private string password;
        public string Login {
            get { return login; }
            set {
                login = value;
                PropertyChanged(this, new PropertyChangedEventArgs("Login"));
            }
        }
        public string Password {
            get { return password; }
            set {
                password = value;
                PropertyChanged(this, new PropertyChangedEventArgs("Password"));
            }
        }
        public ICommand SubmitCommand { protected set; get; }
        public SignInPageViewModel() {
            SubmitCommand = new Command(OnSubmit);
        }

        public async void OnSubmit() {
            try {
                ValidateLogin(login);
                ValidatePassword(password);
                if (await connectionService.Login(new Login {
                    login = login,
                    password = password
                }, httpClient) == true) {
                    await Shell.Current.GoToAsync("/" + nameof(HomePage));
                }
            }
            catch (AppException exception) {
                DisplayError(exception.title, exception.message);
            }
            catch (Exception exception) {
                DisplayError("Wystąpił nieoczekiwany błąd.", exception.Message.ToString());
            }
        }
    }
}
