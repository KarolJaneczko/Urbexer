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

namespace Urbexer.ViewModels
{
    public class MapViewModel
    {
        public ObservableRangeCollection<Location> Locations { get; set; }

        public AsyncCommand<Location> CardSelectedCommand { get; }
        public MapViewModel()
        {
            Initialize();

            CardSelectedCommand = new AsyncCommand<Location>(CardSelected);
        }

        private async void Initialize()
        {
            Locations = new ObservableRangeCollection<Location>
            {
                LocationService.GetLocationById(0),
                LocationService.GetLocationById(1),
                LocationService.GetLocationById(2),
                LocationService.GetLocationById(3),
            };
        }

        async Task CardSelected(Location location)
        {
            if (location.Id < 0) return;

            var route = $"{nameof(LocationDetailsPage)}?LocationId={location.Id}";
            await Shell.Current.GoToAsync(route);
        }
    }
}
