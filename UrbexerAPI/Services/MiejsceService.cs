using APIpz.Entities;
using APIpz.Middleware;
using APIpz.Models;
using AutoMapper;
using Microsoft.EntityFrameworkCore;


namespace APIpz.Services
{
    public interface IMiejsceService
    {
        List<MiejsceDto> GetAll();
        MiejsceDto PokazMiejscePoId(int dto);
        List<MiejsceDto> PokazMiejscaZListy(PokazMiejscaZListyDto dto);
        IEnumerable<int> PokazMiejscaZKategorii(int dto);
        IEnumerable<int> PokazMiejscaWPoblizu(PokazMiejscaWPoblizuDto dto);
        IEnumerable<int> PokazMiejscaWPoblizuBezOdwiedzonych(PokazMiejscaWPoblizuDto dto);
    }
    public class MiejsceService : IMiejsceService
    {
        private readonly BazaDbContext _context;
        private readonly ILogger<ErrorHandlingMiddleware> _logger;
        private readonly IUserContextService _userContextService;
        private readonly IMapper _mapper;
        public MiejsceService(BazaDbContext context, ILogger<ErrorHandlingMiddleware> logger, IUserContextService userContextService, IMapper mapper)
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
                .Include(t=>t.Zdjecia.Where(t=>t.Rozmiar==RozmiaryZdjec.Full))
                .Take(20) // Tymczasowo!!!
                .Select(x=> _mapper.Map<MiejsceDto>(x))
                .ToList();
            return wynik;
        }
        public MiejsceDto? PokazMiejscePoId(int id)
        {
            var miejsce = _context.Miejsce
                .Include(t=>t.Miejsce_Kategoria)
                .Include(t=>t.Wojewodztwo)
                .Include(t => t.Zdjecia.Where(t => t.Rozmiar == RozmiaryZdjec.Full))
                .FirstOrDefault( m => m.Id == id);
            var miejsceDto = _mapper.Map<MiejsceDto>(miejsce);
            if (miejsceDto == null) return null;

            try 
            {
                // Jeżeli kombinacja id użytkownika i lokacji pojawia się w tabeli Odwiedzone, to zwróc true.
                var odwiedzony = _context.Odwiedzone
                    .Include(o => o.OdwiedzonyUrbex)
                    .Include(o => o.OdwiedzonePrzez)
                    .Where(o => o.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId && o.OdwiedzonyUrbex.Id == id).Count();
                miejsceDto.CzyOdwiedzone = (odwiedzony > 0);
            }
            catch (Exception ex)
            {
                miejsceDto.CzyOdwiedzone = false;
            }

            return miejsceDto;
        }
        public List<MiejsceDto> PokazMiejscaZListy(PokazMiejscaZListyDto dto)
        {
            var miejsca = _context.Miejsce
                .Include(t => t.Miejsce_Kategoria)
                .Include(t => t.Wojewodztwo)
                .Include(t => t.Zdjecia.Where(t => t.Rozmiar == RozmiaryZdjec.Full))
                .Where(m => dto.listaId.Contains(m.Id)).Select(t=> _mapper.Map<MiejsceDto>(t)).ToList();

            foreach (MiejsceDto i in miejsca)
            {
                var odwiedzony = _context.Odwiedzone
                                            .Include(o => o.OdwiedzonyUrbex)
                                            .Include(o => o.OdwiedzonePrzez)
                                            .Where(o => o.OdwiedzonePrzez.Id == (int)_userContextService.GetUserId && o.OdwiedzonyUrbex.Id == i.Id);
                                                
                try
                {
                    i.CzyOdwiedzone = Convert.ToBoolean(odwiedzony);
                }
                catch (Exception ex)
                {
                    i.CzyOdwiedzone = false;
                }
            }

            return miejsca;
        }
        public IEnumerable<int> PokazMiejscaZKategorii(int id)
        {
            var zapytanie = _context.Miejsce
                .Include(t => t.Miejsce_Kategoria)
                .Include(t => t.Wojewodztwo)
                .Include(t => t.Zdjecia.Where(t => t.Rozmiar == RozmiaryZdjec.Full))
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
    }
}
