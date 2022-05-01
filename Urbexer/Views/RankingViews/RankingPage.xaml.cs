﻿using Urbexer.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Urbexer.Views {
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RankingPage : ContentPage {
        public RankingPage() {
            InitializeComponent();
            BindingContext = new RankingViewModel();
            Routing.RegisterRoute(nameof(LeaderboardPage), typeof(LeaderboardPage));
        }
    }
}