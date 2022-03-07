using Microsoft.EntityFrameworkCore;

namespace APIpz.entities
{
    public class BazaDbContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var serverVersion = new MariaDbServerVersion(new Version(10, 6));
            optionsBuilder.UseMySql("server=localhost;port=3306;database=Unnamed;user=root;password=urbex", serverVersion);
        }

        public DbSet<Uzytkownik> Uzytkownicy { get; set; }
        public DbSet<Miejsce> Miejsca { get; set; }
        public DbSet<Opis> Opisy { get; set; }
        public DbSet<Wyprawa> Wyprawy { get; set; }
        public DbSet<Zdjecie> Zdjecia { get; set; }
        public DbSet<Odwiedzony> Odwiedzone { get; set; }
    }
    //protected override void OnModelCreating(ModelBuilder modelbuilder)
    //{
       
    //}
}
