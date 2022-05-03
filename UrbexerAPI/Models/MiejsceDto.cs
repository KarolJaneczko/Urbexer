using APIpz.entities;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.Entities
{
    public class MiejsceDto
    {
        public int Id { get; set; }

        public string Nazwa { get; set; }

        public int? KategoriaId { get; set; }

        public string? Kategoria { get; set; }

        public string? Adres { get; set; }

        public int? WojewodztwoId { get; set; }

        public string? Wojewodztwo { get; set; }
        public string? Miasto { get; set; }
        public DateTime? DataDodania { get; set; }

        public float WspolrzedneLAT { get; set; }

        public float WspolrzedneLNG { get; set; }
        public string? Opis { get; set; }

        public int? Trudnosc { get; set; } //Stopień trudności danej lokacji 

        public int? Doswiadczenie { get; set; } //Punkty doświadczenia zdobyte (być może wyciągnąć z kolumną "Trudnosci" do oddzielnej tabli (Ranking? nowa Doswiadczenie?)

        public string? Link { get; set; } //link do google maps??
        public bool CzyOdwiedzone { get; set; }
    }
}
