using APIpz.Entities;
using FluentValidation;

namespace APIpz.Models.Validators
{
    public class EdytujProfilDtoValidator: AbstractValidator<EdytujProfilDto>
    {
        public EdytujProfilDtoValidator(BazaDbContext context)
        {
            RuleFor(x => x.Login).NotEmpty();
        }
    }
}
