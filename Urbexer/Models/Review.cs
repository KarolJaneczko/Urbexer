using System;
using System.Collections.Generic;
using System.Text;
using Urbexer.Models.ApiModels;

namespace Urbexer.Models {
    internal class Review {
        // Klasa reprezentująca opinię o miejscu
        public string UserName { get; set; }
        public int Score { get; set; }
        public string Message { get; set; }
        public Review(APIReview apiReview) {
            UserName = apiReview.ktoOdwiedzil;
            Score = apiReview.ocena;
            Message = apiReview.tekst;
        }
    }
}
