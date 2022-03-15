using System;

namespace Urbexer.Models {
    public class AppException : Exception {
        public string message;
        public AppExceptionTypeEnum type;
        public AppException() {
            this.message = "Wystąpił nieoczekiwany błąd.";
            this.type = AppExceptionTypeEnum.UnspecifiedError;
        }
        public AppException(string message, AppExceptionTypeEnum type) {
            this.message = message;
            this.type = type;
        }
    }
}