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

        public bool CzyKontoAktywne { get; internal set; }

        public virtual List<Miejsce>? Odwiedzone { get; set; }

        //public virtual List<Opinia>? Opisy { get; set; } //Do zastanowienia czy na użytkowniku chcemy trzymać jego opinie (można po id 

        public virtual List<Zdjecie>? Zdjecia { get; set; }

        public string KodPotwierdzajacyRejestracje { get; set; }
    }
}
