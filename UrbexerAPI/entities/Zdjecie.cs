using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.Entities
{
    public class Zdjecie
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public int Id { get; set; }

        public Miejsce Miejsce { get; set; }

        public int NumerKolejny { get; set; }

        public RozmiaryZdjec Rozmiar { get; set; } 
        
        public int Wysokosc { get; set; }

        public int Szerokosc { get; set; }

        public string Link { get; set; }

    }
}
