using System;

namespace Urbexer.Models {
    public class AppException : Exception {
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
                default:
                    break;
            }
            return string.Empty;
        }
        #endregion
    }
}