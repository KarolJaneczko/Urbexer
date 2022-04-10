using System;
using System.Collections.Generic;

namespace Urbexer.ViewModels {
    public class ProfileViewModel : BaseViewModel {

        public ProfileViewModel() {
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
    }
    public class Information {
        public string Category { get; set; }
        public string Info { get; set; }
    }
}
