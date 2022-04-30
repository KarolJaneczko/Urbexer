using System;
using Urbexer.Models.ApiModels;

namespace Urbexer.Models {
    public class Review {
        // Klasa reprezentująca opinię o miejscu
        public string UserName { get; set; }
        public int Score { get; set; }
        public string Message { get; set; }
        public Review() { }
        public Review(APIReview apiReview) {
            UserName = apiReview.ktoOdwiedzil;
            Score = Math.Clamp(apiReview.ocena, 1, 5);
            Message = apiReview.tekst;
        }
    }
}
