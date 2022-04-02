using System;
using System.Collections.Generic;
using System.Text;

namespace Urbexer.Models {
    public static class LoginInfo {
        public static string login { get; set; }
        public static string loginToken { get; set; }
        public static bool isAdmin { get; set; }

        public static void SetLoginCredentials(string userLogin, string userLoginToken) {
            login = userLogin;
            loginToken = userLoginToken;
            isAdmin = false;
        }
    }
}
