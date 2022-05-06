using System;
using Urbexer.Models.ApiModels;

namespace Urbexer.Models {
    /// <summary>
    /// Recenzja <see cref="Location"/>.
    /// </summary>
    public class Review {
        /// <summary>
        /// Nazwa użytkownika.
        /// </summary>
        public string UserName { get; set; }
        /// <summary>
        /// Ocena.
        /// </summary>
        public int Score { get; set; }
        /// <summary>
        /// Treść recenzji.
        /// </summary>
        public string Message { get; set; }
        public Review() { }
        /// <summary>
        /// Utwórz recenzję wzorowaną na danym <see cref="APIReview"/>.
        /// </summary>
        /// <param name="apiReview">Wzorzec do utworzenia recenzji.</param>
        public Review(APIReview apiReview) {
            UserName = apiReview.ktoOdwiedzil;
            Score = Math.Clamp(apiReview.ocena, 1, 5);
            Message = apiReview.tekst;
        }
    }
}
