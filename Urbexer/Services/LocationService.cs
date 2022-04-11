using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Urbexer.Models;
using Urbexer.Models.ApiModels;
using Xamarin.Forms.Maps;

namespace Urbexer.Services {
    public class LocationService : ConnectionService {
        // Funkcje do pobierania list lokacji


        private async Task<List<Location>> GetLocations(string apiMethod, string json = "") {
            List<APILocation> apiLocations = new List<APILocation>();
            string uri = "https://urbexerapi.azurewebsites.net" + apiMethod;
            var request = new HttpRequestMessage {
                Method = HttpMethod.Get,
                RequestUri = new Uri(uri),
                Content = new StringContent(json, Encoding.UTF8, "application/json"),
            };
            var response = await httpClient.SendAsync(request).ConfigureAwait(false);
            if (response.StatusCode == System.Net.HttpStatusCode.OK) {
                var result = response.Content.ReadAsStringAsync().Result;
                apiLocations = JsonConvert.DeserializeObject<List<APILocation>>(result);
            }
            return APILocationsToLocations(apiLocations);
        }
        // Pobierz wszystkie lokacje z bazy danych
        public async Task<List<Location>> GetAllLocations() {
            return GetLocations("/api/urbex/getall/").Result;
        }
        // Pobierz lokacje w okolicy danej pozycji
        public async Task<List<Location>> GetLocationsInArea(Position position) {
            List<Location> locations = new List<Location>();
            HttpResponseMessage result = await httpClient.GetAsync("https://urbexerapi.azurewebsites.net/"); // TODO Uzupełnić adres
            //foreach (var location in result.result) {
            //    locations.Add(location);
            //}
            return locations;
        }
        // Pobierz lokacje z danego województwa
        public async Task<List<Location>> GetLocationsByProvince(string province) {
            List<Location> locations = new List<Location>();
            HttpResponseMessage result = await httpClient.GetAsync("https://urbexerapi.azurewebsites.net/");
            //foreach (var location in result.result) {
            //    locations.Add(location);
            //}
            return locations;
        }

        // Funkcje do pobierania konkretnej lokacji
        class Id {
            public int id;
        }
        // Pobierz szczegóły lokacji o danym id
        public async Task<Location> GetLocationById(int id) {
            APILocation apiLocation = new APILocation();
            Location location = null;
            string httpAddress = "https://urbexerapi.azurewebsites.net/api/urbex/pokazMiejscePoId";
            //string httpAddress = "https://localhost:7204/api/urbex/pokazMiejscePoId";
            Id newid = new Id();
            newid.id = id;
            //string json = JsonConvert.SerializeObject(newid);
            string json = string.Format("{{\"id\": {0}}}", id);
            var request = new HttpRequestMessage {
                Method = HttpMethod.Get,
                RequestUri = new Uri(httpAddress),
                Content = new StringContent(json, Encoding.UTF8, "application/json"),
            };
            var response = await httpClient.SendAsync(request).ConfigureAwait(false);
            //HttpResponseMessage response = await httpClient.GetAsync(httpAddress,
              //  HttpCompletionOption.ResponseHeadersRead).ConfigureAwait(false);
            if (response.StatusCode == System.Net.HttpStatusCode.OK) {
                var result = response.Content.ReadAsStringAsync().Result;
                apiLocation = JsonConvert.DeserializeObject<APILocation>(result);
                location = new Location(apiLocation);
            }
            return location;
        }
        // Pobierz zdjęcia lokacji o danym id
        public static string[] GetImagesById(int id) {
            // TODO Zmodyfikować pod działanie z bazą danych
            return GetTestImageLinks();
        }
        
        // Poniższe funkcje są do testowania. Ostatecznie do usunięcia
        private static Location GetTestLocation(int id) {
            string placeholder_image = "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530";

            switch (id) {
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
        private static string[] GetTestImageLinks() {
            string[] links =  {
                "https://media.discordapp.net/attachments/129713358382301184/925902767485235220/spider-man-spider-man-rekawica-6007312.webp?width=530&height=530",
                "https://media.discordapp.net/attachments/129713358382301184/942607881671442432/2Q.png",
                "https://media.discordapp.net/attachments/129713358382301184/946177227521925120/RDT_20220223_0247005046886002966916432.png?width=680&height=511",
                "https://media.discordapp.net/attachments/129713358382301184/944117799008215091/Ba-dum-Tsss.jpg"
            };
            return links;
        }

        // Zamień metry na stopnie geograficzne
        public static double MetersToDegrees(int meters) {
            // 1 stopień to ok 111111m
            return (float)meters / 111111f;
        }
        // Zamień liste lokacji pobranych z API na format z Location.cs
        private static List<Location> APILocationsToLocations(List<APILocation>? input) {
            List<Location> output = new List<Location>();
            foreach (var location in input) {
                output.Add(new Location(location));
            }
            return output;
        }
    }
}

