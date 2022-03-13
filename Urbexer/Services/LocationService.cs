using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms.Maps;

namespace Urbexer.Services
{
    public class LocationService
    {
        public static Location GetLocationById(int id)
        {
            var location = GetTestLocation(id);
            return location;
        }
        /*
        public static async Task<Location> GetLocationById(int id)
        {
            var location = GetTestLocation(id);
            return location;
        }
        */
        public static string[] GetImagesById(int id)
        {
            return GetTestImageLinks();
        }
        private static Location GetTestLocation(int id)
        {
            string placeholder_image = "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530";

            switch (id)
            {
                case 0:
                    return new Location { Address = "Juliusza Słowackiego 1/3", Name = "DS6", Position = new Position(53.01279100718829, 18.596184269318496), Thumbnail = placeholder_image, Id = 0 };
                case 1:
                    return new Location { Address = "Juliusza Słowackiego 5/7", Name = "DS5", Position = new Position(53.012867443227876, 18.595082727180696), Thumbnail = placeholder_image, Id = 1 };
                case 2:
                    return new Location { Address = "Mikołaja Reja 25", Name = "DS12", Position = new Position(53.016041297422575, 18.57122438669747), Thumbnail = placeholder_image, Id = 2 };
                case 3:
                    return new Location { Address = "Toruń, ds10, Polska", Name = "DS10", Position = new Position(53.01959018140275, 18.57689926136301), Thumbnail = placeholder_image, Id = 3 };
            }

            return null;
        }

        private static string[] GetTestImageLinks()
        {
            string[] links =  {
                "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530",
                "https://media.discordapp.net/attachments/129713358382301184/942607881671442432/2Q.png",
                "https://media.discordapp.net/attachments/129713358382301184/946177227521925120/RDT_20220223_0247005046886002966916432.png?width=680&height=511",
                "https://media.discordapp.net/attachments/129713358382301184/944117799008215091/Ba-dum-Tsss.jpg"
            };
            return links;
        }
    }
}

