using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views.LocationViews {
    [QueryProperty(nameof(LocationId), nameof(LocationId))]
    [QueryProperty(nameof(LocationName), nameof(LocationName))]
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class WriteReviewPage : ContentPage {
        public string LocationId { get; set; }
        public string LocationName { get; set; }
        public WriteReviewPage() {
            
            InitializeComponent();
        }
        protected override void OnAppearing() {
            BindingContext = this;
        }

        private void Button_Clicked(object sender, EventArgs e) {

        }
    }
}