#nullable enable

namespace Urbexer.Models.ApiModels {
    /// <summary>
    /// Model otrzymywany przez API, wykorzystywany przy nadpisywaniu profilu w bazie danych po edycji.
    /// </summary>
    public class APIEdytujProfil {
        public string login;
        public string? imie;
        public string? nazwisko;
        public string? opis;
        public string? linkFacebook;
        public string? linkInstagram;
        public string? linkYoutube;
        public int layout;
        public APIEdytujProfil(string Login, string Imie, string Nazwisko, string Opis, string FB, string IN, string YT, int Layout) {
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
