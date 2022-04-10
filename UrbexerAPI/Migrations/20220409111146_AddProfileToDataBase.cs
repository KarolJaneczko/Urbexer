using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class AddProfileToDataBase : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Profil",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UzytkownikIDId = table.Column<int>(type: "int", nullable: false),
                    Imie = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Nazwisko = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Opis = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LinkFacebook = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LinkInstagram = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LinkYouTube = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Profil", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Profil_Uzytkownik_UzytkownikIDId",
                        column: x => x.UzytkownikIDId,
                        principalTable: "Uzytkownik",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Profil_UzytkownikIDId",
                table: "Profil",
                column: "UzytkownikIDId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Profil");
        }
    }
}
