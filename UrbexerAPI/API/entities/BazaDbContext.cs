using Microsoft.EntityFrameworkCore;

namespace APIpz.entities
{
    public class BazaDbContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var serverVersion = new MariaDbServerVersion(new Version(10, 6));
            optionsBuilder.UseMySql("server=localhost;port=3306;database=Urbex;user=root;password=urbex", serverVersion);
        }

        public DbSet<Uzytkownik> Uzytkownik { get; set; }
        public DbSet<Miejsce> Miejsce { get; set; }
        public DbSet<Opinia> Opinia { get; set; }
        public DbSet<Zdjecie> Zdjecie { get; set; }
        public DbSet<Ranking> Ranking { get; set; }
        public DbSet<Ranking_slownik> Ranking_slownik { get; set; }
        public DbSet<Miejsce_kategoria> Miejsce_kategoria { get; set; }
    }
    //protected override void OnModelCreating(ModelBuilder modelbuilder)
    //{
       
    //}
}
