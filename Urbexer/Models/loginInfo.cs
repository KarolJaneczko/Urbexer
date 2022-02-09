using System;
using System.Collections.Generic;
using System.Text;

namespace Urbexer.Models {
    public class loginInfo {
        string login;
        bool isLoggedIn;
        public loginInfo(string login) {
            this.isLoggedIn = true;
            this.login = login;
        }
        public loginInfo() {
            this.isLoggedIn = false;
        }
        public void setIsLoggedIn(bool isLoggedIn) {
            this.isLoggedIn = isLoggedIn;
        }
        public bool getIsLoggedIn() => this.isLoggedIn;
        public void setLogin(string login) {
            this.login = login;
        }
        public string getLogin(string login) {
            return this.login;
        }
    }
}
