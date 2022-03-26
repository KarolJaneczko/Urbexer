using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Urbexer.Models;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms.Maps;
using Urbexer.Services;
using System.Threading.Tasks;
using Urbexer.Views;
using Xamarin.Forms;
using System.Windows.Input;

namespace Urbexer.ViewModels
{
    public class MapViewModel
    {
        public ObservableRangeCollection<Location> Locations { get; set; } // Przechowuje wszystkie wczytane lokacje
        public ObservableRangeCollection<Location> LocationsFiltered { get; set; } // Przechowuje wyświetlane lokacje

        public AsyncCommand<Location> CardSelectedCommand { get; }
        //public Command<string> FilterLocationByNameCommand { get; }
        public MapViewModel()
        {
            LocationsFiltered = new ObservableRangeCollection<Location> { };
            InitializeTest();

            ClearFilter();

            CardSelectedCommand = new AsyncCommand<Location>(CardSelected);
            //FilterLocationByNameCommand = new Command<string>(FilterLocationsByName);
        }

        // Testowa funkcja do zapełnienia mapy
        private void InitializeTest()
        {
            Locations = new ObservableRangeCollection<Location>
            {
                LocationService.GetLocationById(0),
                LocationService.GetLocationById(1),
                LocationService.GetLocationById(2),
                LocationService.GetLocationById(3),
            };
        }

        private void ClearFilter()
        {
            foreach (var location in Locations)
            {
                LocationsFiltered.Add(location);
            }
        }

        // Przenosi do strony lokacji o odpowiednim id. Używane w komendzie CardSelectedCommand.
        async Task CardSelected(Location location)
        {
            if (location.Id < 0) return; // Id powinno być nieujemne.

            var route = $"{nameof(LocationDetailsPage)}?LocationId={location.Id}";
            await Shell.Current.GoToAsync(route);
        }

        public ICommand FilterLocationsByNameCommand => new Command<string>(async (string query) =>
        {

            if (string.IsNullOrEmpty(query))
            {
                ClearFilter();
                return;
            }

            LocationsFiltered.Clear();
            foreach (var location in Locations)
            {
                if (location.Name.ToLower().Contains(query.ToLower()))
                {
                    LocationsFiltered.Add(location);
                }
            }
        });
    }
}
