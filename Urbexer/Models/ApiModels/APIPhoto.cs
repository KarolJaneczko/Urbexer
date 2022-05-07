namespace Urbexer.Models.ApiModels {
    /// <summary>
    /// Zdjęcie pobrane z bazy <para/>
    /// Ze strony front-endu wykorzystywany jest tylko <see cref="link"/>
    /// </summary>
    public class APIPhoto {
        public int id;
        public string miejsce;
        public int numerKolejny;
        public string rozmiar;
        public int wysokosc;
        public int szerokosc;
        /// <summary>
        /// Link html wskazujący na dane zdjęcie.
        /// </summary>
        public string link;
    }
}
