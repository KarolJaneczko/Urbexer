using System;

namespace Urbexer.Models.ApiModels {
    /// <summary>
    /// Model otrzymywany przez API, wykorzystywany przy logowaniu.
    /// </summary>
    public class APILogin {
        public string login;
        public string password;
    }
}