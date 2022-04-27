using APIpz.Entities;

namespace APIpz.Models
{
    public class DodajOpinieDto
    {
        public int Id { get; set; }

        public int Ocena { get; set; } // może w gwiazdkach lub opisowo

        public string Tekst { get; set; }
    }
}
