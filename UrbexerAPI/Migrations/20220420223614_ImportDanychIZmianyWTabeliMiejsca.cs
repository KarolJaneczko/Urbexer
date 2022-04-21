using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class ImportDanychIZmianyWTabeliMiejsca : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "DataDodania",
                table: "Miejsce",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Miasto",
                table: "Miejsce",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Opis",
                table: "Miejsce",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "WojewodztwoId",
                table: "Miejsce",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "Miejsce_wojewodztwa",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nazwa = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Miejsce_wojewodztwa", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Miejsce_WojewodztwoId",
                table: "Miejsce",
                column: "WojewodztwoId");

            migrationBuilder.AddForeignKey(
                name: "FK_Miejsce_Miejsce_wojewodztwa_WojewodztwoId",
                table: "Miejsce",
                column: "WojewodztwoId",
                principalTable: "Miejsce_wojewodztwa",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Miejsce_Miejsce_wojewodztwa_WojewodztwoId",
                table: "Miejsce");

            migrationBuilder.DropTable(
                name: "Miejsce_wojewodztwa");

            migrationBuilder.DropIndex(
                name: "IX_Miejsce_WojewodztwoId",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "DataDodania",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "Miasto",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "Opis",
                table: "Miejsce");

            migrationBuilder.DropColumn(
                name: "WojewodztwoId",
                table: "Miejsce");
        }
    }
}
