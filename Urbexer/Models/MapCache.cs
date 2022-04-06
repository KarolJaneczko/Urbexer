using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using Urbexer.Services;
using Xamarin.Essentials;
using Xamarin.Forms.Maps;

namespace Urbexer.Models {
    public static class MapCache {
        static readonly List<Position> positionHistory; // Historia pozycji użytkownika
        public static List<Position> PositionHistory {
            get { return positionHistory; }
            set { }
        }
        static readonly Timer cachePositionTimer; 
        static MapCache() { 
            positionHistory = new List<Position>();

            int positionCacheTime = 60000; // Co ile milisekund będzie cachowana pozycja użytkownika
            cachePositionTimer = new Timer(CacheCurrentPosition, null, 1000, positionCacheTime);
        }
        // Dodaj obecną pozycje do historii
        public static void CacheCurrentPosition(object state = null) {
            Xamarin.Essentials.Location location = Geolocation.GetLastKnownLocationAsync().Result;
            if (location == null) return;
            positionHistory.Add(new Position(location.Latitude, location.Longitude));
        }
    }
}
