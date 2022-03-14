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

        [Required]
        public float WspolrzedneLAT { get; set; }

        [Required]
        public float WspolrzedneLNG { get; set; }

        public Zdjecie? Zdjecie { get; set; }

        public int? Trudnosc { get; set; } //Stopień trudności danej lokacji 

        public int? Doswiadczenie { get; set; } //Punkty doświadczenia zdobyte (być może wyciągnąć z kolumną "Trudnosci" do oddzielnej tabli (Ranking? nowa Doswiadczenie?)

        public string? Link { get; set; } //link do google maps??
    }
}
