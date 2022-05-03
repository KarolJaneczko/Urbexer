namespace APIpz.Models
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

        public IList<ZdjecieDto> Zdjecia { get; set; }
        public bool CzyOdwiedzone { get; set; }
    }
}
