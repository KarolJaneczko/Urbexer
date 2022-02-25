using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using Xamarin.Forms;

namespace Urbexer
{
    internal class TriggerActions : TriggerAction<ImageButton>, INotifyPropertyChanged
    {

        public string ShowIcon { get; set; }  
        public string HideIcon { get; set; }
        bool _hidePassword = true;
        public bool HidePassword
        {
            get => _hidePassword;
            set
            {
                _hidePassword = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(HidePassword)));
            }
        }
    
        public event PropertyChangedEventHandler PropertyChanged;

        protected override void Invoke(ImageButton sender)
        {
            sender.Source = HidePassword ? ShowIcon : HideIcon;
            HidePassword = !HidePassword;
        }
    }
}
