using APIpz.Entities;
using APIpz.Exceptions;
using APIpz.Middleware;
using APIpz.Models;
using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;

namespace APIpz.Services
{
    public interface IUrbexService
    {
        List<Miejsce> GetAll();

        void DodajOdwiedzone(DodajOdwiedzoneDto dto);
        PageResult<ZwracaneOdwiedzoneDto> PokazMojeOdwiedzone(PokazMojeOdwiedzoneDto dto);
        PageResult<ZwracaneOdwiedzoneDto> PokazCzyjesOdwiedzone(PokazCzyjesOdwiedzoneDto dto);
        void DodajOpinie(DodajOpinieDto dto);
        PageResult<OpiniaDto> PokazOpinieDoMiejsca(PokazOpinieDoMiejscaDto dto);
        Miejsce PokazMiejscePoId(PokazMiejscePoIdDto dto);
        List<Miejsce> PokazMiejscaZListy(PokazMiejscaZListyDto dto);
        IEnumerable<int> PokazMiejscaZKategorii(PokazMiejscaZKategoriiDto dto);
        IEnumerable<int> PokazMiejscaWPoblizu(PokazMiejscaWPoblizuDto dto);
        void StworzPustyProfil(StworzPustyProfilDto dto);
        void EdytujProfil(EdytujProfilDto dto);
        PokazProfilDto PokazProfil(StworzPustyProfilDto dto);

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

        public List<Miejsce> GetAll()
        {
            var wynik = _context.Miejsce.ToList();
            return wynik;
        }

        public void DodajOdwiedzone(DodajOdwiedzoneDto dto)
        {
            var urbex = _context.Miejsce.FirstOrDefault(u => u.Nazwa == dto.NazwaUrbexu);
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

        public Miejsce PokazMiejscePoId(PokazMiejscePoIdDto dto)
        {
            var miejsce = _context.Miejsce.FirstOrDefault( m => m.Id == dto.Id);
            return miejsce;
        }
        public List<Miejsce> PokazMiejscaZListy(PokazMiejscaZListyDto dto)
        {
            var miejsca = _context.Miejsce.Where(m => dto.listaId.Contains(m.Id)).ToList();
            return miejsca;
        }
        public IEnumerable<int> PokazMiejscaZKategorii(PokazMiejscaZKategoriiDto dto)
        {
            var zapytanie = _context.Miejsce.Where(m => m.Miejsce_Kategoria.Id == dto.Id).ToList();
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
            };
            _context.Profil.Add(nowyProfil);
            _context.SaveChanges();
        }
        public void EdytujProfil(EdytujProfilDto dto)
        {
            var profil = _context.Profil.FirstOrDefault(p => p.Uzytkownik.Login == dto.Login);

            profil.Imie = dto.Imie;
            profil.Nazwisko = dto.Nazwisko;
            profil.LinkFacebook = dto.LinkFacebook;
            profil.LinkInstagram = dto.LinkInstagram;
            profil.LinkYouTube = dto.LinkYouTube;
            _context.SaveChanges();
        
        }

        public PokazProfilDto PokazProfil(StworzPustyProfilDto dto)
        {
            var profil = _context.Profil.FirstOrDefault(p => p.Uzytkownik.Login == dto.Login);

            var profilDto = _mapper.Map<PokazProfilDto>(profil);
            return profilDto;
        }
    }
}
