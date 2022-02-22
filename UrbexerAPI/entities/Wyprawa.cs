using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.entities
{
    public class Wyprawa
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        public Miejsce Miejsce { get; set; }

        public DateTime Kiedy { get; set; }
    }
}
