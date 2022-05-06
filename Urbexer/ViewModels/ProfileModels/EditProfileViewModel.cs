using System;
using System.ComponentModel;
using System.Windows.Input;
using Urbexer.Models;
using Urbexer.Models.UserModels;
using Xamarin.Forms;

namespace Urbexer.ViewModels {
    public class EditProfileViewModel : BaseViewModel {
        #region Zmienne
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        private static string editDescription, editFirstName, editLastName, editFacebook, editYoutube, editInstagram, editLayout, profileAvatarSource;
        public string EditDescription {
            get { return editDescription; }
            set {
                editDescription = value;
                PropertyChanged(this, new PropertyChangedEventArgs("EditDescription"));
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
        public string EditLayout {
            get { return editLayout; }
            set {
                editLayout = value;
                profileAvatarSource = RankingProfileViewModel.GetAvatarByLayout(ProfileData.GetLayoutNumberFromName(editLayout));
                PropertyChanged(this, new PropertyChangedEventArgs("EditLayout"));
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileAvatarSource"));
            }
        }
        public string ProfileAvatarSource {
            get { return profileAvatarSource; }
            set {
                profileAvatarSource = value;
                PropertyChanged(this, new PropertyChangedEventArgs("ProfileAvatarSource"));
            }
        }
        public ICommand SubmitEdit { protected set; get; }
        #endregion
        #region Konstruktory
        public EditProfileViewModel() {
            SubmitEdit = new Command(OnSubmit);
        }
        #endregion
        #region Metody
        public async void OnSubmit() {
            try {
                ValidateLength(EditFirstName, "Imię", "e", 20);
                ValidateLength(EditLastName, "Nazwisko", "e", 20);
                ValidateLength(EditDescription, "Opis", "y", 255);
                ValidateLink("facebook", EditFacebook);
                ValidateLink("youtube", EditYoutube);
                ValidateLink("instagram", EditInstagram);
                var layout = ProfileData.GetLayoutNumberFromName(EditLayout);
                if (await connectionService.UpdateProfile(new Models.ApiModels.APIEdytujProfil(UserInfo.Login, EditFirstName,
                    EditLastName, EditDescription, EditFacebook, EditInstagram, EditYoutube, layout), httpClient)) {
                    await ProfileViewModel.RefreshProfile();
                    await Shell.Current.GoToAsync("..");
                }
                else {
                    DisplayError("Błąd aktualizacji profilu", "Wystąpił błąd podczas połączenia z serwerem.");
                }
            }
            catch (AppException exception) {
                DisplayError(exception.title, exception.message);
            }
            catch (Exception exception) {
                DisplayError("Wystąpił nieoczekiwany błąd.", exception.Message.ToString());
            }
        }
        public static void FillEdit(ProfileData myProfile) {
            editDescription = myProfile.Description;
            editFirstName = myProfile.FirstName;
            editLastName = myProfile.LastName;
            editFacebook = myProfile.FacebookLink;
            editYoutube = myProfile.YoutubeLink;
            editInstagram = myProfile.InstagramLink;
            editLayout = ProfileData.GetLayoutNameFromNumber(myProfile.ProfileLayout);
            profileAvatarSource = RankingProfileViewModel.GetAvatarByLayout(myProfile.ProfileLayout);
        }
        #endregion
    }
}