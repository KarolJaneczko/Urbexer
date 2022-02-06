using System.ComponentModel;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class ItemDetailPage : ContentPage {
        public ItemDetailPage() {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}