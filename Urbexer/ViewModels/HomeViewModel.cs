using System;
using System.Threading.Tasks;
using System.Windows.Input;
using Urbexer.Models;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class HomeViewModel : BaseViewModel {

        public bool IsExpanded { get; set; }
        public HomeViewModel() {
        }
    }
}