using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class Odwiedzone : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Miejsce_Uzytkownik_UzytkownikId",
                table: "Miejsce");

            migrationBuilder.DropForeignKey(
                name: "FK_Zdjecie_Uzytkownik_UzytkownikId",
                table: "Zdjecie");

            migrationBuilder.DropIndex(
                name: "IX_Zdjecie_UzytkownikId",
                table: "Zdjecie");

            migrationBuilder.DropIndex(
                name: "IX_Miejsce_UzytkownikId",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "UzytkownikId",
                table: "Zdjecie");

            migrationBuilder.DropColumn(
                name: "UzytkownikId",
                table: "Miejsce");

            migrationBuilder.CreateTable(
                name: "Odwiedzone",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OdwiedzonePrzezId = table.Column<int>(type: "int", nullable: false),
                    OdwiedzonyUrbexId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Odwiedzone", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Odwiedzone_Miejsce_OdwiedzonyUrbexId",
                        column: x => x.OdwiedzonyUrbexId,
                        principalTable: "Miejsce",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Odwiedzone_Uzytkownik_OdwiedzonePrzezId",
                        column: x => x.OdwiedzonePrzezId,
                        principalTable: "Uzytkownik",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Odwiedzone_OdwiedzonePrzezId",
                table: "Odwiedzone",
                column: "OdwiedzonePrzezId");

            migrationBuilder.CreateIndex(
                name: "IX_Odwiedzone_OdwiedzonyUrbexId",
                table: "Odwiedzone",
                column: "OdwiedzonyUrbexId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Odwiedzone");

            migrationBuilder.AddColumn<int>(
                name: "UzytkownikId",
                table: "Zdjecie",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "UzytkownikId",
                table: "Miejsce",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Zdjecie_UzytkownikId",
                table: "Zdjecie",
                column: "UzytkownikId");

            migrationBuilder.CreateIndex(
                name: "IX_Miejsce_UzytkownikId",
                table: "Miejsce",
                column: "UzytkownikId");

            migrationBuilder.AddForeignKey(
                name: "FK_Miejsce_Uzytkownik_UzytkownikId",
                table: "Miejsce",
                column: "UzytkownikId",
                principalTable: "Uzytkownik",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Zdjecie_Uzytkownik_UzytkownikId",
                table: "Zdjecie",
                column: "UzytkownikId",
                principalTable: "Uzytkownik",
                principalColumn: "Id");
        }
    }
}
