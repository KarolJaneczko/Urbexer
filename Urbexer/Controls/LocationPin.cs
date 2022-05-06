using Xamarin.Forms;
using Xamarin.Forms.Maps;

namespace Urbexer.Models {
    public class LocationPin : Xamarin.Forms.Maps.Pin {
        #region Zmienne
        public int LocationId { get; set; } // Przekazywane przy klikaniu na karte lokacji
        private bool isVisited = false;
        public bool IsVisited { // Decyduje o wyglądzie pinezki. True to zielona, false to czerwona
            get => isVisited;
            set {
                isVisited = value;
                //Type = value ? PinType.SavedPin : PinType.Generic;
                Type = value ? PinType.Generic : PinType.SavedPin;
            }
        }
        public static readonly BindableProperty LocationIdProperty = BindableProperty.Create(
            nameof(LocationId), typeof(int), typeof(LocationPin), defaultValue: -1,
            propertyChanged: LocationIdPropertyChanged,
            defaultBindingMode: BindingMode.TwoWay);
        public static readonly BindableProperty IsVisitedProperty = BindableProperty.Create(
            nameof(IsVisited), typeof(bool), typeof(LocationPin), defaultValue: false,
            propertyChanged: IsVisitedPropertyChanged,
            defaultBindingMode : BindingMode.TwoWay);
        #endregion
        public LocationPin() : base() {
            isVisited = false;
        }
        #region Metody
        private static void LocationIdPropertyChanged(BindableObject bindable, object oldValue, object newValue) {
            var pin = (LocationPin)bindable;
            pin.LocationId = (int)newValue;
        }
        private static void IsVisitedPropertyChanged(BindableObject bindable, object oldValue, object newValue) {
            var pin = (LocationPin)bindable;
            pin.IsVisited = (bool)newValue;
        }
        #endregion
    }
}