using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xamarin.Forms.Maps;

namespace Urbexer.Services {
    static class GeocoderService {
        #region Zmienne
        private static readonly Geocoder geocoder;
        #endregion

        #region Konstruktory
        static GeocoderService() {
            geocoder = new Geocoder();
        }
        #endregion

        #region Metody
        // Ustaw pozycje z danego adresu
        public static async Task<Position> GetPositionFromAddressAsync(string address) {
            IEnumerable<Position> approximatePositions = await geocoder.GetPositionsForAddressAsync(address);
            return approximatePositions.FirstOrDefault();
        }
        // Ustaw adres z danych współrzędnych
        public static async Task<string> GetAddressFromPositionAsync(float latitude, float longitude) {
            return await GetAddressFromPositionAsync(new Position(latitude, longitude));
        }
        // Ustaw adres z danej pozycji
        public static async Task<string> GetAddressFromPositionAsync(Position position) {
            IEnumerable<string> possibleAddresses = await geocoder.GetAddressesForPositionAsync(position);
            return possibleAddresses.FirstOrDefault();
        }
        #endregion
    }
}