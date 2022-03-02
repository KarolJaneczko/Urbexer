using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class migracjaPoPoprawkach1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Miejsca_Uzytkownicy_UzytkownikId",
                table: "Miejsca");

            migrationBuilder.DropForeignKey(
                name: "FK_Zdjecia_Uzytkownicy_UzytkownikId",
                table: "Zdjecia");

            migrationBuilder.DropTable(
                name: "Opisy");

            migrationBuilder.DropTable(
                name: "Wyprawy");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Zdjecia",
                table: "Zdjecia");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Uzytkownicy",
                table: "Uzytkownicy");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Miejsca",
                table: "Miejsca");

            migrationBuilder.DropColumn(
                name: "Wojewodztwo",
                table: "Miejsca");

            migrationBuilder.DropColumn(
                name: "Wspolrzedne",
                table: "Miejsca");

            migrationBuilder.RenameTable(
                name: "Zdjecia",
                newName: "Zdjecie");

            migrationBuilder.RenameTable(
                name: "Uzytkownicy",
                newName: "Uzytkownik");

            migrationBuilder.RenameTable(
                name: "Miejsca",
                newName: "Miejsce");

            migrationBuilder.RenameIndex(
                name: "IX_Zdjecia_UzytkownikId",
                table: "Zdjecie",
                newName: "IX_Zdjecie_UzytkownikId");

            migrationBuilder.RenameIndex(
                name: "IX_Miejsca_UzytkownikId",
                table: "Miejsce",
                newName: "IX_Miejsce_UzytkownikId");

            migrationBuilder.AlterColumn<byte[]>(
                name: "Obraz",
                table: "Zdjecie",
                type: "longblob",
                nullable: true,
                oldClrType: typeof(byte[]),
                oldType: "longblob");

            migrationBuilder.AddColumn<string>(
                name: "Link",
                table: "Zdjecie",
                type: "longtext",
                nullable: false)
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<string>(
                name: "Adres",
                table: "Miejsce",
                type: "longtext",
                nullable: true)
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<string>(
                name: "Miejsce_KategoriaId",
                table: "Miejsce",
                type: "varchar(255)",
                nullable: true)
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<float>(
                name: "WspolrzedneLAT",
                table: "Miejsce",
                type: "float",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.AddColumn<float>(
                name: "WspolrzedneLNG",
                table: "Miejsce",
                type: "float",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.AddColumn<int>(
                name: "ZdjecieId",
                table: "Miejsce",
                type: "int",
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_Zdjecie",
                table: "Zdjecie",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Uzytkownik",
                table: "Uzytkownik",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Miejsce",
                table: "Miejsce",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "Miejsce_kategoria",
                columns: table => new
                {
                    Id = table.Column<string>(type: "varchar(255)", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Nazwa = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Miejsce_kategoria", x => x.Id);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "Opinia",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    UzytkownikId = table.Column<int>(type: "int", nullable: false),
                    MiejsceId = table.Column<int>(type: "int", nullable: false),
                    Ocena = table.Column<int>(type: "int", nullable: false),
                    Tekst = table.Column<string>(type: "longtext", nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4")
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
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "Ranking",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Ranking", x => x.Id);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "Ranking_slownik",
                columns: table => new
                {
                    Id = table.Column<string>(type: "varchar(255)", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Nazwa = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Ranking_slownik", x => x.Id);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_Miejsce_Miejsce_KategoriaId",
                table: "Miejsce",
                column: "Miejsce_KategoriaId");

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

            migrationBuilder.AddForeignKey(
                name: "FK_Miejsce_Miejsce_kategoria_Miejsce_KategoriaId",
                table: "Miejsce",
                column: "Miejsce_KategoriaId",
                principalTable: "Miejsce_kategoria",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Miejsce_Uzytkownik_UzytkownikId",
                table: "Miejsce",
                column: "UzytkownikId",
                principalTable: "Uzytkownik",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Miejsce_Zdjecie_ZdjecieId",
                table: "Miejsce",
                column: "ZdjecieId",
                principalTable: "Zdjecie",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Zdjecie_Uzytkownik_UzytkownikId",
                table: "Zdjecie",
                column: "UzytkownikId",
                principalTable: "Uzytkownik",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Miejsce_Miejsce_kategoria_Miejsce_KategoriaId",
                table: "Miejsce");

            migrationBuilder.DropForeignKey(
                name: "FK_Miejsce_Uzytkownik_UzytkownikId",
                table: "Miejsce");

            migrationBuilder.DropForeignKey(
                name: "FK_Miejsce_Zdjecie_ZdjecieId",
                table: "Miejsce");

            migrationBuilder.DropForeignKey(
                name: "FK_Zdjecie_Uzytkownik_UzytkownikId",
                table: "Zdjecie");

            migrationBuilder.DropTable(
                name: "Miejsce_kategoria");

            migrationBuilder.DropTable(
                name: "Opinia");

            migrationBuilder.DropTable(
                name: "Ranking");

            migrationBuilder.DropTable(
                name: "Ranking_slownik");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Zdjecie",
                table: "Zdjecie");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Uzytkownik",
                table: "Uzytkownik");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Miejsce",
                table: "Miejsce");

            migrationBuilder.DropIndex(
                name: "IX_Miejsce_Miejsce_KategoriaId",
                table: "Miejsce");

            migrationBuilder.DropIndex(
                name: "IX_Miejsce_ZdjecieId",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "Link",
                table: "Zdjecie");

            migrationBuilder.DropColumn(
                name: "Adres",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "Miejsce_KategoriaId",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "WspolrzedneLAT",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "WspolrzedneLNG",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "ZdjecieId",
                table: "Miejsce");

            migrationBuilder.RenameTable(
                name: "Zdjecie",
                newName: "Zdjecia");

            migrationBuilder.RenameTable(
                name: "Uzytkownik",
                newName: "Uzytkownicy");

            migrationBuilder.RenameTable(
                name: "Miejsce",
                newName: "Miejsca");

            migrationBuilder.RenameIndex(
                name: "IX_Zdjecie_UzytkownikId",
                table: "Zdjecia",
                newName: "IX_Zdjecia_UzytkownikId");

            migrationBuilder.RenameIndex(
                name: "IX_Miejsce_UzytkownikId",
                table: "Miejsca",
                newName: "IX_Miejsca_UzytkownikId");

            migrationBuilder.AlterColumn<byte[]>(
                name: "Obraz",
                table: "Zdjecia",
                type: "longblob",
                nullable: false,
                defaultValue: new byte[0],
                oldClrType: typeof(byte[]),
                oldType: "longblob",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Wojewodztwo",
                table: "Miejsca",
                type: "longtext",
                nullable: false)
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.AddColumn<float>(
                name: "Wspolrzedne",
                table: "Miejsca",
                type: "float",
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_Zdjecia",
                table: "Zdjecia",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Uzytkownicy",
                table: "Uzytkownicy",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Miejsca",
                table: "Miejsca",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "Opisy",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    MiejsceId = table.Column<int>(type: "int", nullable: false),
                    Tekst = table.Column<string>(type: "longtext", nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    UzytkownikId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Opisy", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Opisy_Miejsca_MiejsceId",
                        column: x => x.MiejsceId,
                        principalTable: "Miejsca",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Opisy_Uzytkownicy_UzytkownikId",
                        column: x => x.UzytkownikId,
                        principalTable: "Uzytkownicy",
                        principalColumn: "Id");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "Wyprawy",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    MiejsceId = table.Column<int>(type: "int", nullable: false),
                    Kiedy = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    UzytkownikId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Wyprawy", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Wyprawy_Miejsca_MiejsceId",
                        column: x => x.MiejsceId,
                        principalTable: "Miejsca",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Wyprawy_Uzytkownicy_UzytkownikId",
                        column: x => x.UzytkownikId,
                        principalTable: "Uzytkownicy",
                        principalColumn: "Id");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_Opisy_MiejsceId",
                table: "Opisy",
                column: "MiejsceId");

            migrationBuilder.CreateIndex(
                name: "IX_Opisy_UzytkownikId",
                table: "Opisy",
                column: "UzytkownikId");

            migrationBuilder.CreateIndex(
                name: "IX_Wyprawy_MiejsceId",
                table: "Wyprawy",
                column: "MiejsceId");

            migrationBuilder.CreateIndex(
                name: "IX_Wyprawy_UzytkownikId",
                table: "Wyprawy",
                column: "UzytkownikId");

            migrationBuilder.AddForeignKey(
                name: "FK_Miejsca_Uzytkownicy_UzytkownikId",
                table: "Miejsca",
                column: "UzytkownikId",
                principalTable: "Uzytkownicy",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Zdjecia_Uzytkownicy_UzytkownikId",
                table: "Zdjecia",
                column: "UzytkownikId",
                principalTable: "Uzytkownicy",
                principalColumn: "Id");
        }
    }
}
