using APIpz.Entities;
using APIpz.Models;
using APIpz.Services;
using Microsoft.AspNetCore.Mvc;

namespace APIpz.Controllers
{
    [Route("api/account")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly ILoginService _loginService;
        public LoginController(ILoginService loginService)
        {
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
        [HttpPut("Testconfirm")]
        public ActionResult TestConfirm([FromBody] TestowyConfirmUserDto dto)
        {
            _loginService.TestowyConfirmUser(dto);
            return Ok();
        }
    }
}
