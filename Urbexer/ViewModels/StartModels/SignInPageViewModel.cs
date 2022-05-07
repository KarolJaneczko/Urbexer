﻿using System;
using System.ComponentModel;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
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
        public ICommand SubmitCommand { protected set; get; }
        #endregion
        #region Konstruktory
        public SignInPageViewModel() {
            SubmitCommand = new Command(OnSubmit);
        }
        #endregion
        #region Metody
        public async void OnSubmit() {
            try {
                ValidateLogin(login);
                ValidatePassword(password);
                if (await connectionService.Login(new APILogin {
                    login = login,
                    password = password
                }, httpClient) == true) {
                    await ProfileViewModel.RefreshProfile();
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
        }
        #endregion
    }
}
