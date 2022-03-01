using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.entities
{
    public class Miejsce
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public int Id { get; set; }

        [Required]
        public string Nazwa { get; set; }

        [Required]
        public string Wojewodztwo { get; set; }

        public float? Wspolrzedne { get; set; }

        public int? Trudnosc { get; set; }

        public int? Doswiadczenie { get; set; }
    }
}
