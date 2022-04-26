using System;

namespace Urbexer.Models.ApiModels {
    public class APIedytujProfil {
        public string login;
        public string? imie;
        public string? nazwisko;
        public string? opis;
        public string? linkFacebook;
        public string? linkInstagram;
        public string? linkYoutube;
        public int layout;
        public APIedytujProfil(string Login, string Imie, string Nazwisko, string Opis, string FB, string IN, string YT, int Layout) {
            login = Login;
            imie = Imie;
            nazwisko = Nazwisko;
            opis = Opis;
            linkFacebook = FB;
            linkInstagram = IN;
            linkYoutube = YT;
            layout = Layout;
        }
    }
}
