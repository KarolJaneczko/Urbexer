#nullable enable

namespace Urbexer.Models.ApiModels {
    /// <summary>
    /// Model otrzymywany przez API, wykorzystywany przy wypełnianiu profilu w zakładce ProfilePage.
    /// </summary>
    public class APIProfile {
        public string? email;
        public string? login;
        public bool czyAdmin;
        public string? imie;
        public string? nazwisko;
        public string? opis;
        public string? linkFacebook;
        public string? linkInstagram;
        public string? linkYoutube;
        public int layout;
        public int uzytkownikId;
    }
}
