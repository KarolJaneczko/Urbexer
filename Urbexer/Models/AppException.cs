using System;

namespace Urbexer.Models {
    public class AppException : Exception {
        /// <summary>
        /// Klasa dziedzicząca po klasie <see cref="Exception"/>, wykorzystywana przy przechwytywaniu błędów w aplikacji.
        /// </summary>
        #region Zmienne
        public string message;
        public string title;
        public AppExceptionTypeEnum type;
        #endregion
        #region Konstruktory
        public AppException() {
            message = "Wystąpił nieoczekiwany błąd.";
            type = AppExceptionTypeEnum.UnspecifiedError;
        }
        public AppException(string _message, AppExceptionTypeEnum _type) {
            message = _message;
            type = _type;
            title = SetTitle(_type);
        }
        #endregion
        #region Metody
        /// <summary>
        /// Metoda określająca tytuł komunikatu po przyjmującym w parametrze (<see cref="AppExceptionTypeEnum"/>) typie błędu. 
        /// </summary>
        public string SetTitle(AppExceptionTypeEnum type) {
            switch (type) {
                case AppExceptionTypeEnum.UnspecifiedError:
                    return "Niezdefiniowany błąd.";
                case AppExceptionTypeEnum.EmptyField:
                    return "Błąd przy wprowadzaniu danych.";
                case AppExceptionTypeEnum.InvalidMinCredLength:
                    return "Nieprawidłowa długość wprowadzonych danych.";
                case AppExceptionTypeEnum.InvalidMaxCredLength:
                    return "Nieprawidłowa długość wprowadzonych danych.";
                case AppExceptionTypeEnum.InvalidMailFormat:
                    return "Nieprawidłowy format danych.";
                case AppExceptionTypeEnum.LoginError:
                    return "Logowanie się nie powiodło.";
                case AppExceptionTypeEnum.InvalidLoginFormat:
                    return "Nieprawidłowy format danych.";
                case AppExceptionTypeEnum.StringsDontMatch:
                    return "Wprowadzone dane się nie zgadzają.";
                case AppExceptionTypeEnum.RegistrationError:
                    return "Rejestracja się nie powiodła.";
                case AppExceptionTypeEnum.InvalidLength:
                    return "Nieodpowiednia ilość znaków.";
                case AppExceptionTypeEnum.InvalidDataFormat:
                    return "Nieprawidłowy format danych.";
                case AppExceptionTypeEnum.ActivateAccountError:
                    return "Bład przy aktywacji konta.";
                default:
                    break;
            }
            return string.Empty;
        }
        #endregion
    }
}