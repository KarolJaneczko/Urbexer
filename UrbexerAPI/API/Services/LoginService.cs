using APIpz.entities;
using APIpz.Exceptions;
using APIpz.Middleware;
using APIpz.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace APIpz.Services
{
    public interface ILoginService
    {
        Task RegisterUser(RegisterUserDto dto);
        string GenerateJwt(LoginDto dto);

        void ConfirmUser(ConfirmUserDto dto);
    }

    public class LoginService : ILoginService
    {
        private readonly BazaDbContext _context;
        private readonly IPasswordHasher<Uzytkownik> _passwordHasher;
        private readonly ILogger<ErrorHandlingMiddleware> _logger;
        private readonly AuthenticationSettings _authenticationSettings;
        private readonly IEmailSender _emailSender;
        public LoginService(BazaDbContext context, IPasswordHasher<Uzytkownik> passwordHasher, ILogger<ErrorHandlingMiddleware> logger, AuthenticationSettings authenticationSettings, IEmailSender emailSender)
        {
            _context = context; 
            _passwordHasher = passwordHasher;
            _logger = logger;
            _authenticationSettings = authenticationSettings;
            _emailSender = emailSender;

        }
        public async Task  RegisterUser(RegisterUserDto dto)
        {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var kod = new char[8];
            var random = new Random();

            for (int i = 0; i < kod.Length; i++)
            {
                kod[i] = chars[random.Next(chars.Length)];
            }

            var wlasciwykod = new String(kod);
            //await _emailSender.SendEmailAsync("marcinkwozniak@wp.pl", "mail testowy", "to jest mail testowy");
            var newUzytkownik = new Uzytkownik()
            {
                Email = dto.Email,
                Login = dto.Login,
                CzyAdmin = dto.CzyAdmin,
                CzyKontoAktywne = false,
                KodPotwierdzajacyRejestracje = wlasciwykod
            };

            var HashOdHasla = _passwordHasher.HashPassword(newUzytkownik, dto.HasloHash);
            newUzytkownik.HasloHash = HashOdHasla;
            
            //generowanie kodu którym potwierdzimy rejestracje
            
            _context.Uzytkownik.Add(newUzytkownik);
            _context.SaveChanges();
            await _emailSender.SendEmailAsync(newUzytkownik.Email, "kod do potwierdzenia rejestracji", wlasciwykod);
            
            
        }

        public string GenerateJwt(LoginDto dto)
        {
            var user = _context.Uzytkownik.FirstOrDefault(u =>  u.Login == dto.Login);
            if (user is null)
            {
                throw new BadRequestException("niepoprawny login lub haslo");
            }
            if (user.CzyKontoAktywne == false)
            {
                throw new BadRequestException("konto nie zostalo jeszcze aktywowane");
            }

            var result = _passwordHasher.VerifyHashedPassword(user, user.HasloHash, dto.Password);
            if (result == PasswordVerificationResult.Failed)
            {
                throw new BadRequestException("niepoprawny login lub haslo");
            }

            var claims = new List<Claim>()
            {
                new Claim(ClaimTypes.NameIdentifier, user.Id.ToString()),
                new Claim(ClaimTypes.Name, $"{user.Login} {user.Email}"),
            };

            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_authenticationSettings.JwtKey));
            var cred = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
            var expires = DateTime.Now.AddDays(_authenticationSettings.JwtExpireDays);

            var token = new JwtSecurityToken(_authenticationSettings.JwtIssuer,
                                             _authenticationSettings.JwtIssuer,
                                             claims, expires: expires, signingCredentials: cred);

            var tokenHandler = new JwtSecurityTokenHandler();
            return tokenHandler.WriteToken(token);
        }

        public void ConfirmUser(ConfirmUserDto dto)
        {
            var user = _context.Uzytkownik.FirstOrDefault(u => u.KodPotwierdzajacyRejestracje == dto.KodPotwierdzajacy);
            if (user is null)
            {
                throw new BadRequestException("niepoprawny kod");
            }
            if (user.CzyKontoAktywne == true)
            {
                throw new BadRequestException("konto zostało juz aktywowane");
            }

            user.CzyKontoAktywne = true;
            _context.SaveChanges();
        }
    }

 
}
