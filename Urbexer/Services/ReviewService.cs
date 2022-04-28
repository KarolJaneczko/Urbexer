using System.Collections.Generic;
using System.Threading.Tasks;
using Urbexer.Models;

namespace Urbexer.Services {
    internal static class ReviewService {
        // Klasa do pobierania recenzji/opini o lokacjach z api
        private static List<Review> dummyReviews = new List<Review>() {
                new Review(){ Score = 5, UserName = "Adam", Message = "Test"},
                new Review(){ Score = 2, UserName = "Janusz", Message = "Test2\nTest2"},
                new Review(){ Score = 3, UserName = "Rafał", Message = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},

        };

        // Wystaw recenzję lokacji o danym id
        public static async Task PostReview(int locationId, int reviewScore, string reviewMessage) {
        }
        // Pobierz recenzje lokacji o danym id
        // pageNumber decyduje którą stronę recenzji z kolei pobierać, poczynając od 1
        // pageSize decyduje ile recenzji na stronę
        public static async Task<List<Review>> GetReviews(int locationId, int pageNumber, int pageSize) {
            List<Review> output = new List<Review>();
            foreach (Review review in dummyReviews) {
                output.Add(review);
            }
            return output;
        }
    }
}
