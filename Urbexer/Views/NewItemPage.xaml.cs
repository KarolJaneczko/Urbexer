using System;
using System.Collections.Generic;
using System.ComponentModel;
using Urbexer.Models;
using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    public partial class NewItemPage : ContentPage {
        public Item Item { get; set; }
        public NewItemPage() {
            InitializeComponent();
            BindingContext = new NewItemViewModel();
        }
    }
}