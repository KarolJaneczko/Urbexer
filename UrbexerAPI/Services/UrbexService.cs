using APIpz.entities;
using APIpz.Exceptions;
using APIpz.Middleware;
using APIpz.Models;
using Microsoft.AspNetCore.Mvc;

namespace APIpz.Services
{
    public interface IUrbexService
    {
        List<Miejsce> GetAll();

    }
    public class UrbexService : IUrbexService
    {
        private readonly BazaDbContext _context;
        private readonly ILogger<ErrorHandlingMiddleware> _logger;


        public UrbexService(BazaDbContext context, ILogger<ErrorHandlingMiddleware> logger)
        {
            _context = context;
            _logger = logger;
        }

        public List<Miejsce> GetAll()
        {
            var wynik = _context.Miejsca.ToList();
            return wynik;
        }


    }
}
