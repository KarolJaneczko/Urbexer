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
    [Authorize]
    public class UrbexController : ControllerBase
    {
        private readonly BazaDbContext _dbContext;
        private readonly IUrbexService _urbexService;
        public UrbexController(BazaDbContext dbContext, IUrbexService urbexService, IAuthorizationService authorizationService)
        {
            _dbContext = dbContext;
            _urbexService = urbexService;
        }

        [HttpPost("dodajOdwiedzone")]
        public ActionResult DodajOdwiedzone([FromQuery] int id)
        {
            _urbexService.DodajOdwiedzone(id);
            return Ok();
        }
        [HttpGet("pokazMojeOdwiedzone")]
        public ActionResult<PageResult<ZwracaneOdwiedzoneDto>> PokazMojeOdwiedzone([FromQuery] PokazMojeOdwiedzoneDto dto)
        {
            var wynik = _urbexService.PokazMojeOdwiedzone(dto);
            return Ok(wynik);
        }
        [HttpGet("pokazOpinieDoMiejsca")]
        public ActionResult<PageResult<OpiniaDto>> PokazOninieDoMiejsca([FromQuery] PokazOpinieDoMiejscaDto dto)
        {
            var wynik = _urbexService.PokazOpinieDoMiejsca(dto);
            return Ok(wynik);
        }
        [HttpGet("pokazCzyjesOdwiedzone")]
        public ActionResult<IEnumerable<int>> PokazCzyjesOdwiedzone([FromQuery] PokazCzyjesOdwiedzoneDto dto)
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
        [HttpGet("iluLudziOdwiedziloMiejsce")]
        public ActionResult<int> IluLudziOdwiedziloMiejsce(IluLudziOdwiedziloMiejsceDto dto)
        {
            var wynik = _urbexService.IluLudziOdwiedziloMiejsce(dto);
            return Ok(wynik);
        }
        [HttpGet("czyUzytkownikBylWMiejscu")]
        public ActionResult<bool> CzuUzytkownikBylWMiejscu([FromQuery] int id)
        {
            var wynik = _urbexService.CzyUzytkownikBylWMiejscu(id);
            return Ok(wynik);
        }
        [HttpGet("pokazMojaOpinieDoMiejsca")]
        public ActionResult<OpiniaDto> PokazMojaOpinieDoMiejsca([FromQuery] int id)
        {
            var wynik = _urbexService.PokazMojaOpinieDoMiejsca(id);
            return Ok(wynik);
        }
        [HttpGet("ileLokacjiDanejKategoriUzytkownikOdwiedzil")]
        public ActionResult<int> IleLokacjiDanejKategoriUzytkownikOdwiedzil([FromQuery] IleLokacjiDanejKategoriUzytkownikOdwiedziDto dto)
        {
            var wynik = _urbexService.IleLokacjiDanejKategoriUzytkownikOdwiedzil(dto);
            return Ok(wynik);
        }
    }
}
