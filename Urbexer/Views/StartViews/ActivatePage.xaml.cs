using System;
using Urbexer.ViewModels;
using Xamarin.Forms;

namespace Urbexer.Views {
    public partial class ActivatePage : ContentPage {
        #region Konstruktory
        public ActivatePage() {
            var vm = new ActivatePageModel();
            BindingContext = vm;
            InitializeComponent();

            Email.Completed += (object sender, EventArgs e) => {
                Token.Focus();
            };
            Token.Completed += (object sender, EventArgs e) => {
                vm.SubmitCommand.Execute(null);
            };
        }
        #endregion

        #region Metody
        public void GoBack(object sender, EventArgs e) {
            Shell.Current.GoToAsync(nameof(RegisterPage));
        }
        protected override bool OnBackButtonPressed() {
            return true;
        }
        #endregion
    }
}