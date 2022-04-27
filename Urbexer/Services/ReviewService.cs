using System.Collections.Generic;
using System.Threading.Tasks;
using Urbexer.Models;

namespace Urbexer.Services {
    internal static class ReviewService {
        // Klasa do pobierania recenzji/opini o lokacjach z api

        // Wystaw recenzję lokacji o danym id
        private static async Task PostReview(int locationId, int reviewScore, string reviewMessage) {
        }
        // Pobierz recenzje lokacji o danym id
        // pageNumber decyduje którą stronę recenzji z kolei pobierać, poczynając od 1
        // pageSize decyduje ile recenzji na stronę
        private static async Task<List<Review>> GetReviews(int locationId, int pageNumber, int pageSize) {
            List<Review> output = new List<Review>();
            return output;
        }
    }
}
