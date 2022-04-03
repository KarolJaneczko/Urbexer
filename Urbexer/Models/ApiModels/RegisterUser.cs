using System;

namespace Urbexer.Models.ApiModels {
    public class RegisterUser {
        public string email;
        public string login;
        public string potwierdzHaslo;
        public string hasloHash;
        public bool czyAdmin;
    }
}
