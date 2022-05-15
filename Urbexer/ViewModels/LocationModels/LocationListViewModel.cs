using Plugin.Connectivity;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Urbexer.Services;
using Urbexer.ViewModels.LocationModels;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Essentials;
using Location = Urbexer.Models.Location;

namespace Urbexer.ViewModels {
    /// <summary>
    /// ViewModel listy lokacji.
    /// </summary>
    internal class LocationListViewModel : BaseLocationViewModel {
        /// <summary>
        /// Wczytaj dodatkowe lokacje. <para/>
        /// Wywoływane, gdy użytkownik zescrolluje na sam dół listy.
        /// </summary>
        public AsyncCommand LoadMoreCommand { get; }
        private readonly List<int> loadedLocationsIds = new List<int>();
        /// <summary>
        /// Obecny zasięg wczytywania lokacji.
        /// </summary>
        private int currentLoadRange = 0;
        /// <summary>
        /// Blokuje duplikatowe wywołania <see cref="LoadMore"/>.
        /// </summary>
        private bool isLoading = false;
        public bool IsFiltering {
            get => !string.IsNullOrEmpty(CurrentNameFilter);
        }
        public LocationListViewModel() : base() {
            LoadMoreCommand = new AsyncCommand(LoadMore);
        }

        #region Komendy
        /// <summary>
        /// Powiększ zasięg wczytywania lokacji i pobierz nowe lokacje.
        /// </summary>
        async Task LoadMore() {
            if (!CrossConnectivity.Current.IsConnected) return;
            if (isLoading) return; // Nie powzól na więcej niż jeden task LoadMore jednocześnie
            isLoading = true;

            List<int> newIds = new List<int>();
            Xamarin.Essentials.Location location = await Geolocation.GetLastKnownLocationAsync();
            while (newIds.Count() == 0) {
                currentLoadRange += 30;
                newIds = await LocationService.GetIdListInArea(
                    (float)location.Latitude, (float)location.Longitude, currentLoadRange).ConfigureAwait(false);
                newIds = newIds.Except(loadedLocationsIds).ToList();
            }
            loadedLocationsIds.AddRange(newIds);

            var newLocations = await LocationService.GetLocationListByIds(newIds).ConfigureAwait(false);
            SortLocationsByDistance(newLocations);
            AddLocations(newLocations);

            isLoading = false;
        }
        #endregion Komendy

        #region Metody
        private void SortLocationsByDistance(List<Location> locations) {
            if (locations == null) return;

            locations.Sort((location1, location2) => {
                if (location1.Distance == location2.Distance) return 0;
                return location1.Distance < location2.Distance ? -1 : 1;
            });
        }
        #endregion
    }
}
