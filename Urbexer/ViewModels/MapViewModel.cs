using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Urbexer.Models;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms.Maps;
using Urbexer.Services;

namespace Urbexer.ViewModels
{
    public class MapViewModel
    {
        public ObservableRangeCollection<Location> Locations { get; set; }

        public MapViewModel()
        {
            Initialize();
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
    }
}
