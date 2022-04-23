using APIpz.Entities;
using APIpz.Middleware;
using APIpz.Models;
using AutoMapper;
using Microsoft.EntityFrameworkCore;


namespace APIpz.Services
{
    public interface IUrbexService
    {
        List<MiejsceDto> GetAll();

        void DodajOdwiedzone(DodajOdwiedzoneDto dto);
        PageResult<ZwracaneOdwiedzoneDto> PokazMojeOdwiedzone(PokazMojeOdwiedzoneDto dto);
        PageResult<ZwracaneOdwiedzoneDto> PokazCzyjesOdwiedzone(PokazCzyjesOdwiedzoneDto dto);
        void DodajOpinie(DodajOpinieDto dto);
        PageResult<OpiniaDto> PokazOpinieDoMiejsca(PokazOpinieDoMiejscaDto dto);
        MiejsceDto PokazMiejscePoId(int dto);
        List<MiejsceDto> PokazMiejscaZListy(PokazMiejscaZListyDto dto);
        IEnumerable<int> PokazMiejscaZKategorii(int dto);
        IEnumerable<int> PokazMiejscaWPoblizu(PokazMiejscaWPoblizuDto dto);
        IEnumerable<int> PokazMiejscaWPoblizuBezOdwiedzonych(PokazMiejscaWPoblizuDto dto);
        void StworzPustyProfil(StworzPustyProfilDto dto);
        void EdytujProfil(EdytujProfilDto dto);
        PokazProfilDto PokazProfil(string login);

    }
    public class UrbexService : IUrbexService
    {
        private readonly BazaDbContext _context;
        private readonly ILogger<ErrorHandlingMiddleware> _logger;
        private readonly IUserContextService _userContextService;
        private readonly IMapper _mapper;
        public UrbexService(BazaDbContext context, ILogger<ErrorHandlingMiddleware> logger, IUserContextService userContextService, IMapper mapper)
        {
            _context = context;
            _logger = logger;
            _userContextService = userContextService;
            _mapper = mapper;
        }

        public List<MiejsceDto> GetAll()
        {
            var wynik = _context.Miejsce
                .Include(t=>t.Miejsce_Kategoria)
                .Include(t=>t.Wojewodztwo)
                .Take(20) // Tymczasowo!!!
                .Select(x=> _mapper.Map<MiejsceDto>(x))
                .ToList();
            return wynik;
        }

          public void DodajOdwiedzone(DodajOdwiedzoneDto dto)
        {
            var urbex = _context.Miejsce
                .Include(t=>t.Miejsce_Kategoria)
                .Include(t=>t.Wojewodztwo)
                .FirstOrDefault(u => u.Nazwa == dto.NazwaUrbexu);
            _context.Attach(urbex);

            var noweOdwiedzone = new Odwiedzony()
            {
                OdwiedzonePrzez = new Uzytkownik { Id = (int)_userContextService.GetUserId }, // dzięki JWT wyciągamy id
                OdwiedzonyUrbex = urbex
            };

            _context.Odwiedzone.Add(noweOdwiedzone);
            _context.SaveChanges();

        }

        public PageResult<ZwracaneOdwiedzoneDto> PokazMojeOdwiedzone(PokazMojeOdwiedzoneDto dto)
        {
            var zapytanie = _context.Odwiedzone
                                            .Where(o => o.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId)
                                            .ToList();

            var ListaOdwiedzonych = zapytanie
                .Skip(dto.PageSize * (dto.PageNumber - 1))
                .Take(dto.PageSize)
                .ToList();

            var totalitemsCount = zapytanie.Count();
            var odwiedzoneDtos = _mapper.Map<List<ZwracaneOdwiedzoneDto>>(ListaOdwiedzonych);
            var result = new PageResult<ZwracaneOdwiedzoneDto>(odwiedzoneDtos, totalitemsCount, dto.PageSize, dto.PageNumber);

            return result;

        }
        public PageResult<ZwracaneOdwiedzoneDto> PokazCzyjesOdwiedzone(PokazCzyjesOdwiedzoneDto dto)
        {
            var zapytanie = _context.Odwiedzone
                                            .Where(o => o.OdwiedzonePrzez.Login == dto.Login)
                                            .ToList();

            var ListaOdwiedzonych = zapytanie
                .Skip(dto.PageSize * (dto.PageNumber - 1))
                .Take(dto.PageSize)
                .ToList();

            var totalitemsCount = zapytanie.Count();
            var odwiedzoneDtos = _mapper.Map<List<ZwracaneOdwiedzoneDto>>(ListaOdwiedzonych);
            var result = new PageResult<ZwracaneOdwiedzoneDto>(odwiedzoneDtos, totalitemsCount, dto.PageSize, dto.PageNumber);

            return result;
            //return ListaOdwiedzonych;

        }

