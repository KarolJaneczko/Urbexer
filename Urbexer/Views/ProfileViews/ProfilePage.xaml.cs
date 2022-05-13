using System;
using Urbexer.Models;
using Urbexer.Services;
using Urbexer.ViewModels;
using Xamarin.Forms;


namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca stronę profilu zalogowanego użytkownika.
    /// </summary>
    [QueryProperty(nameof(UserLogin), nameof(UserLogin))]
    public partial class ProfilePage : ContentPage {
        public string UserLogin { get; set; }
        #region Konstruktory
        public ProfilePage() {
            InitializeComponent();
            Routing.RegisterRoute(nameof(EditProfilePage), typeof(EditProfilePage));
        }
        #endregion
        override protected void OnAppearing() {
            base.OnAppearing();
            if (!string.IsNullOrEmpty(UserLogin)) {
                EditProfileButton.IsEnabled = false;
                EditProfileButton.IsVisible = false;
            }
            BindingContext = new ProfileViewModel(UserLogin);
        }
        private void CollectionView_SelectionChanged(CollectionView sender, SelectionChangedEventArgs e) {
            if (sender.SelectedItem == null)
                return;

            int locationId = ((Location)sender.SelectedItem).Id;
            if (locationId < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={locationId}";
            Shell.Current.GoToAsync(route);

            sender.SelectedItem = null;
        }
        private async void ClickedSearch(object sender, EventArgs e) {
            var login = await Application.Current.MainPage.DisplayPromptAsync("Wyszukaj użytkownika", "Proszę podać nick użytkownika");
            if (login != null) {
                if (await ConnectionService.GetProfileByLogin(login) != null) {
                    var route = $"{nameof(ProfilePage)}?UserLogin={login}";
                    await Shell.Current.GoToAsync(route);
                }
                else {
                    await Application.Current.MainPage.DisplayAlert("Błąd", "Nie ma użytkownika o nicku \"" + login + "\"", "OK");
                }
            }
        }
    }
}