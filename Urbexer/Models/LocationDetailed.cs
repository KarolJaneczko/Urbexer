using System;
using System.Collections.Generic;
using System.Text;
using Urbexer.Models.ApiModels;
using Xamarin.CommunityToolkit.ObjectModel;

namespace Urbexer.Models {
    public class LocationDetailed : Location{
        public ObservableRangeCollection<ImageLink> ImageLinks { get; set; }
        public string Description { get; set; }
        public class ImageLink {
            // To istnieje, bo z jakiegoś powodu nie mogłem bindować CarouselView z obarazmi do kolekcji stringów
            // Natomiast jeżeli stworzyłem klasę która przechowuje string i binduję do kolekcji tej klasy to działa
            public string Link { get; set; }
        }
        public LocationDetailed() : base(){ }
        public LocationDetailed(APILocation apiLocation) : base(apiLocation){
            ImageLinks = new ObservableRangeCollection<ImageLink>();
            if (apiLocation.zdjecie != null) {

            }
            else {
                // Wczytaj placeholder
                Thumbnail = "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530";
                ImageLinks.Add(new ImageLink { Link = "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530" });
            }
        }
    }
}
