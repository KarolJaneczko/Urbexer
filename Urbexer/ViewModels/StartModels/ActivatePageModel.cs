using System;
using System.ComponentModel;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class ActivatePageModel : BaseViewModel {
        #region Zmienne
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        private string email, token;
        public string Email {
            get { return email; }
            set {
                email = value;
                PropertyChanged(this, new PropertyChangedEventArgs("Email"));
            }
        }
        public string Token {
            get { return token; }
            set {
                token = value;
                PropertyChanged(this, new PropertyChangedEventArgs("Token"));
            }
        }
        public ICommand SubmitCommand { protected set; get; }
        #endregion

        #region Konstruktory
        public ActivatePageModel() {
            SubmitCommand = new Command(OnSubmit);
        }
        #endregion

        #region Metody
        public async void OnSubmit() {
            try {
                ValidateEmail(Email);
                ValidateActivatingToken(Token);
                if (await connectionService.ConfirmRegistration(new ConfirmUser {
                    email = Email,
                    kodPotwierdzajacy = Token
                }, httpClient) == true) {
                    await Application.Current.MainPage.DisplayAlert("Sukces", "Konto zostało zaktywowane.", "OK");
                }
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