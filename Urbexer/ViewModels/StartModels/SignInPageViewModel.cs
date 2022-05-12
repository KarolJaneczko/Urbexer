using System;
using System.ComponentModel;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    /// <summary>
    /// Klasa reprezentująca logikę strony logowania.
    /// </summary>
    public class SignInPageViewModel : BaseViewModel {
        #region Zmienne
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
        bool isBusy = false;
        public ICommand SubmitCommand { protected set; get; }
        #endregion
        #region Konstruktory
        public SignInPageViewModel() {
            SubmitCommand = new Command(OnSubmit);
        }
        #endregion
        #region Metody
        /// <summary>
        /// Metoda wywoływana przy kliknięciu przycisku do logowania. Jeśli wprowadzone dane są prawidłowe, to pobieramy dane dotyczące naszego profilu i przechodzimy do strony startowej.
        /// </summary>
        public async void OnSubmit() {
            if (isBusy) return;
            isBusy = true;

            try {
                ValidateLogin(login);
                ValidatePassword(password);
                if (await connectionService.Login(new APILogin {
                    login = login,
                    password = password
                }, httpClient) == true) {
                    await Shell.Current.GoToAsync("../../..///HomePage");
                }
            }
            catch (System.Net.Http.HttpRequestException exception) {
                DisplayError("Błąd", "Brak połączenia z internetem");
            }
            catch (AppException exception) {
                DisplayError(exception.title, exception.message);
            }
            catch (Exception exception) {
                DisplayError("Wystąpił nieoczekiwany błąd.", exception.Message.ToString());
            }
            finally {
                isBusy = false;
            }
        }
        #endregion
    }
}
