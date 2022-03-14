using APIpz.Entities;
using FluentValidation;

namespace APIpz.Models.Validators
{
    public class DodajOdwiedzoneDtoValidator: AbstractValidator<DodajOdwiedzoneDto>
    {
        public DodajOdwiedzoneDtoValidator(BazaDbContext context)
        {
            RuleFor(x => x.NazwaUrbexu).NotEmpty();
        }
    }
}
