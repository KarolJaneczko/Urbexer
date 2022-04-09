using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Services;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class LocationListViewModel : MapViewModel{
        public new AsyncCommand<Location> CardSelectedCommand { get; }
        public LocationListViewModel() : base(){

        }
        public ICommand LoadMoreCommand =>
            new Command(async => {
                var peepee = "poopoo";
            });
    }
}
