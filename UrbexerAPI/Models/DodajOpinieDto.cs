using APIpz.Entities;

namespace APIpz.Models
{
    public class DodajOpinieDto
    {
        public string Odwiedzony { get; set; }

        public int Ocena { get; set; } // może w gwiazdkach lub opisowo

        public string Tekst { get; set; }
    }
}
