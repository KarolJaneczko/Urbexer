using System;
using System.Text.RegularExpressions;

namespace Urbexer.Models {
    public class AppException : Exception {
        public string message;
        public string title;
        public AppExceptionTypeEnum type;
        public AppException() {
            this.message = "Wystąpił nieoczekiwany błąd.";
            this.type = AppExceptionTypeEnum.UnspecifiedError;
        }
        public AppException(string message, AppExceptionTypeEnum type) {
            this.message = message;
            this.type = type;
            this.title = SetTitle(type);
        }
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
            }
            return string.Empty;
        }
        public static bool CheckMail(string mail) {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,10})+)$");
            Match match = regex.Match(mail);
            if (match.Success)
                return true;
            else
                return false;
        }
        public static bool CheckSpecialChars(string word) {
            Regex regex = new Regex(@"^[A-Za-z0-9\d_]+$");
            Match match = regex.Match(word);
            if (match.Success)
                return true;
            else
                return false;
        }
    }
}