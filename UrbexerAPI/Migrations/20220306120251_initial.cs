using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Miejsce_kategoria",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nazwa = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Miejsce_kategoria", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Ranking_slownik",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nazwa = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Ranking_slownik", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Uzytkownik",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Login = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    HasloHash = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CzyAdmin = table.Column<bool>(type: "bit", nullable: false),
                    CzyKontoAktywne = table.Column<bool>(type: "bit", nullable: false),
                    KodPotwierdzajacyRejestracje = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Uzytkownik", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Zdjecie",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Link = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Obraz = table.Column<byte[]>(type: "varbinary(max)", nullable: true),
                    UzytkownikId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Zdjecie", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Zdjecie_Uzytkownik_UzytkownikId",
                        column: x => x.UzytkownikId,
                        principalTable: "Uzytkownik",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Miejsce",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nazwa = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Miejsce_KategoriaId = table.Column<int>(type: "int", nullable: false),
                    Adres = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    WspolrzedneLAT = table.Column<float>(type: "real", nullable: false),
                    WspolrzedneLNG = table.Column<float>(type: "real", nullable: false),
                    ZdjecieId = table.Column<int>(type: "int", nullable: true),
                    Trudnosc = table.Column<int>(type: "int", nullable: true),
                    Doswiadczenie = table.Column<int>(type: "int", nullable: true),
                    Link = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UzytkownikId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Miejsce", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Miejsce_Miejsce_kategoria_Miejsce_KategoriaId",
                        column: x => x.Miejsce_KategoriaId,
                        principalTable: "Miejsce_kategoria",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Miejsce_Uzytkownik_UzytkownikId",
                        column: x => x.UzytkownikId,
                        principalTable: "Uzytkownik",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_Miejsce_Zdjecie_ZdjecieId",
                        column: x => x.ZdjecieId,
                        principalTable: "Zdjecie",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Opinia",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UzytkownikId = table.Column<int>(type: "int", nullable: false),
                    MiejsceId = table.Column<int>(type: "int", nullable: false),
                    Ocena = table.Column<int>(type: "int", nullable: false),
                    Tekst = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Opinia", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Opinia_Miejsce_MiejsceId",
                        column: x => x.MiejsceId,
                        principalTable: "Miejsce",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Opinia_Uzytkownik_UzytkownikId",
                        column: x => x.UzytkownikId,
                        principalTable: "Uzytkownik",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Miejsce_Miejsce_KategoriaId",
                table: "Miejsce",
                column: "Miejsce_KategoriaId");

            migrationBuilder.CreateIndex(
                name: "IX_Miejsce_UzytkownikId",
                table: "Miejsce",
                column: "UzytkownikId");

            migrationBuilder.CreateIndex(
                name: "IX_Miejsce_ZdjecieId",
                table: "Miejsce",
                column: "ZdjecieId");

            migrationBuilder.CreateIndex(
                name: "IX_Opinia_MiejsceId",
                table: "Opinia",
                column: "MiejsceId");

            migrationBuilder.CreateIndex(
                name: "IX_Opinia_UzytkownikId",
                table: "Opinia",
                column: "UzytkownikId");

            migrationBuilder.CreateIndex(
                name: "IX_Zdjecie_UzytkownikId",
                table: "Zdjecie",
                column: "UzytkownikId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Opinia");

            migrationBuilder.DropTable(
                name: "Ranking_slownik");

            migrationBuilder.DropTable(
                name: "Miejsce");

            migrationBuilder.DropTable(
                name: "Miejsce_kategoria");

            migrationBuilder.DropTable(
                name: "Zdjecie");

            migrationBuilder.DropTable(
                name: "Uzytkownik");
        }
    }
}
