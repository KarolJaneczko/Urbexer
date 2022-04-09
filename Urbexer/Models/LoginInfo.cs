using System;

namespace Urbexer.Models {
    public static class LoginInfo {
        public static string login { get; set; }
        public static string loginToken { get; set; }
        public static bool isAdmin { get; set; }

        public static void SetLoginCredentials(string _login, string _loginToken) {
            login = _login;
            loginToken = _loginToken;
            isAdmin = false;
        }
    }
}
