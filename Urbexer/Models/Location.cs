using System.Collections.Generic;
using System.Linq;
using Xamarin.Forms.Maps;
using Xamarin.CommunityToolkit.ObjectModel;
using Urbexer.Services;
using Urbexer.Models.ApiModels;

namespace Urbexer.Models {
    public class Location {
        public string Address { get; set; }
        public string Name { get; set; }
        public Position Position { get; set; }
        public int Id { get; set; }
        public string Thumbnail { get; set; }
        public ObservableRangeCollection<ImageLink> ImageLinks { get; set; }

        public Location(int id) {
            string[] strings = LocationService.GetImagesById(id);
            ImageLinks = new ObservableRangeCollection<ImageLink>();
            foreach (string s in strings) {
                ImageLinks.Add(new ImageLink { Link = s });
            }
        }
        public Location() {
            int id = 0;
            string[] strings = LocationService.GetImagesById(id);
            ImageLinks = new ObservableRangeCollection<ImageLink>();
            foreach (string s in strings) {
                ImageLinks.Add(new ImageLink { Link = s });
            }
        }
        // Konwertuj lokacje z bazy danych.
        public Location(APILocation apiLoc) {
            Address = apiLoc.adres;
            Name = apiLoc.nazwa;
            Position = new Position(apiLoc.wspolrzedneLAT, apiLoc.wspolrzedneLNG);
            Id = apiLoc.id;
        }

        // Funkcje do generowania współrzędnych z adresu.
        public void Position_From_Address() {
            Position_From_Address(Address);
        }
        public async void Position_From_Address(string address) {
            Geocoder geocoder = new Geocoder();
            IEnumerable<Position> approximatePositions = await geocoder.GetPositionsForAddressAsync(address);
            Position = approximatePositions.FirstOrDefault();
        }
        // Funkcje do generowania adresu z współrzędnych.
        public void Address_From_Position() {
            Address_From_Position(Position);
        }
        public void Address_From_Position(float latitude, float longitude) {
            Address_From_Position(new Position(latitude, longitude));
        }
        public async void Address_From_Position(Position position) {
            Geocoder geocoder = new Geocoder();
            IEnumerable<string> possibleAddresses = await geocoder.GetAddressesForPositionAsync(position);
            Address = possibleAddresses.FirstOrDefault();
        }
        public class ImageLink {
            public string Link { get; set; }
        }
    }
}
