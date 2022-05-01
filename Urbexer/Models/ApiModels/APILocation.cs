using System;
#nullable enable

namespace Urbexer.Models.ApiModels {
    public class APILocation {
        public int id;
        public string nazwa = "";
        public string? adres;
        public string opis = "";
        public int kategoriaId;
        public int wojewodztwoId;
        public float wspolrzedneLAT;
        public float wspolrzedneLNG;
        public string? zdjecie;
        public int? trudnosc;
        public int? doswiadczenie;
        public string? link;
    }
}
