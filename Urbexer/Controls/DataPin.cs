﻿using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;
using Xamarin.Forms.Maps;

// DataPin służy jako pinezka na mapie która dodatkowo może mieć zbindowane id lokacji

namespace Urbexer.Models
{
    public class DataPin : Xamarin.Forms.Maps.Pin
    {
        public int LocationId { get; set; }
        public static readonly BindableProperty LocationIdProperty = BindableProperty.Create(
            nameof(LocationId), typeof(int), typeof(DataPin), defaultValue: -1,
            propertyChanged: LocationIdPropertyChanged,
            defaultBindingMode: BindingMode.TwoWay);
    
        private static void LocationIdPropertyChanged(BindableObject bindable, object oldValue, object newValue)
        {
            var pin = (DataPin)bindable;
            pin.LocationId = (int)newValue;
        }
    }
}