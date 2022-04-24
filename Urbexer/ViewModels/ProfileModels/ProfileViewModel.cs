using System.Collections.Generic;
using System.Windows.Input;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class ProfileViewModel : BaseViewModel {
        public ICommand ClickedInstagram { protected set; get; }
        public ICommand ClickedYoutube { protected set; get; }
        public ICommand ClickedFacebook { protected set; get; }
        public ProfileViewModel() {
            ClickedInstagram = new Command(OnClickedInstagram);
            ClickedYoutube = new Command(OnClickedYoutube);
            ClickedFacebook = new Command(OnClickedFacebook);
        }
        public List<Information> Informations { get => InformationData(); }
        private List<Information> InformationData() {
            var tempList = new List<Information> {
                new Information { Category = "Imię", Info = "Bartosz" },
                new Information { Category = "Nazwisko", Info = "Jarząb" },
                new Information { Category = "Wiek", Info = "23" },
                new Information { Category = "Wzrost", Info = "183" },
                new Information { Category = "Pozytywne oceny:", Info = "433" },
                new Information { Category = "Odwiedzone miejsca:", Info = "42" }
            };
            return tempList;
        }
        public void OnClickedInstagram() {

        }
        public void OnClickedYoutube() {

        }
        public void OnClickedFacebook() {

        }
    }
    public class Information {
        public string Category { get; set; }
        public string Info { get; set; }
    }
}
