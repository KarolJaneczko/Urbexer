using System;

namespace Urbexer.Models.ApiModels {
    /// <summary>
    /// Model otrzymywany przez API, wykorzystywany przy rejestracji.
    /// </summary>
    public class APIRegisterUser {
        public string email;
        public string login;
        public string potwierdzHaslo;
        public string hasloHash;
        public bool czyAdmin;
    }
}