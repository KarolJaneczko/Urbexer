using System.ComponentModel.DataAnnotations;

namespace APIpz.Models
{
    public class RegisterUserDto
    {
        public string Email { get; set; }

        public string Login { get; set; }

        public string PotwierdzHaslo { get; set; }
        public string HasloHash { get; set; }

        public bool CzyAdmin { get; set; } = false;
    }
}