        public void DodajOpinie(DodajOpinieDto dto)
        {
            var odwiedzony = _context.Odwiedzone.
                FirstOrDefault(o => o.OdwiedzonyUrbex.Nazwa == dto.Odwiedzony && o.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId);
            _context.Attach(odwiedzony);

            var nowaOpinia = new Opinia()
            {
                Odwiedzony = odwiedzony,
                Ocena = dto.Ocena,
                Tekst = dto.Tekst
            };
            _context.Opinia.Add(nowaOpinia);
            _context.SaveChanges();
                              
        }

        public PageResult<OpiniaDto> PokazOpinieDoMiejsca(PokazOpinieDoMiejscaDto dto)
        {
            var zapytanie = _context.Opinia.Where(o => o.Odwiedzony.OdwiedzonyUrbex.Nazwa == dto.NazwaMiejsca);


            var opinie = zapytanie
                .Skip(dto.PageSize * (dto.PageNumber - 1))
                .Take(dto.PageSize)
                .ToList();

            var totalitemsCount = zapytanie.Count();

            var opinieDtos = _mapper.Map<List<OpiniaDto>>(opinie);

            var result = new PageResult<OpiniaDto>(opinieDtos, totalitemsCount, dto.PageSize, dto.PageNumber);
            return result;
            
        }

        public MiejsceDto? PokazMiejscePoId(int id)
        {
            var miejsce = _context.Miejsce
                .Include(t=>t.Miejsce_Kategoria)
                .Include(t=>t.Wojewodztwo)
                .FirstOrDefault( m => m.Id == id);
            return _mapper.Map<MiejsceDto>(miejsce);
        }
        public List<MiejsceDto> PokazMiejscaZListy(PokazMiejscaZListyDto dto)
        {
            var miejsca = _context.Miejsce
                .Include(t => t.Miejsce_Kategoria)
                .Include(t => t.Wojewodztwo)
                .Where(m => dto.listaId.Contains(m.Id)).Select(t=> _mapper.Map<MiejsceDto>(t)).ToList();
            return miejsca;
        }
        public IEnumerable<int> PokazMiejscaZKategorii(int id)
        {
            var zapytanie = _context.Miejsce
                .Include(t => t.Miejsce_Kategoria)
                .Include(t => t.Wojewodztwo)
                .Where(m => m.Miejsce_Kategoria.Id == id).ToList();
            var miejsca = zapytanie.Select(m => m.Id);
            return miejsca;
        }
        public IEnumerable<int> PokazMiejscaWPoblizu(PokazMiejscaWPoblizuDto dto)
        {
        //    for x, y in rekordy:
        //if (x - x0) *(x - x0) + (y - y0) * (y - y0) == promien * promien:
            var zapytanie = _context.Miejsce.Where(m => (m.WspolrzedneLAT - dto.WspolrzedneLATUser) * (m.WspolrzedneLAT - dto.WspolrzedneLATUser) +
                                                        (m.WspolrzedneLNG - dto.WspolrzedneLNGUser) * (m.WspolrzedneLNG - dto.WspolrzedneLNGUser) <= dto.Promien * dto.Promien);

            var miejsca = zapytanie.Select(m => m.Id);
            return miejsca;
        }
        public IEnumerable<int> PokazMiejscaWPoblizuBezOdwiedzonych(PokazMiejscaWPoblizuDto dto)
        {
            var zapytanie1 = _context.Miejsce.Where(m => (m.WspolrzedneLAT - dto.WspolrzedneLATUser) * (m.WspolrzedneLAT - dto.WspolrzedneLATUser) +
                                                       (m.WspolrzedneLNG - dto.WspolrzedneLNGUser) * (m.WspolrzedneLNG - dto.WspolrzedneLNGUser) <= dto.Promien * dto.Promien);
           
            var zapytanie2 = _context.Odwiedzone.Where(o => o.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId);
            var miejsca = zapytanie1.Select(m => m.Id);

            var miejscaMinus = zapytanie2.Select(o => o.OdwiedzonyUrbex.Id);
            var result = miejsca.Except(miejscaMinus);
            return result;
        }

        public void StworzPustyProfil(StworzPustyProfilDto dto)
        {
            var uzytkownik = _context.Uzytkownik.FirstOrDefault(u => u.Login == dto.Login);
            _context.Attach(uzytkownik);
            var nowyProfil = new Profil()
            {
                Uzytkownik = uzytkownik,
                Imie = null,
                Nazwisko = null,
                Opis = null,
                LinkFacebook = null,
                LinkInstagram = null,
                LinkYouTube = null,
                Layout = null,
            };
            _context.Profil.Add(nowyProfil);
            _context.SaveChanges();
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
