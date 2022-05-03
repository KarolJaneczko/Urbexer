using Xamarin.Forms;

namespace Urbexer.Models {
    public class LocationPin : Xamarin.Forms.Maps.Pin {
        #region Zmienne
        public int LocationId { get; set; }
        public static readonly BindableProperty LocationIdProperty = BindableProperty.Create(
            nameof(LocationId), typeof(int), typeof(LocationPin), defaultValue: -1,
            propertyChanged: LocationIdPropertyChanged,
            defaultBindingMode: BindingMode.TwoWay);
        #endregion
        #region Metody
        private static void LocationIdPropertyChanged(BindableObject bindable, object oldValue, object newValue) {
            var pin = (LocationPin)bindable;
            pin.LocationId = (int)newValue;
        }
        #endregion
    }
}