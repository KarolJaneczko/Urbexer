using Urbexer.Models;
﻿using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class HomePage : ContentPage {
        public HomePage() {
            InitializeComponent();
        }
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
    }
}