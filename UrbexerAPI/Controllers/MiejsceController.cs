using APIpz.Entities;
using APIpz.Models;
using APIpz.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace APIpz.Controllers
{
    [Route("api/place")]
    [ApiController]
    [Authorize]
    public class MiejsceController : ControllerBase
    {
        private readonly BazaDbContext _dbContext;
        private readonly IMiejsceService _miejsceService;
        public MiejsceController(BazaDbContext dbContext, IMiejsceService miejsceService, IAuthorizationService authorizationService)
        {
            _dbContext = dbContext;
            _miejsceService = miejsceService;
        }

        [HttpGet("getall")]
        public ActionResult<IEnumerable<Miejsce>> GetAll()
        {
            var wynik = _miejsceService.GetAll();
            return Ok(wynik);
        }

        [HttpGet("pokazMiejscePoId")]
        public ActionResult<Miejsce> PokazMiejscePoId([FromQuery] int id)
        {
            var wynik = _miejsceService.PokazMiejscePoId(id);
            return Ok(wynik);
        }

        [HttpPost("pokazMiejscaZListy")]
        public ActionResult<List<Miejsce>> PokazMiejscaZListy([FromBody]PokazMiejscaZListyDto dto)
        {
            var wynik = _miejsceService.PokazMiejscaZListy(dto);
            return Ok(wynik);
        }

        [HttpGet("pokazMiejscaZKategorii")]
        public ActionResult<IEnumerable<int>> PokazMiejscaZKategorii([FromQuery] int id)
        {
            var wynik = _miejsceService.PokazMiejscaZKategorii(id);
            return Ok(wynik);
        }

        [HttpGet("pokazMiejscaWPoblizu")]

        public ActionResult<IEnumerable<int>> PokazMiejscaWPoblizu([FromQuery]PokazMiejscaWPoblizuDto dto)
        {
            var wynik = _miejsceService.PokazMiejscaWPoblizu(dto);
            return Ok(wynik);
        }
        [HttpGet("pokazMiejscaWPoblizuBezOdwiedzonych")]
        public ActionResult<IEnumerable<int>> PokazMiejscaWPoblizuBezOdwiedzonych([FromQuery] PokazMiejscaWPoblizuDto dto)
        {
            var wynik = _miejsceService.PokazMiejscaWPoblizuBezOdwiedzonych(dto);
            return Ok(wynik);
        }
    }
}
