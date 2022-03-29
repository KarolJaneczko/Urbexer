namespace APIpz.Models
{
    public class OpiniaDto
    {
        public string KtoOdwiedzil { get; set; }
        public string Miejsce { get; set; }
        public int Ocena { get; set; } // może w gwiazdkach lub opisowo

        public string? Tekst { get; set; }
    }
}
