using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class migracja2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "CzyKontoAktywne",
                table: "Uzytkownicy",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "KodPotwierdzajacyRejestracje",
                table: "Uzytkownicy",
                type: "longtext",
                nullable: false)
                .Annotation("MySql:CharSet", "utf8mb4");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CzyKontoAktywne",
                table: "Uzytkownicy");

            migrationBuilder.DropColumn(
                name: "KodPotwierdzajacyRejestracje",
                table: "Uzytkownicy");
        }
    }
}
