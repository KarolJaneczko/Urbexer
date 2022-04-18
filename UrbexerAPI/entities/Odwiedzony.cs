using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.Entities
{
    public class Odwiedzony
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int OdwiedzonePrzezId { get; set; }
        public virtual Uzytkownik  OdwiedzonePrzez { get; set;}
        public virtual Miejsce OdwiedzonyUrbex { get; set; }
        public virtual Miejsce_kategoria OdwiedzonaKategoria { get; set; }
    }
}
