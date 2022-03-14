using APIpz.Entities;
using APIpz.Exceptions;
using APIpz.Middleware;
using APIpz.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace APIpz.Services
{
    public interface IUrbexService
    {
        List<Miejsce> GetAll();

        void DodajOdwiedzone(DodajOdwiedzoneDto dto);

    }
    public class UrbexService : IUrbexService
    {
        private readonly BazaDbContext _context;
        private readonly ILogger<ErrorHandlingMiddleware> _logger;
        private readonly IAuthorizationHandler _authorizationHandler;
        private readonly IUserContextService _userContextService;

        public UrbexService(BazaDbContext context, ILogger<ErrorHandlingMiddleware> logger, IAuthorizationHandler authorizationHandler, IUserContextService userContextService)
        {
            _context = context;
            _logger = logger;
            _authorizationHandler = authorizationHandler;
            _userContextService = userContextService;
        }

        public List<Miejsce> GetAll()
        {
            var wynik = _context.Miejsce.ToList();
            return wynik;
        }

        public void DodajOdwiedzone(DodajOdwiedzoneDto dto)
        {
            var urbex = _context.Miejsca.FirstOrDefault(u => u.Nazwa == dto.NazwaUrbexu);
            _context.Attach(urbex);

            var noweOdwiedzone = new Odwiedzony()
            {
                OdwiedzonePrzezId =(int)_userContextService.GetUserId,// dzięki JWT wyciągamy id
                OdwiedzonyUrbex = urbex
            };

            _context.Odwiedzone.Add(noweOdwiedzone);
            _context.SaveChanges();

        }

    }
}
