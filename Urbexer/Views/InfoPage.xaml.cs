using System;
using System.ComponentModel;
using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    public partial class InfoPage : ContentPage {
        public InfoPage() {
            InitializeComponent();
            this.BindingContext = new HomeViewModel();
        }
    }
}