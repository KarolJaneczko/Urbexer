using APIpz.Entities;
using APIpz.Middleware;
using APIpz.Models;
using AutoMapper;
using Microsoft.EntityFrameworkCore;


namespace APIpz.Services
{
    public interface IProfileService
    {
        void EdytujProfil(EdytujProfilDto dto);
        PokazProfilDto PokazProfil(string login);
    }
    public class ProfileService : IProfileService
    {
        private readonly BazaDbContext _context;
        private readonly ILogger<ErrorHandlingMiddleware> _logger;
        private readonly IUserContextService _userContextService;
        private readonly IMapper _mapper;
        public ProfileService(BazaDbContext context, ILogger<ErrorHandlingMiddleware> logger, IUserContextService userContextService, IMapper mapper)
        {
            _context = context;
            _logger = logger;
            _userContextService = userContextService;
            _mapper = mapper;
        }
        public void EdytujProfil(EdytujProfilDto dto)
        {
            var profil = _context.Profil.FirstOrDefault(p => p.Uzytkownik.Login == dto.Login);

            if (dto.Imie != null)
            {
                profil.Imie = dto.Imie;
            }
            if (dto.Nazwisko != null)
            {
                profil.Nazwisko = dto.Nazwisko;
            }
            if (dto.Opis != null)
            {
                profil.Opis = dto.Opis;
            }
            if (dto.LinkFacebook != null)
            {
                profil.LinkFacebook = dto.LinkFacebook;
            }
            if (dto.LinkInstagram != null)
            {
                profil.LinkInstagram = dto.LinkInstagram;
            }
            if (dto.LinkYouTube != null)
            {
                profil.LinkYouTube = dto.LinkYouTube;
            }
            if (dto.Layout != null)
            {
                profil.Layout = dto.Layout;
            }
                _context.SaveChanges();
        }

        public PokazProfilDto PokazProfil(string login)
        {
            var profil = _context.Profil
                .Include(t=>t.Uzytkownik)
                .FirstOrDefault(p => p.Uzytkownik.Login == login);

            var profilDto = _mapper.Map<PokazProfilDto>(profil);
            return profilDto;
        }
    }
}
