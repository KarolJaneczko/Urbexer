using System;

namespace Urbexer.Models {
    /// <summary>
    /// Enum wykorzystywany przy dostosowywaniu tytułu okna powiadomienia dla przechwyconego błędu z API.
    /// </summary>
    public enum OperationTypeEnum {
        Rejetracja = 1,
        Logowanie = 2,
        AktywacjaKonta = 3,
    }
}