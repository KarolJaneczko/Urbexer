using System;
using System.Collections.Generic;
using System.Text;
using Urbexer.Models;
using Xamarin.Forms.Maps;

namespace Urbexer.Controls {
    /// <summary>
    /// Mapa służąca do przechowywania LocationPin i wyświetlania customowych grafik pinezek
    /// </summary>
    public class CustomMap : Map{
        public List<LocationPin> LocationPins { get; set; }
        public CustomMap(MapSpan mapSpan) : base(mapSpan) { }
        public CustomMap() : base() { }
    }
}
