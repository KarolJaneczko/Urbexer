using System;
#nullable enable

namespace Urbexer.Models.ApiModels {
    /// <summary>
    /// Klasa reprezentująca lokację pobraną z bazy.
    /// </summary>
    public class APILocation {
        public int id;
        public string nazwa = "";
        public string? adres;
        /// <summary>
        /// Opis jest wyświetlany na stronie <see cref="Views.LocationDetailsPage"/>
        /// </summary>
        public string opis = "";
        public int kategoriaId;
        public int wojewodztwoId;
        public float wspolrzedneLAT;
        public float wspolrzedneLNG;
        public APIPhoto[]? zdjecia;
    }
}
