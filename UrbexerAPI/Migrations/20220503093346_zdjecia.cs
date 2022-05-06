using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class zdjecia : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Miejsce_Zdjecie_ZdjecieId",
                table: "Miejsce");

            migrationBuilder.DropIndex(
                name: "IX_Miejsce_ZdjecieId",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "Obraz",
                table: "Zdjecie");

            migrationBuilder.DropColumn(
                name: "Doswiadczenie",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "Link",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "Trudnosc",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "ZdjecieId",
                table: "Miejsce");

            migrationBuilder.AddColumn<int>(
                name: "MiejsceId",
                table: "Zdjecie",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "NumerKolejny",
                table: "Zdjecie",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Rozmiar",
                table: "Zdjecie",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Szerokosc",
                table: "Zdjecie",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Wysokosc",
                table: "Zdjecie",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Zdjecie_MiejsceId",
                table: "Zdjecie",
                column: "MiejsceId");

            migrationBuilder.AddForeignKey(
                name: "FK_Zdjecie_Miejsce_MiejsceId",
                table: "Zdjecie",
                column: "MiejsceId",
                principalTable: "Miejsce",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Zdjecie_Miejsce_MiejsceId",
                table: "Zdjecie");

            migrationBuilder.DropIndex(
                name: "IX_Zdjecie_MiejsceId",
                table: "Zdjecie");

            migrationBuilder.DropColumn(
                name: "MiejsceId",
                table: "Zdjecie");

            migrationBuilder.DropColumn(
                name: "NumerKolejny",
                table: "Zdjecie");

            migrationBuilder.DropColumn(
                name: "Rozmiar",
                table: "Zdjecie");

            migrationBuilder.DropColumn(
                name: "Szerokosc",
                table: "Zdjecie");

            migrationBuilder.DropColumn(
                name: "Wysokosc",
                table: "Zdjecie");

            migrationBuilder.AddColumn<byte[]>(
                name: "Obraz",
                table: "Zdjecie",
                type: "varbinary(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Doswiadczenie",
                table: "Miejsce",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Link",
                table: "Miejsce",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Trudnosc",
                table: "Miejsce",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "ZdjecieId",
                table: "Miejsce",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Miejsce_ZdjecieId",
                table: "Miejsce",
                column: "ZdjecieId");

            migrationBuilder.AddForeignKey(
                name: "FK_Miejsce_Zdjecie_ZdjecieId",
                table: "Miejsce",
                column: "ZdjecieId",
                principalTable: "Zdjecie",
                principalColumn: "Id");
        }
    }
}
