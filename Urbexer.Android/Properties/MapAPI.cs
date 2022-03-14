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

// Ten klucz API należy do Bartłomieja Płókarza
// Służy do debugowania/testowania i po oddaniu gotowej aplikacji zostanie usunięty/unieważniony
// Aby utworzyć własny klucz do API Google Maps skorzystaj z poradnika:
// https://docs.microsoft.com/en-us/xamarin/android/platform/maps-and-location/maps/obtaining-a-google-maps-api-key?tabs=windows
[assembly: MetaData("com.google.android.maps.v2.API_KEY", Value = "AIzaSyBqyq2Mq67ICSJdZyM6ZIptUTKh2jsYm3Y")]

[assembly: MetaData("com.google.android.gms.version", Value = "@integer/google_play_services_version")]
[assembly: UsesLibrary("org.apache.http.legacy", Required = false)]
