using Xamarin.Forms;

namespace Urbexer.Models {
    /// <summary>
    /// Pinezka przechowująca id lokacji na którą wskazuje.
    /// </summary>
    public class LocationPin : Xamarin.Forms.Maps.Pin {
        #region Zmienne
        /// <summary>
        /// Przekazywane przy klikaniu na karte lokacji
        /// </summary>
        public int LocationId { get; set; } // Przekazywane przy klikaniu na karte lokacji
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