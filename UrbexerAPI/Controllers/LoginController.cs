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
            var hostUrl = $"{Request.Scheme}://{Request.Host.Value}";
            _loginService.RegisterUser(dto, hostUrl);
            return Ok();
        }

        [HttpPost("login")]
        public ActionResult Login([FromBody] LoginDto dto)
        {
            string token = _loginService.GenerateJwt(dto);
            return Ok(token);
        }

        [HttpGet("confirm")]
        public ActionResult Confirm([FromQuery] ConfirmUserDto dto)
        {
            _loginService.ConfirmUser(dto);
            return Content("Dziękujemy za aktywację konta");
        }
        //[HttpPut("Testconfirm")]
        //public ActionResult TestConfirm([FromBody] TestowyConfirmUserDto dto)
        //{
        //    _loginService.TestowyConfirmUser(dto);
        //    return Ok();
        //}
    }
}
