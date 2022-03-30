using Microsoft.EntityFrameworkCore;

namespace APIpz.Entities
{
    public class BazaDbContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //var serverVersion = new MariaDbServerVersion(new Version(10, 6));
            //optionsBuilder.UseMySql("server=localhost;port=3306;database=Urbex;user=root;password=urbex", serverVersion);
            optionsBuilder.UseSqlServer("Server=tcp:urbexdbserver.database.windows.net,1433;Initial Catalog=UrbexDB;Persist Security Info=False;User ID=urbexadmin;Password=Zespol0wka!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        }

        public DbSet<Uzytkownik> Uzytkownik { get; set; }
        public DbSet<Miejsce> Miejsce { get; set; }
        public DbSet<Opinia> Opinia { get; set; }
        public DbSet<Zdjecie> Zdjecie { get; set; }
        public DbSet<Ranking> Ranking { get; set; }
        public DbSet<Ranking_slownik> Ranking_slownik { get; set; }
        public DbSet<Miejsce_kategoria> Miejsce_kategoria { get; set; }
        public DbSet<Odwiedzony> Odwiedzone { get; set; }
    }
    //protected override void OnModelCreating(ModelBuilder modelbuilder)
    //{
       
    //}
}
