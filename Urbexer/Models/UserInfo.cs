using System;
using System.Collections.Generic;
using System.Text;

namespace Urbexer.Models {
    public class UserInfo {
        public LoginInfo loginInfo;
        public string userNickname;
        public bool IsAdmin { get; set; }
    }
}
