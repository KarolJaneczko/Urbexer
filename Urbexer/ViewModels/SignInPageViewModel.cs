using System;
using System.Windows.Input;
using Urbexer.Models;
using Xamarin.Forms;
using System.ComponentModel;
using Urbexer.Models.ApiModels;
using Urbexer.Services;
using Urbexer.Views;

namespace Urbexer.ViewModels {
    public class SignInPageViewModel : BaseViewModel {
        public Action DisplayInvalidLoginPrompt;
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        ConnectionService connectionService = new ConnectionService();
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
                }, connectionService.httpClient) == true) {
                    Routing.RegisterRoute(nameof(ProfilePage), typeof(ProfilePage));
                    await Shell.Current.GoToAsync(nameof(ProfilePage));
                }
            }
            catch (AppException exception) {
                DisplayError(exception.title, exception.message);
            }
            catch (Exception exception) {
                DisplayError("Wystąpił nieoczekiwany błąd.", exception.Message.ToString());
            }
        }
        private void ValidateLogin(string login) {
            if (string.IsNullOrEmpty(login)) {
                throw new AppException("Login nie może być pusty.", AppExceptionTypeEnum.EmptyField);
            }
            else if (login.Length < 6) {
                throw new AppException("Login jest za krótki.", AppExceptionTypeEnum.InvalidMinCredLength);
            }
            else if (login.Length > 30) {
                throw new AppException("Login jest za długi.", AppExceptionTypeEnum.InvalidMaxCredLength);
            }
            else if (!AppException.CheckSpecialChars(login)) {
                throw new AppException("Login nie może mieć znaków specjalnych innych niż '_'.", AppExceptionTypeEnum.InvalidLoginFormat);
            }
        }
        private void ValidatePassword(string password) {
            if (string.IsNullOrEmpty(password)) {
                throw new AppException("Hasło nie może być puste.", AppExceptionTypeEnum.EmptyField);
            }
            else if (password.Length < 6) {
                throw new AppException("Hasło nie może być krótsze niż 6 znaków.", AppExceptionTypeEnum.InvalidMinCredLength);
            }
            else if (password.Length > 12) {
                throw new AppException("Hasło nie może być dłuższe niż 12 znaków.", AppExceptionTypeEnum.InvalidMaxCredLength);
            }
        }
        private async void DisplayError(string title, string message) {
            await App.Current.MainPage.DisplayAlert(title, message, "OK");
        }
    }
}
