using System;
#nullable enable

namespace Urbexer.Models.ApiModels {
    public class APICzyjesOdwiedzone {
        public string? nazwa;
        public string? miejsce_Kategoria;
        public string? adres;
        public APICzyjesOdwiedzone(string? Nazwa, string? Miejsce_Kategoria, string? Adres) {
            nazwa = Nazwa;
            miejsce_Kategoria = Miejsce_Kategoria;
            adres = Adres;
        }
    }
}
