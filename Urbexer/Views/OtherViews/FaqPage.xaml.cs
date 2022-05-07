using System.Collections.ObjectModel;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Forms;

namespace Urbexer.Views {


    public partial class FaqPage : ContentPage {
        public class Question {
            public int Id { get; set; }
            public string Title { get; set; }
            public string BodyDescription { get; set; }
        }

        private ObservableCollection<Question> _Questions { get; set; }

        public ObservableCollection<Question> Questions {
            get { return _Questions; }
            set {
                _Questions = value;

                OnPropertyChanged();
            }
        }

        public FaqPage() {
            InitializeComponent();
            BindingContext = this;
            Questions = new ObservableCollection<Question>()
            {
                new Question{Id = 1 , Title= "Czy Aplikacja jest darmowa?", BodyDescription = "Tak, URBEXER jest w pełni darmową aplikacją i nie ma wersji premium"},
                new Question{Id = 2 , Title= "Czy do korzystania z aplikacji jest potrzebny internet?", BodyDescription = "Tak, aby korzystać z aplikacji mieć włączony internet w telefonie. "},
                new Question{Id = 3 , Title= "Czym wyróżnia się aplikacja URBEXER?", BodyDescription = "Dzięki współpracy z serwisem urbexy.pl aplikacja na dzień premiery zawiera ponad 2000 udostępnionych lokacji na terenie całego kraju. Aplikacja pozwala również rywalizować z innymi użytkownikami w liczbie odwiedzonych miejsc. Stworzyliśmy dopracowane rankingi podzielone na poszczególne kategorie lokacji udostępnionych w aplikacji."},
                new Question{Id = 4 , Title= "Jakie kategorie rankingowe znajdą się w aplikacji?",BodyDescription = "Ranking jest podzielony na 12 głownych kategorii, jedną przydzieloną dla pozostałych oraz jedną przeznaczoną na sumaryczny wynik odwiedzonych miejsc"},
                new Question{Id = 5 , Title= "Czy można dodać swoje lokacje?", BodyDescription = "Jeśli ktoś chce dodać miejsc, które jest warte odwiedzenia wystarczy zgłosić je na..."},
                new Question{Id = 6 , Title= "Jak zgłosić błąd w Aplikacji",BodyDescription = "Wystarczy wybrać w menu po lewej stronie aplikacji opcję  KONTAKT. Po kliknięciu w polu tekstowym można opisać problem. Alternatywnie można się skontaktować bezpośrednio na adres mailowy: urbexer@gmail.com "},
                new Question{Id = 7 , Title= "Na jakich urzędzeniach jest dostępna aplikacja?",BodyDescription = "Aplikacja jest dostępna na urządzenia z sytemem Android  w wersji 4.1 oraz nowszych."},

            };

        }
        async void MainExpander_Tapped(System.Object sender, System.EventArgs e) {
            var Expcontent = ((Expander)sender).BindingContext as Question;

            //await App.Current.MainPage.DisplayAlert("Alert", "The selected Expander Id is : " + Expcontent.Id, "Ok");
        }


    }
}
