using System.ComponentModel;

namespace Urbexer.ViewModels {
    public class EditProfileViewModel : BaseViewModel {
        #region Zmienne
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        private string editDescription, editFirstName, editLastName, editFacebook, editYoutube, editInstagram;
        public string EditDescription {
            get { return editDescription; }
            set {
                editDescription = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileDescription"));
            }
        }
        public string EditFirstName {
            get { return editFirstName; }
            set {
                editFirstName = value;
                PropertyChanged(this, new PropertyChangedEventArgs("EditFirstName"));
            }
        }
        public string EditLastName {
            get { return editLastName; }
            set {
                editLastName = value;
                PropertyChanged(this, new PropertyChangedEventArgs("EditLastName"));
            }
        }
        public string EditFacebook {
            get { return editFacebook; }
            set {
                editFacebook = value;
                PropertyChanged(this, new PropertyChangedEventArgs("EditFacebook"));
            }
        }
        public string EditYoutube {
            get { return editYoutube; }
            set {
                editYoutube = value;
                PropertyChanged(this, new PropertyChangedEventArgs("EditYoutube"));
            }
        }
        public string EditInstagram {
            get { return editInstagram; }
            set {
                editInstagram = value;
                PropertyChanged(this, new PropertyChangedEventArgs("EditInstagram"));
            }
        }
        #endregion
        public EditProfileViewModel() {

        }
    }
}