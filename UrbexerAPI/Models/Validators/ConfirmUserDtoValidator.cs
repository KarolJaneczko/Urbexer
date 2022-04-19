using APIpz.Entities;
using FluentValidation;


namespace APIpz.Models.Validators
{
    public class ConfirmUserDtoValidator : AbstractValidator<ConfirmUserDto>
    {
        public ConfirmUserDtoValidator(BazaDbContext context)
        {
            RuleFor(x => x.KodPotwierdzajacy).NotEmpty().Length(5);
            RuleFor(x => x.Email).NotEmpty().EmailAddress();
        }
    }
}
