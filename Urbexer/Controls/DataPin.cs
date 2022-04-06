using System;
using Xamarin.Forms;

namespace Urbexer.Models {
    public class DataPin : Xamarin.Forms.Maps.Pin {
        public int LocationId { get; set; }
        public static readonly BindableProperty LocationIdProperty = BindableProperty.Create(
            nameof(LocationId), typeof(int), typeof(DataPin), defaultValue: -1,
            propertyChanged: LocationIdPropertyChanged,
            defaultBindingMode: BindingMode.TwoWay);
        private static void LocationIdPropertyChanged(BindableObject bindable, object oldValue, object newValue) {
            var pin = (DataPin)bindable;
            pin.LocationId = (int)newValue;
        }
    }
}
