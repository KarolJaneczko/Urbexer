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
        private string email;
        private string password;
        public string Email {
            get { return email; }
            set {
                email = value;
                PropertyChanged(this, new PropertyChangedEventArgs("Email"));
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
                ValidateEmail(email);
                ValidatePassword(password);
                if (await connectionService.Login(new Login {
                    login = email,
                    password = password
                }, connectionService.httpClient) == true) {
                    Routing.RegisterRoute(nameof(HomePage), typeof(HomePage));
                    await Shell.Current.GoToAsync(nameof(HomePage));
                }
            }
            catch (AppException exception) {
                DisplayError(exception.title, exception.message);
            }
            catch (Exception exception) {
                DisplayError("Wystąpił nieoczekiwany błąd.", exception.Message.ToString());
            }
        }
        private void ValidateEmail(string email) {
            if (string.IsNullOrEmpty(email)) {
                throw new AppException("Email nie może być pusty.", AppExceptionTypeEnum.EmptyField);
            }
            else if (email.Length < 6) {
                throw new AppException("Email jest za krótki.", AppExceptionTypeEnum.InvalidMinCredLength);
            }
            else if (email.Length > 30) {
                throw new AppException("Email jest za długi.", AppExceptionTypeEnum.InvalidMaxCredLength);
            }
            else if (!AppException.CheckMail(email)) {
                throw new AppException("Zły format adresu mailowego.", AppExceptionTypeEnum.InvalidMailFormat);
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
