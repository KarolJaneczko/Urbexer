using APIpz.Entities;
using APIpz.Exceptions;
using APIpz.Middleware;
using APIpz.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Net;

namespace APIpz.Services
{
    public interface ILoginService
    {
        Task RegisterUser(RegisterUserDto dto, string host);
        string GenerateJwt(LoginDto dto);
        void ConfirmUser(ConfirmUserDto dto);
        void TestowyConfirmUser(TestowyConfirmUserDto dto);
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
        public async Task RegisterUser(RegisterUserDto dto, string host)
        {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var kod = new char[5];
            var random = new Random();

            for (int i = 0; i < kod.Length; i++)
            {
                kod[i] = chars[random.Next(chars.Length)];
            }

            var wlasciwykod = new String(kod);
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
            var uzytkownik = _context.Uzytkownik.FirstOrDefault(u => u.Login == dto.Login);
            var nowyProfil = new Profil()
            {
                Uzytkownik = uzytkownik,
                Imie = null,
                Nazwisko = null,
                Opis = null,
                LinkFacebook = null,
                LinkInstagram = null,
                LinkYouTube = null,
                Layout = 0,
            };
            _context.Profil.Add(nowyProfil);
            _context.Attach(uzytkownik);
            
            _context.SaveChanges();
            var url = $"{host}/api/account/confirm?email={WebUtility.UrlEncode(dto.Email)}&kod={wlasciwykod}";
            var dokumentacja = $"{host}/Dokumentacja/regulamin.pdf";
            var tresc = $"Aby aktywować konto, kliknij w link: {url} \nProsimy o zapoznanie się z regulaminem aplikacji, a także załączamy informację o administracji Państwa danych osobowych.{dokumentacja}";
            await _emailSender.SendEmailAsync(newUzytkownik.Email, "Link do potwierdzenia rejestracji:", tresc);
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
            var user = _context.Uzytkownik.FirstOrDefault(u => u.Email == dto.Email);
            if (user is null)
            {
                throw new BadRequestException("niepoprawne dane");
            }
            if (user.CzyKontoAktywne == true)
            {
                throw new BadRequestException("konto zostało juz aktywowane");
            }
            if (user.KodPotwierdzajacyRejestracje == dto.Kod)
            {
                user.CzyKontoAktywne = true;
                _context.SaveChanges();
            }
        }

        public void TestowyConfirmUser(TestowyConfirmUserDto dto)
        {
            var user = _context.Uzytkownik.FirstOrDefault(u => u.Login == dto.Login);
            if (user is null)
            {
                throw new BadRequestException("niepoprawne dane");
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
