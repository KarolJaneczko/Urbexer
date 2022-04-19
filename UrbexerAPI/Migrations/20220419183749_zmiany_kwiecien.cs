using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class zmiany_kwiecien : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Miejsce_Uzytkownik_UzytkownikId",
                table: "Miejsce");

            migrationBuilder.DropForeignKey(
                name: "FK_Opinia_Miejsce_MiejsceId",
                table: "Opinia");

            migrationBuilder.DropForeignKey(
                name: "FK_Opinia_Uzytkownik_UzytkownikId",
                table: "Opinia");

            migrationBuilder.DropForeignKey(
                name: "FK_Zdjecie_Uzytkownik_UzytkownikId",
                table: "Zdjecie");

            migrationBuilder.DropIndex(
                name: "IX_Zdjecie_UzytkownikId",
                table: "Zdjecie");

            migrationBuilder.DropIndex(
                name: "IX_Opinia_MiejsceId",
                table: "Opinia");

            migrationBuilder.DropIndex(
                name: "IX_Miejsce_UzytkownikId",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "UzytkownikId",
                table: "Zdjecie");

            migrationBuilder.DropColumn(
                name: "MiejsceId",
                table: "Opinia");

            migrationBuilder.DropColumn(
                name: "UzytkownikId",
                table: "Miejsce");

            migrationBuilder.RenameColumn(
                name: "UzytkownikId",
                table: "Opinia",
                newName: "OdwiedzonyId");

            migrationBuilder.RenameIndex(
                name: "IX_Opinia_UzytkownikId",
                table: "Opinia",
                newName: "IX_Opinia_OdwiedzonyId");

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

            migrationBuilder.CreateTable(
                name: "Profil",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UzytkownikId = table.Column<int>(type: "int", nullable: false),
                    Imie = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Nazwisko = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Opis = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LinkFacebook = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LinkInstagram = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LinkYouTube = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Layout = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Profil", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Profil_Uzytkownik_UzytkownikId",
                        column: x => x.UzytkownikId,
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

            migrationBuilder.CreateIndex(
                name: "IX_Profil_UzytkownikId",
                table: "Profil",
                column: "UzytkownikId");

            migrationBuilder.AddForeignKey(
                name: "FK_Opinia_Odwiedzone_OdwiedzonyId",
                table: "Opinia",
                column: "OdwiedzonyId",
                principalTable: "Odwiedzone",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Opinia_Odwiedzone_OdwiedzonyId",
                table: "Opinia");

            migrationBuilder.DropTable(
                name: "Odwiedzone");

            migrationBuilder.DropTable(
                name: "Profil");

            migrationBuilder.RenameColumn(
                name: "OdwiedzonyId",
                table: "Opinia",
                newName: "UzytkownikId");

            migrationBuilder.RenameIndex(
                name: "IX_Opinia_OdwiedzonyId",
                table: "Opinia",
                newName: "IX_Opinia_UzytkownikId");

            migrationBuilder.AddColumn<int>(
                name: "UzytkownikId",
                table: "Zdjecie",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "MiejsceId",
                table: "Opinia",
                type: "int",
                nullable: false,
                defaultValue: 0);

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
                name: "IX_Opinia_MiejsceId",
                table: "Opinia",
                column: "MiejsceId");

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
                name: "FK_Opinia_Miejsce_MiejsceId",
                table: "Opinia",
                column: "MiejsceId",
                principalTable: "Miejsce",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Opinia_Uzytkownik_UzytkownikId",
                table: "Opinia",
                column: "UzytkownikId",
                principalTable: "Uzytkownik",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Zdjecie_Uzytkownik_UzytkownikId",
                table: "Zdjecie",
                column: "UzytkownikId",
                principalTable: "Uzytkownik",
                principalColumn: "Id");
        }
    }
}
