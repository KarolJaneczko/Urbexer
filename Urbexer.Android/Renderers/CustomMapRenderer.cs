using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Urbexer.Droid.Renderers;
using Xamarin.Forms;
using Urbexer.Controls;
using Xamarin.Forms.Maps.Android;
using Android.Gms.Maps;
using Android.Gms.Maps.Model;
using Urbexer.Models;
using Xamarin.Forms.Maps;

[assembly: ExportRenderer(typeof(CustomMap), typeof(CustomMapRenderer))]
namespace Urbexer.Droid.Renderers {
    public class CustomMapRenderer : MapRenderer {
        public CustomMapRenderer(Context context) : base(context) {
        }

        public Android.Views.View GetInfoContents(Marker marker) {
            return null;
        }

        public Android.Views.View GetInfoWindow(Marker marker) {
            return null;
        }
        protected override MarkerOptions CreateMarker(Pin pin){
            var marker = new MarkerOptions();
            marker.SetPosition(new LatLng(pin.Position.Latitude, pin.Position.Longitude));
            marker.SetTitle(pin.Label);
            marker.SetSnippet(pin.Address);

            /*
            switch (pin.Type) {
                case PinType.SavedPin:
                    marker.SetIcon(BitmapDescriptorFactory.FromResource(Resource.Drawable.greenPin_icon));
                    break;
                case PinType.Generic:
                    marker.SetIcon(BitmapDescriptorFactory.FromResource(Resource.Drawable.redPin_icon));
                    break;
            }*/
            marker.SetIcon(BitmapDescriptorFactory.FromResource(Resource.Drawable.redPin_icon));

            return marker;
        }
    }
}