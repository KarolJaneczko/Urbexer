using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;
using Urbexer.Models;
using Xamarin.Forms;
using System.ComponentModel;
using Urbexer.Views;

namespace Urbexer.ViewModels {

    public class SignInPageViewModel : BaseViewModel {

        public Action DisplayInvalidLoginPrompt;
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        private string email;
        private string password;
        public string Email
        {
            get { return email; }
            set
            {
                email = value;
                PropertyChanged(this, new PropertyChangedEventArgs("Email"));
            }
        }

        public string Password
        {
            get { return password; }
            set
            {
                password = value;
                PropertyChanged(this, new PropertyChangedEventArgs("Password"));
            }
        }
     
        
        public ICommand SubmitCommand { protected set; get; }
       
        public SignInPageViewModel()
        {
            SubmitCommand = new Command(OnSubmit);
         
        }
        
        public void OnSubmit()
        {
            if (email != "urbexer@gmail.com" || password != "tajne")
            {
                DisplayInvalidLoginPrompt();
            }

            else
            {
                Routing.RegisterRoute(nameof(HomePage), typeof(HomePage));
                Shell.Current.GoToAsync(nameof(HomePage));
            }
        }
  

    }
    
}
