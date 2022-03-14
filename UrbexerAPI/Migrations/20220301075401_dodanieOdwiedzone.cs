using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class dodanieOdwiedzone : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Miejsca_Uzytkownicy_UzytkownikId",
                table: "Miejsca");

            migrationBuilder.DropIndex(
                name: "IX_Miejsca_UzytkownikId",
                table: "Miejsca");

            migrationBuilder.DropColumn(
                name: "UzytkownikId",
                table: "Miejsca");

            migrationBuilder.CreateTable(
                name: "Odwiedzone",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    OdwiedzonePrzezId = table.Column<int>(type: "int", nullable: false),
                    OdwiedzonyUrbexId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Odwiedzone", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Odwiedzone_Miejsca_OdwiedzonyUrbexId",
                        column: x => x.OdwiedzonyUrbexId,
                        principalTable: "Miejsca",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Odwiedzone_Uzytkownicy_OdwiedzonePrzezId",
                        column: x => x.OdwiedzonePrzezId,
                        principalTable: "Uzytkownicy",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

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
                table: "Miejsca",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Miejsca_UzytkownikId",
                table: "Miejsca",
                column: "UzytkownikId");

            migrationBuilder.AddForeignKey(
                name: "FK_Miejsca_Uzytkownicy_UzytkownikId",
                table: "Miejsca",
                column: "UzytkownikId",
                principalTable: "Uzytkownicy",
                principalColumn: "Id");
        }
    }
}
