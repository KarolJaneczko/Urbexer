using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views.LocationViews {
    [QueryProperty(nameof(LocationId), nameof(LocationId))]
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class WriteReviewPage : ContentPage {
        public string LocationId { get; set; }
        public WriteReviewPage() {
            
            InitializeComponent();
        }
        protected override void OnAppearing() {
            BindingContext = this;
        }
    }
}