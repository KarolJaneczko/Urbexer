using System;
using System.Collections.Generic;
using System.Text;

namespace Urbexer.Models {
    public class LoginInfo {
        public string login { get; set; }
        public string loginToken { get; set; }
        public LoginInfo(string login, string loginToken) {
            this.login = login;
            this.loginToken = loginToken;
        }
    }
}
