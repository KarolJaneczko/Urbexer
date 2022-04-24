using APIpz.Entities;
using APIpz.Models;
using APIpz.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace APIpz.Controllers
{
    [Route("api/urbex")]
    [ApiController]
    public class UrbexController : ControllerBase
    {
        private readonly BazaDbContext _dbContext;
        private readonly IUrbexService _urbexService;
        public UrbexController(BazaDbContext dbContext, IUrbexService urbexService, IAuthorizationService authorizationService)
        {
            _dbContext = dbContext;
            _urbexService = urbexService;
        }

        [HttpPut("dodajodwiedzone")]
        public ActionResult DodajOdwiedzone([FromBody] DodajOdwiedzoneDto dto)
        {
            _urbexService.DodajOdwiedzone(dto);
            return Ok();
        }
        [HttpGet("pokazMojeOdwiedzone")]
        public ActionResult<PageResult<ZwracaneOdwiedzoneDto>> PokazMojeOdwiedzone([FromQuery] PokazMojeOdwiedzoneDto dto)
        {
            var wynik = _urbexService.PokazMojeOdwiedzone(dto);
            return Ok(wynik);
        }
        [HttpGet("pokazOninieDoMiejsca")]
        public ActionResult<PageResult<OpiniaDto>> PokazOninieDoMiejsca([FromQuery] PokazOpinieDoMiejscaDto dto)
        {
            var wynik = _urbexService.PokazOpinieDoMiejsca(dto);
            return Ok(wynik);
        }
        [HttpGet("pokazCzyjesOdwiedzone")]
        public ActionResult<PageResult<ZwracaneOdwiedzoneDto>> PokazCzyjesOdwiedzone([FromQuery] PokazCzyjesOdwiedzoneDto dto)
        {
            var wynik = _urbexService.PokazCzyjesOdwiedzone(dto);
            return Ok(wynik);
        }

        [HttpPut("dodajOpinie")]
        public ActionResult DodajOpinie([FromBody] DodajOpinieDto dto)
        {

            _urbexService.DodajOpinie(dto);
            return Ok();
        }
    }
}
