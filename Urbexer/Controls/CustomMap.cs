using System;
using System.Collections.Generic;
using System.Text;
using Urbexer.Models;
using Xamarin.Forms.Maps;

namespace Urbexer.Controls {
    public class CustomMap : Map{
        public List<LocationPin> LocationPins { get; set; }
        public CustomMap(MapSpan mapSpan) : base(mapSpan) { }
        public CustomMap() : base() { }
    }
}
