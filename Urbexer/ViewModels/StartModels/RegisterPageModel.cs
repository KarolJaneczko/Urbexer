using System;
using System.ComponentModel;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class RegisterPageModel : BaseViewModel {
        #region Zmienne
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        private string login, email, password, passwordRepeat;
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
        #endregion
        #region Konstruktory
        public RegisterPageModel() {
            SubmitCommand = new Command(OnSubmit);
        }
        #endregion
        #region Metody
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
                    }, httpClient) == true) {
                        await Application.Current.MainPage.DisplayAlert("Sukces", "Na podany adres mailowy otrzymasz link potwierdzający aktywację konta.", "OK");
                        //Tu będzie metoda generująca rekord w tabeli z profilami.
                    }
                }
                else
                    throw new AppException("Hasła się nie zgadzają.", AppExceptionTypeEnum.StringsDontMatch);
            }
            catch (AppException exception) {
                DisplayError(exception.title, exception.message);
            }
            catch (Exception exception) {
                DisplayError("Wystąpił nieoczekiwany błąd.", exception.Message.ToString());
            }
        }
        #endregion
    }
}