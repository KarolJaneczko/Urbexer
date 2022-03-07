namespace APIpz.entities
{
    public class Odwiedzony
    {
        public int Id { get; set; }
        public int OdwiedzonePrzezId { get; set; }
        public virtual Uzytkownik  OdwiedzonePrzez { get; set;}
        public virtual Miejsce OdwiedzonyUrbex { get; set; }
    }
}
