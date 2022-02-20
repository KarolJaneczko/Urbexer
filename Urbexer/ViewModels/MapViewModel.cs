﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Xamarin.Forms.Maps;

namespace Urbexer.ViewModels
{
    public class MapViewModel
    {
        public ObservableCollection<Location> Locations { get; set; }

        public MapViewModel()
        {
            Locations = new ObservableCollection<Location>
            {
                new Location { Address = "Juliusza Słowackiego 1/3", Description = "DS6", Position = new Position(53.01279100718829, 18.596184269318496) },
                new Location { Address = "Juliusza Słowackiego 5/7", Description = "DS5", Position = new Position(53.012867443227876, 18.595082727180696) },
                new Location { Address = "Mikołaja Reja 25", Description = "DS12", Position = new Position(53.016041297422575, 18.57122438669747) }
            };
        }
    }
    public class Location
    {
        public string Address { get; set; }
        public string Description { get; set; }
        public Position Position { get; set; }
    }
}
