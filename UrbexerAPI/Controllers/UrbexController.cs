using APIpz.entities;
using APIpz.Models;
using APIpz.Services;
using Microsoft.AspNetCore.Mvc;

namespace APIpz.Controllers
{
    [Route("api/urbex")]
    [ApiController]
    public class UrbexController : ControllerBase
    {
        private readonly BazaDbContext _dbContext;
        private readonly IUrbexService _urbexService;
        public UrbexController(BazaDbContext dbContext, ILogger logger, IUrbexService urbexService)
        {
            _dbContext = dbContext;
            _urbexService = urbexService;
        }

        [HttpGet("getall")]
        public ActionResult<IEnumerable<Miejsce>> GetAll()
        {
            var wynik = _urbexService.GetAll();
            return Ok(wynik);
        }
    }
}
