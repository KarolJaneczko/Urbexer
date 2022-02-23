using APIpz.entities;
using FluentValidation;

namespace APIpz.Models.Validators
{
    public class RegisterUserDtoValidator : AbstractValidator<RegisterUserDto>
    {
        public RegisterUserDtoValidator(BazaDbContext context)
        {
            RuleFor(x => x.Email).NotEmpty().EmailAddress();
            RuleFor(x => x.HasloHash).MinimumLength(6);
            RuleFor(x => x.PotwierdzHaslo).Equal(e => e.HasloHash);
            RuleFor(x => x.Email).Custom((wartosc, kontekst) =>
                {
                    var CzyEmailJestwBazie = context.Uzytkownicy.Any(u => u.Email == wartosc);
                    if (CzyEmailJestwBazie)
                    {
                        kontekst.AddFailure("Email", "Ten email jest juz uzyty");
                    }
                });
            RuleFor(x => x.Login).Custom((wartosc, kontekst) =>
            {
                var CzyLoginJestwBazie = context.Uzytkownicy.Any(u => u.Login == wartosc);
                if (CzyLoginJestwBazie)
                {
                    kontekst.AddFailure("Login", "Ten Login jest juz uzyty");
                }
            });
        }
    }
}
