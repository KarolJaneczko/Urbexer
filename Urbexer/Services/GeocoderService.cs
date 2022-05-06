using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xamarin.Forms.Maps;

namespace Urbexer.Services {
    /// <summary>
    /// Klasa upraszczająca korzystanie z <see cref="Geocoder"/>
    /// </summary>
    public static class GeocoderService {
        #region Zmienne
        private static readonly Geocoder geocoder;
        #endregion
        #region Konstruktory
        static GeocoderService() {
            geocoder = new Geocoder();
        }
        #endregion
        #region Metody
        /// <summary>
        /// Pobierz pozycje z danego adresu.
        /// </summary>
        public static async Task<Position> GetPositionFromAddressAsync(string address) {
            IEnumerable<Position> approximatePositions = await geocoder.GetPositionsForAddressAsync(address);
            return approximatePositions.FirstOrDefault();
        }
        /// <summary>
        /// Pobierz adres z danych współrzędnych.
        /// </summary>
        public static async Task<string> GetAddressFromPositionAsync(float latitude, float longitude) {
            return await GetAddressFromPositionAsync(new Position(latitude, longitude));
        }
        /// <summary>
        /// Pobierz adres z danej pozycji.
        /// </summary>
        public static async Task<string> GetAddressFromPositionAsync(Position position) {
            IEnumerable<string> possibleAddresses = await geocoder.GetAddressesForPositionAsync(position);
            return possibleAddresses.FirstOrDefault();
        }
        #endregion
    }
}