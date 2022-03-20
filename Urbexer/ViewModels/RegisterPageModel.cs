using System;
using System.ComponentModel;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Urbexer.Services;
using Urbexer.Views;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class RegisterPageModel : BaseViewModel {
        public Action DisplayInvalidRegisterPrompt;
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        ConnectionService connectionService = new ConnectionService();
        private string login;
        private string email;
        private string password;
        private string passwordRepeat;
        public string Login {
            get { return login; }
            set {
                login = value;
                PropertyChanged(this, new PropertyChangedEventArgs("Login"));
            }
        }
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
        public string PasswordRepeat {
            get { return passwordRepeat; }
            set {
                passwordRepeat = value;
                PropertyChanged(this, new PropertyChangedEventArgs("PasswordRepeat"));
            }
        }
        public ICommand SubmitCommand { protected set; get; }
        public RegisterPageModel() {
            SubmitCommand = new Command(OnSubmit);
        }
        public async void OnSubmit() {
            try {
                ValidateLogin(Login);
                ValidateEmail(Email);
                ValidatePassword(Password);
                if (string.Equals(password, passwordRepeat)) {
                    if (await connectionService.Register(new RegisterUser {
                        email = Email,
                        login = Login,
                        potwierdzHaslo = Password,
                        hasloHash = PasswordRepeat,
                        czyAdmin = false
                    }, connectionService.httpClient) == true) {
                        /* kodzior po udanej rejestracji aby zatwierdzic rejestracje */
                    }
                }
                else {
                    throw new AppException("Hasła się nie zgadzają.", AppExceptionTypeEnum.StringsDontMatch);
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