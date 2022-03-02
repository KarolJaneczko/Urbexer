using APIpz.entities;
using APIpz.Models;
using APIpz.Services;
using Microsoft.AspNetCore.Mvc;

namespace APIpz.Controllers
{
    [Route("api/account")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly BazaDbContext _dbContext;
        private readonly ILoginService _loginService;
        public LoginController(BazaDbContext dbContext, ILoginService loginService)
        {
            _dbContext = dbContext;
            _loginService = loginService;
        }
        [HttpPost("register")]
        public ActionResult RegisterUser([FromBody] RegisterUserDto dto)
        {
            _loginService.RegisterUser(dto);
            return Ok();
        }

        [HttpPost("login")]
        public ActionResult Login([FromBody] LoginDto dto)
        {
            string token = _loginService.GenerateJwt(dto);
            return Ok(token);

        }

        [HttpPut("confirm")]
        public ActionResult Confirm([FromBody] ConfirmUserDto dto)
        {
            _loginService.ConfirmUser(dto);
            return Ok();
        }
    }
}
