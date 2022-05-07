using System;
using Urbexer.Models;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    /// <summary>
    /// Klasa reprezentująca stronę powitalną aplikacji.
    /// </summary>
    public partial class HomePage : ContentPage {
        #region Konstruktory
        public HomePage() {
            InitializeComponent();
        }
        #endregion
        #region Metody
        void OnExpanderTapped(object sender, EventArgs e) {
        }
        protected override bool OnBackButtonPressed() {
            return true;
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

        protected override void OnAppearing() {
            base.OnAppearing();

            // Przy pierwszym uruchomienu nie wyświetlają się lokacje jeżeli BindingContext jest ustawiony w xaml albo konstruktorze
            // To rozwiązuje ten problem
            BindingContext = new HomeViewModel();
        }
        #endregion
    }

}