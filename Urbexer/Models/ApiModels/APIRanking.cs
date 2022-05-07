#nullable enable

namespace Urbexer.Models.ApiModels {
    /// <summary>
    /// Model otrzymywany przez API, wykorzystywany przy wypełnianiu rankingu w zakładce LeaderboardPage.
    /// </summary>
    public class APIRanking {
        public string? login;
        public int? liczbaMiejsc;
        public int? layout;
    }
}