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
            Routing.RegisterRoute(nameof(EditProfilePage), typeof(EditProfilePage));
            this.BindingContext = new ProfileViewModel();
        }

        public void GoEditProfile(object sender, System.EventArgs e)
        {
            Shell.Current.GoToAsync(nameof(EditProfilePage));
        }
        
    }
       
}
   

