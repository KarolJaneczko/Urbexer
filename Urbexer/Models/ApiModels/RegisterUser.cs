using System;
using System.Collections.Generic;
using System.Text;

namespace Urbexer.Models.ApiModels {
    public class RegisterUser {
        public string email;
        public string login;
        public string potwierdzHaslo;
        public string hasloHash;
        public bool czyAdmin;
    }
}
