using Urbexer.Models;
﻿using System;
using Urbexer.ViewModels;
using Xamarin.Forms;
using System.Collections.ObjectModel;
using Xamarin.CommunityToolkit.UI.Views;

namespace Urbexer.Views {
    public partial class HomePage : ContentPage {

        public class Question
        {
            public string ImageIcon { get; set; }
            public string BackgroundSource { get; set; }
            public string Title { get; set; }
            public string BodyDescription { get; set; }
        }

        private ObservableCollection<Question> _Questions { get; set; }

        public ObservableCollection<Question> Questions
        {
            get { return _Questions; }
            set
            {
                _Questions = value;

                OnPropertyChanged();
            }
        }
        public HomePage() {
            InitializeComponent();
            BindingContext = this;
            Questions = new ObservableCollection<Question>()
            {
                new Question{ImageIcon = "pytajnik_icon" , BackgroundSource = "backgroundMain.png", Title= "CO TO URBEX?", BodyDescription = "Urbex (urban exploration), to eksploracja miejsc, które są efektem rozwoju ludzkiej cywilizacji; opuszczonych, zapomnianych, trudno dostępnych. Im obiekt jest bardziej tajemniczy, tym ciekawszy da eksploratora. Urbex służy przede wszystkim osobom, którym los opuszczonych budynków nie jest obojętny. Wręcz przeciwnie – jest on dla nich pasjonujący. Nie sposób pominąć również edukacyjnej funkcji eksploracji miejskiej, która przyczynia się do przywrócenia pamięci o zabytkowych obiektach, a czasem nawet do ich odratowania."},
                new Question{ImageIcon = "tips_icon" , BackgroundSource = "backgroundTips.png", Title= "Wskazówki", BodyDescription = "Swój pierwszy urbex możesz oczywiście zaplanować samemu. Każdy eksplorator przyzna jednak, że opłaca się korzystać z wiedzy bardziej doświadczonych osób. Możesz to zrobić na stronie urbexy.pl – znajdziesz tu cenne pomoce, jak mapa urbexów, historie innych eksploratorów oraz ich materiały zdjęciowe. Sam również możesz dzielić się tu swoimi przygodami, by uzyskać ocenę i radę osób, które z urbexem mierzą się od lat. Zamiast działać na własną rękę, dołącz do społeczności, która pozwoli ci się rozwijać w tej wyjątkowej pasji."},
                new Question{ImageIcon = "rules_icon" , BackgroundSource = "backgroundRules.png", Title= "Zasady", BodyDescription = "Aby rozpocząć zabawę z urbexem, nie musisz posiadać żadnej, specjalistycznej wiedzy. Nie musisz mieć też bardzo drogiego wyposażenia. Najważniejsze jest przestrzeganie dwóch zasad:Take only pictures,Leave only footprints.Sprowadzają się one do głównego przesłania: eksplorator pełni jedynie funkcję obserwatora.Z miejsc urbexu nie należy niczego wynosić.Niedopuszczalne są akty dewastacji. Jedyne pamiątki, które powinny pozostać po tobie w miejscu eksploracji, to ślady butów oraz zdjęcia, które wykonasz."},
                new Question{ImageIcon = "kit_icon" , BackgroundSource = "BackgroundKit.png", Title= "Co zabrać?",BodyDescription = "Podczas wypraw, powinieneś mieć ze sobą przedmioty, które przede wszystkim zapewnią ci bezpieczeństwo." },
            };

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
        async void MainExpander_Tapped(System.Object sender, System.EventArgs e)
        {
            var Expcontent = ((Expander)sender).BindingContext as Question;

            //await App.Current.MainPage.DisplayAlert("Alert", "The selected Expander Id is : " + Expcontent.Id, "Ok");
        }
    }

}