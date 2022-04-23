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

        [HttpGet("getall")]
        public ActionResult<IEnumerable<Miejsce>> GetAll()
        {
            var wynik = _urbexService.GetAll();
            return Ok(wynik);
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

        [HttpGet("pokazMiejscePoId")]
        public ActionResult<Miejsce> PokazMiejscePoId(int id)
        {
            var wynik = _urbexService.PokazMiejscePoId(id);
            return Ok(wynik);
        }

        [HttpPost("pokazMiejscaZListy")]
        public ActionResult<List<Miejsce>> PokazMiejscaZListy([FromBody]PokazMiejscaZListyDto dto)
        {
            var wynik = _urbexService.PokazMiejscaZListy(dto);
            return Ok(wynik);
        }

        [HttpGet("pokazMiejscaZKategorii")]
        public ActionResult<IEnumerable<int>> PokazMiejscaZKategorii([FromBody] int id)
        {
            var wynik = _urbexService.PokazMiejscaZKategorii(id);
            return Ok(wynik);
        }

        [HttpGet("pokazMiejscaWPoblizu")]

        public ActionResult<IEnumerable<int>> PokazMiejscaWPoblizu([FromQuery]PokazMiejscaWPoblizuDto dto)
        {
            var wynik = _urbexService.PokazMiejscaWPoblizu(dto);
            return Ok(wynik);

        }
        [HttpGet("pokazMiejscaWPoblizuBezOdwiedzonych")]
        public ActionResult<IEnumerable<int>> PokazMiejscaWPoblizuBezOdwiedzonych([FromQuery] PokazMiejscaWPoblizuDto dto)
        {
            var wynik = _urbexService.PokazMiejscaWPoblizuBezOdwiedzonych(dto);
            return Ok(wynik);

        }

        [HttpPut("stworzPustyProfil")]
        public ActionResult StworzOdwiedzone([FromBody] StworzPustyProfilDto dto)
        {

            _urbexService.StworzPustyProfil(dto);
            return Ok();
        }

        [HttpPut("edytujProfil")]
        public ActionResult EdytujProfil([FromBody] EdytujProfilDto dto)
        {

            _urbexService.EdytujProfil(dto);
            return Ok();
        }

        [HttpGet("pokazProfil")]
        public ActionResult<PokazProfilDto> PokazProfil(string login)
        {
            var wynik = _urbexService.PokazProfil(login);
            if (wynik == null)
              {
                return NotFound();
            }
            return Ok(wynik);
        }
    }
}
