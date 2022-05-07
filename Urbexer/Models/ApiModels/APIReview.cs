#nullable enable

namespace Urbexer.Models.ApiModels {
    /// <summary>
    /// Recenzja pobrana z bazy.
    /// </summary>
    public class APIReview {
        /// <summary>
        /// Nazwa użytkownika.
        /// </summary>
        public string? ktoOdwiedzil;
        public int ocena;
        /// <summary>
        /// Treść recenzji.
        /// </summary>
        public string? tekst;
    }
}
