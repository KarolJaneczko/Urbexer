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
                await LocationService.GetLocationById(0),
                await LocationService.GetLocationById(1),
                await LocationService.GetLocationById(2),
                await LocationService.GetLocationById(3),
            };
        }
    }
}
