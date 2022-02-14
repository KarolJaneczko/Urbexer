﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Urbexer.Models;
using Urbexer.Services;
using Xamarin.Forms;

namespace Urbexer.ViewModels {

    public class BaseViewModel : INotifyPropertyChanged {

        public IDataStore<Item> DataStore => DependencyService.Get<IDataStore<Item>>();
        bool isBusy = false;
        string title = string.Empty;

        public bool IsBusy {
            get { return isBusy; }
            set { SetProperty(ref isBusy, value); }
        }

        public string Title {
            get { return title; }
            set { SetProperty(ref title, value); }
        }

        protected bool SetProperty<T>(ref T backingStore, T value, [CallerMemberName] string propertyName = "", Action onChanged = null) {
            if (EqualityComparer<T>.Default.Equals(backingStore, value))
                return false;
            backingStore = value;
            onChanged?.Invoke();
            OnPropertyChanged(propertyName);
            return true;
        }
        #region INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = "")
        {
            var changed = PropertyChanged;
            if (changed == null)
                return;

            changed.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion
    }
}
