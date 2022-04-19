using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.Entities
{
    public class Odwiedzony
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public virtual Uzytkownik  OdwiedzonePrzez { get; set;}
        public virtual Miejsce OdwiedzonyUrbex { get; set; }
    }
}
