#nullable enable

namespace Urbexer.Models.ApiModels {
    /// <summary>
    /// Lokacja pobrana z bazy.
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
        /// <summary>
        /// Szerokość geograficzna.
        /// </summary>
        public float wspolrzedneLAT;
        /// <summary>
        /// Długość geograficzna.
        /// </summary>
        public float wspolrzedneLNG;
        public APIPhoto[]? zdjecia;
        /// <summary>
        /// True, jeśli użytkownik podany w headerze odwiedził tą lokacje.
        /// </summary>
        public bool czyOdwiedzone;
    }
}
