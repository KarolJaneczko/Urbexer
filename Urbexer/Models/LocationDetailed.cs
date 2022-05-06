using System.Threading.Tasks;
using Urbexer.Models.ApiModels;
using Urbexer.Services;
using Xamarin.CommunityToolkit.ObjectModel;

namespace Urbexer.Models {
    public class LocationDetailed : Location{
        public ObservableRangeCollection<ImageLink> ImageLinks { get; set; }
        public string Description { get; set; }
        public ObservableRangeCollection<Review> Reviews { get; set; }
        public class ImageLink {
            // To istnieje, bo z jakiegoś powodu nie mogłem bindować CarouselView z obarazmi do kolekcji stringów
            // Natomiast jeżeli stworzyłem klasę która przechowuje string i binduję do kolekcji tej klasy to działa
            public string Link { get; set; }
        }
        private int currentReviewsPage = 0; // Używane w LoadMoreReviews()
        public LocationDetailed() : base(){ }
        public LocationDetailed(APILocation apiLocation) : base(apiLocation){
            if (!string.IsNullOrEmpty(apiLocation.opis)) 
                Description = apiLocation.opis;

            ImageLinks = new ObservableRangeCollection<ImageLink>();

            if (apiLocation.zdjecia == null || apiLocation.zdjecia.Length == 0) {
                ImageLinks.Add(new ImageLink { Link = "noPhotos.png" });
            }
            else {
                foreach (APIPhoto photo in apiLocation.zdjecia) {
                    ImageLinks.Add(new ImageLink { Link = photo.link });
                }
            }
        }
        public async Task LoadMoreReviews() {
            if (Reviews == null)
                Reviews = new ObservableRangeCollection<Review>();
            Reviews.AddRange(new ObservableRangeCollection<Review>(await ReviewService.GetReviews(Id, ++currentReviewsPage, 50)));
        }
    }
}
