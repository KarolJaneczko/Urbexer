using APIpz.Entities;
using APIpz.Models;
using APIpz.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace APIpz.Controllers
{
    [Route("api/profile")]
    [ApiController]
    public class ProfilController : ControllerBase
    {
        private readonly BazaDbContext _dbContext;
        private readonly IProfileService _profileService;
        public ProfilController(BazaDbContext dbContext, IProfileService profileService, IAuthorizationService authorizationService)
        {
            _dbContext = dbContext;
            _profileService = profileService;
        }

        [HttpPut("edytujProfil")]
        public ActionResult EdytujProfil([FromBody] EdytujProfilDto dto)
        {

            _profileService.EdytujProfil(dto);
            return Ok();
        }

        [HttpGet("pokazProfil")]
        public ActionResult<PokazProfilDto> PokazProfil([FromQuery] string login)
        {
            var wynik = _profileService.PokazProfil(login);
            if (wynik == null)
              {
                return NotFound();
            }
            return Ok(wynik);
        }
    }
}
