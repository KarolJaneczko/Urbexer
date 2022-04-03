using System;
using System.Collections.Generic;
using System.ComponentModel;
using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    public partial class ProfilePage : ContentPage
    {


        public ProfilePage()
        {
            InitializeComponent();
            this.BindingContext = new ProfileViewModel();
        }

        private void Button_Clicked(object sender, EventArgs e)
        {

        }
    }
       
}
   

