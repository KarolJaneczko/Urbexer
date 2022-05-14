using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace Urbexer.ViewModels {
    /// <summary>
    /// Klasa reprezentująca bazowy model po którym dziedziczą inne modele.
    /// </summary>
    public class BaseViewModel : INotifyPropertyChanged {
        public event PropertyChangedEventHandler PropertyChanged;
        /// <summary>
        /// Odświeża binding danej zmniennej, aktualizując xamla. <para/>
        /// Zazwyczaj wywoływany w setterze z nazwą ustawianej zmiennej jako parametr.
        /// </summary>
        /// <param name="propertyName">Nazwa aktualizowanej zmiennej.</param> 
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null) {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
