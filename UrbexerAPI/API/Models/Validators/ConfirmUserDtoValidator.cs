using APIpz.Entities;
using FluentValidation;


namespace APIpz.Models.Validators
{
    public class ConfirmUserDtoValidator : AbstractValidator<ConfirmUserDto>
    {
        public ConfirmUserDtoValidator(BazaDbContext context)
        {
            RuleFor(x => x.KodPotwierdzajacy).NotEmpty().Length(8);
        }
    }
}
