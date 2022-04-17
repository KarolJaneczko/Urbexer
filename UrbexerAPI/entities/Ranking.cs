using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.Entities
{
    public class Ranking
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int LiczbaOdwiedzonychMiejsc { get; set; } //suma odwiedzonych miejsc przez użytkownika
        public Odwiedzony OdwiedzonyPrzezId { get; set; } //dowiązanie do wyciągniecia ID użytkownika
        public Miejsce_kategoria? KatKolejowe { get; set; } //poniżej kategorie do zliczania NULLi
        public Miejsce_kategoria? KatHoteleIPensjonaty { get; set; }
        public Miejsce_kategoria? KatDomy { get; set; }
        public Miejsce_kategoria? KatIndustrialne { get; set; }
        public Miejsce_kategoria? KatRestauracjeIKluby { get; set; }
        public Miejsce_kategoria? KatRolnicze { get; set; }
        public Miejsce_kategoria? KatZamkiIPalace { get; set; }
        public Miejsce_kategoria? KatPodziemia { get; set; }
        public Miejsce_kategoria? KatBiurowce { get; set; }
        public Miejsce_kategoria? KatMilitarne { get; set; }
        public Miejsce_kategoria? KatSzpitale { get; set; }
        public Miejsce_kategoria? KatPodziemiaITunele { get; set; }
        public Miejsce_kategoria? KatInne { get; set; }


    }
}