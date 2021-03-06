using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.Entities
{
    public class Profil
    {
        [Key]

        public int UzytkownikId { get; set; }

        public Uzytkownik Uzytkownik { get; set; }

        public string? Imie { get; set; }
        public string? Nazwisko { get; set; }
        public string? Opis { get; set; }
        public string? LinkFacebook { get; set; }
        public string? LinkInstagram { get; set; }
        public string? LinkYouTube { get; set; }
        public int? Layout { get; set; }
    }
}
