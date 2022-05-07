using Android.Content;
using Android.Gms.Maps.Model;
using Urbexer.Controls;
using Urbexer.Droid.Renderers;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Xamarin.Forms.Maps.Android;

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
        protected override MarkerOptions CreateMarker(Pin pin) {
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