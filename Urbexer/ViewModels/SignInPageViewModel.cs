using System;
using System.Windows.Input;
using Urbexer.Models;
using Xamarin.Forms;
using System.ComponentModel;
using Urbexer.Views;

namespace Urbexer.ViewModels {
    public class SignInPageViewModel : BaseViewModel {

        public Action DisplayInvalidLoginPrompt;
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
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


                if (email != "urbexer@gmail.com" || password != "tajne") {
                    await App.Current.MainPage.DisplayAlert("Test Title", "Test", "OK");
                    
                }

                else {
                    Routing.RegisterRoute(nameof(HomePage), typeof(HomePage));
                    //Shell.Current.GoToAsync(nameof(HomePage));
                }
            }
            catch (AppException exception) {
                switch (exception.type) {
                    case AppExceptionTypeEnum.EmptyField:
                        DisplayError("Błąd przy wprowadzaniu danych.", exception.message);
                        break;
                }
            }
        }

        private void ValidateEmail(string email) {
            if (string.IsNullOrEmpty(email)) {
                throw new AppException("Email nie może być pusty.", AppExceptionTypeEnum.EmptyField);
            }
        }
        private void ValidatePassword(string password) {
            if (string.IsNullOrEmpty(password)) {
                throw new AppException("Hasło nie może być puste.", AppExceptionTypeEnum.EmptyField);
            }
        }
        private async void DisplayError(string title, string message) {
            await App.Current.MainPage.DisplayAlert(title, message, "OK");
        }
    }
}
