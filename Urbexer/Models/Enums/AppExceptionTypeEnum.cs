namespace Urbexer.Models {
    public enum AppExceptionTypeEnum {
        UnspecifiedError = 0,
        EmptyField = 1,
        InvalidMinCredLength = 2,
        InvalidMaxCredLength = 3,
        InvalidMailFormat = 4,
        LoginError = 5,
        InvalidLoginFormat = 6,
        StringsDontMatch = 7,
        RegistrationError = 8,
        InvalidLength = 9,
        InvalidDataFormat = 10,
        ActivateAccountError = 11
    }
}