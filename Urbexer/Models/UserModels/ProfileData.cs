using System;

namespace Urbexer.Models.UserModels {
    public class ProfileData {
        public string Login { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Description { get; set; }
        public string FacebookLink { get; set; }
        public string InstagramLink { get; set; }
        public string YoutubeLink { get; set; }
        public int ProfileLayout { get; set; }
        public int LeaderboardPosition { get; set; }
        public int VisitedPlaces { get; set; }
    }
}