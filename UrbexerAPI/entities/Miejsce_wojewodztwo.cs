using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace APIpz.Entities
{
    public class Miejsce_wojewodztwo
    {
        [Key]
        public int Id { get; set; }
        public string Nazwa { get; set; }
    }
}
