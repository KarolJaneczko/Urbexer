using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.Entities
{
    public class Opinia
    {
        [Key]

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Required]
        public Uzytkownik Uzytkownik { get; set; } //uzytkownik dodający opinię 

        [Required]
        public Miejsce Miejsce { get; set; }

        public int Ocena { get; set; } // może w gwiazdkach lub opisowo

        public string? Tekst { get; set; }
    }
}
