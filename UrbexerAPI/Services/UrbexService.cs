using APIpz.Entities;
using APIpz.Middleware;
using APIpz.Models;
using AutoMapper;
using Microsoft.EntityFrameworkCore;


namespace APIpz.Services
{
    public interface IUrbexService
    {
        void DodajOdwiedzone(int id);
        List<ZwracaneOdwiedzoneDto> PokazMojeOdwiedzone(PokazMojeOdwiedzoneDto dto);
        IEnumerable<int> PokazCzyjesOdwiedzone(PokazCzyjesOdwiedzoneDto dto);
        void DodajOpinie(DodajOpinieDto dto);
        PageResult<OpiniaDto> PokazOpinieDoMiejsca(PokazOpinieDoMiejscaDto dto);
        int IluLudziOdwiedziloMiejsce(IluLudziOdwiedziloMiejsceDto dto);
        bool CzyUzytkownikBylWMiejscu(int id);
        OpiniaDto PokazMojaOpinieDoMiejsca(int id);

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

          public void DodajOdwiedzone(int id)
        {
            var urbex = _context.Miejsce
               // .Include(t=>t.Miejsce_Kategoria)
               // .Include(t=>t.Wojewodztwo)
                .FirstOrDefault(u => u.Id == id);
            _context.Attach(urbex);
            var odwiedzajacy = _context.Uzytkownik.FirstOrDefault(o => o.Id == (int)_userContextService.GetUserId); // dzięki JWT wyciągamy id
            _context.Attach(odwiedzajacy);
            var noweOdwiedzone = new Odwiedzony()
            {
                OdwiedzonePrzez = odwiedzajacy, 
                OdwiedzonyUrbex = urbex
            };

            _context.Odwiedzone.Add(noweOdwiedzone);
            _context.SaveChanges();

        }

        public List<ZwracaneOdwiedzoneDto> PokazMojeOdwiedzone(PokazMojeOdwiedzoneDto dto)
        {
            var zapytanie = _context.Odwiedzone
                                            .Where(o => o.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId)
                                            .Include(o => o.OdwiedzonyUrbex)
                                            .ThenInclude(o => o.Miejsce_Kategoria)
                                            .Include(o => o.OdwiedzonePrzez)
                                            .Include(o => o.OdwiedzonyUrbex)
                                            .ThenInclude(o => o.Zdjecia)
                                            .ToList();

            //var ListaOdwiedzonych = zapytanie
            //    .Skip(dto.PageSize * (dto.PageNumber - 1))
            //    .Take(dto.PageSize)
            //    .ToList();

           // var totalitemsCount = zapytanie.Count();
            var odwiedzoneDtos = _mapper.Map<List<ZwracaneOdwiedzoneDto>>(zapytanie);
          //  var result = new PageResult<ZwracaneOdwiedzoneDto>(odwiedzoneDtos, totalitemsCount, dto.PageSize, dto.PageNumber);

            return odwiedzoneDtos;

        }
        public IEnumerable<int> PokazCzyjesOdwiedzone(PokazCzyjesOdwiedzoneDto dto)
        {
            var zapytanie = _context.Odwiedzone
                                            .Where(o => o.OdwiedzonePrzez.Login == dto.Login)
                                            .Include(o => o.OdwiedzonyUrbex)
                                            .ThenInclude(o => o.Miejsce_Kategoria)
                                            .Include(o => o.OdwiedzonePrzez)
                                            .Include(o => o.OdwiedzonyUrbex)
                                            .ThenInclude(o => o.Zdjecia)
                                            .ToList();

            //var ListaOdwiedzonych = zapytanie
            //    .Skip(dto.PageSize * (dto.PageNumber - 1))
            //    .Take(dto.PageSize)
            //    .ToList();

            //var totalitemsCount = zapytanie.Count();
            //var odwiedzoneDtos = _mapper.Map<List<ZwracaneOdwiedzoneDto>>(zapytanie);
            var odwiedzoneDtosId = zapytanie.Select(o => o.OdwiedzonyUrbex.Id);
            //var result = new PageResult<ZwracaneOdwiedzoneDto>(odwiedzoneDtos, totalitemsCount, dto.PageSize, dto.PageNumber);

            return odwiedzoneDtosId;
            //return ListaOdwiedzonych;

        }

        public void DodajOpinie(DodajOpinieDto dto)
        {
            var szukanaOpinia = _context.Opinia.FirstOrDefault(o => o.Odwiedzony.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId && o.Odwiedzony.OdwiedzonyUrbex.Id == dto.Id);
            if (szukanaOpinia is null)
            {
                var odwiedzony = _context.Odwiedzone.
                    FirstOrDefault(o => o.OdwiedzonyUrbex.Id == dto.Id && o.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId);


                _context.Attach(odwiedzony);

                var nowaOpinia = new Opinia()
                {
                    Odwiedzony = odwiedzony,
                    Ocena = dto.Ocena,
                    Tekst = dto.Tekst
                };
                _context.Opinia.Add(nowaOpinia);
            }
            else
            {
                szukanaOpinia.Ocena = dto.Ocena;
                szukanaOpinia.Tekst = dto.Tekst;
            }
                _context.SaveChanges();
                              
        }

        public PageResult<OpiniaDto> PokazOpinieDoMiejsca(PokazOpinieDoMiejscaDto dto)
        {
            var zapytanie = _context.Opinia.Where(o => o.Odwiedzony.OdwiedzonyUrbex.Id == dto.Id)
                                            .Include(o => o.Odwiedzony)
                                            .ThenInclude(o => o.OdwiedzonePrzez)
                                            .Include(o => o.Odwiedzony)
                                            .ThenInclude(o => o.OdwiedzonyUrbex);

            var opinie = zapytanie
                .Skip(dto.PageSize * (dto.PageNumber - 1))
                .Take(dto.PageSize)
                .ToList();

            var totalitemsCount = zapytanie.Count();

            var opinieDtos = _mapper.Map<List<OpiniaDto>>(opinie);

            var result = new PageResult<OpiniaDto>(opinieDtos, totalitemsCount, dto.PageSize, dto.PageNumber);
            return result;
            
        }

        public int IluLudziOdwiedziloMiejsce(IluLudziOdwiedziloMiejsceDto dto)
        {
            var ile = _context.Odwiedzone.Where(i => i.OdwiedzonyUrbex.Id == dto.Id).Count();
            return ile;
        }
        public bool CzyUzytkownikBylWMiejscu(int id)
        {
            var czybyl = _context.Odwiedzone.Include(c => c.OdwiedzonyUrbex)
                                            .Include(c => c.OdwiedzonePrzez)
                                            .FirstOrDefault(o => o.OdwiedzonyUrbex.Id == id && o.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId);
            if (czybyl == null) return false;
            else return true;
        }

        public OpiniaDto PokazMojaOpinieDoMiejsca(int id)
        {
            var opinia = _context.Opinia
                                        .Include(o => o.Odwiedzony)
                                        .ThenInclude(o => o.OdwiedzonePrzez)
                                        .Include(o => o.Odwiedzony)
                                        .ThenInclude(o => o.OdwiedzonyUrbex)
                                        .FirstOrDefault(o => o.Odwiedzony.OdwiedzonyUrbex.Id == id && o.Odwiedzony.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId);
            
            var opiniaDto = _mapper.Map<OpiniaDto>(opinia);
            return opiniaDto;

        }
    }
}
