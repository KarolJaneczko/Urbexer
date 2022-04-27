using System;
using System.Collections.Generic;
using System.Text;
using Urbexer.Models.ApiModels;
using Xamarin.CommunityToolkit.ObjectModel;

namespace Urbexer.Models {
    public class LocationDetailed : Location{
        public ObservableRangeCollection<ImageLink> ImageLinks { get; set; }
        public string Description { get; set; }
        public List<Review> Reviews { get; set; }
        public class ImageLink {
            // To istnieje, bo z jakiegoś powodu nie mogłem bindować CarouselView z obarazmi do kolekcji stringów
            // Natomiast jeżeli stworzyłem klasę która przechowuje string i binduję do kolekcji tej klasy to działa
            public string Link { get; set; }
        }
        public LocationDetailed() : base(){ }
        public LocationDetailed(APILocation apiLocation) : base(apiLocation){
            ImageLinks = new ObservableRangeCollection<ImageLink>() {
            new ImageLink { Link = "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530" },
            new ImageLink { Link = "https://cdn.discordapp.com/attachments/909835960852807713/967839054794223646/20211017_131032-100x100.jpg" },
            new ImageLink { Link = "https://cdn.discordapp.com/attachments/909835960852807713/967839116714737764/20211017_131032-220x220.jpg" },
            new ImageLink { Link = "https://cdn.discordapp.com/attachments/909835960852807713/967840380840210532/279028066_708718033656815_8015671028846047975_n.jpg" },
        };

        }
    }
}
