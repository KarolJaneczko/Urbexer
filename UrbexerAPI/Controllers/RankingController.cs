using APIpz.Entities;
using APIpz.Models;
using APIpz.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace APIpz.Controllers
{
    [Route("api/ranking")]
    [ApiController]
    [Authorize]
    public class RankingController : ControllerBase
    {
        private readonly IRankingService _rankingService;
        public RankingController(BazaDbContext dbContext, IRankingService rankingService, IAuthorizationService authorizationService)
        {
            _rankingService = rankingService;
        }

        [HttpGet("")]
        public ActionResult<List<PozycjaWRankinguDto>> RankingOgolny()
        {
            var wynik = _rankingService.Ranking();
            return wynik;
        }
        [HttpGet("WedlugKategorii")]
        public ActionResult<List<PozycjaWRankinguDto>> RankingKategoria(int kategoriaId)
        {
            var wynik = _rankingService.Ranking(kategoriaId);
            return wynik;
        }
    }
}
