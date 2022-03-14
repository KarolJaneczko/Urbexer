using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.entities
{
    public class Uzytkownik
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Required]
        public string Email { get; set; }

        [Required]
        public string Login { get; set; }

        [Required]
        public string HasloHash { get; set; }

        public bool CzyAdmin { get; set; }

        public bool CzyKontoAktywne { get; set; }
        public string KodPotwierdzajacyRejestracje { get; set; }

       // public virtual List<Miejsce>? Odwiedzone { get; set; }

        public virtual List<Opis>? Opisy { get; set; }

        public virtual List<Zdjecie>? Zdjecia { get; set; }

        public virtual List<Wyprawa>? Wyprawy { get; set; }
    }
}
