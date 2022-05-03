using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.Entities
{
    public class Miejsce
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public int Id { get; set; }

        [Required]
        public string Nazwa { get; set; }

        public Miejsce_kategoria Miejsce_Kategoria { get; set; }

        public string? Adres { get; set; }
        public Miejsce_wojewodztwo Wojewodztwo { get; set; }
        public string? Miasto { get; set; }
        public DateTime? DataDodania { get; set; }

        [Required]
        public float WspolrzedneLAT { get; set; }

        [Required]
        public float WspolrzedneLNG { get; set; }
        public string? Opis { get; set; }

        public IList<Zdjecie>? Zdjecia { get; set; }
    }
}
