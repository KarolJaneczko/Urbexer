using System;
using System.Collections.Generic;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class ProfileViewModel : BaseViewModel {
        
        public ProfileViewModel() {
        }
        public List<Information> Informations { get => InformationData(); }

        private List<Information> InformationData()
        {
            var tempList = new List<Information>();
            tempList.Add(new Information { Category = "Imię", Info = "Bartosz"  });
            tempList.Add(new Information { Category = "Nazwisko",   Info = "Jarząb"  });
            tempList.Add(new Information { Category = "Wiek",   Info = "23" }); 
            tempList.Add(new Information { Category = "Wzrost",     Info = "183"  });
            tempList.Add(new Information { Category = "Pozytywne oceny:",   Info = "433"});
            tempList.Add(new Information { Category = "Odwiedzone miejsca:",    Info = "42"});

            return tempList;
        }
    }
    public class Information
    {
        public string Category { get; set; }
        
        public string Info { get; set; }

    }
}
