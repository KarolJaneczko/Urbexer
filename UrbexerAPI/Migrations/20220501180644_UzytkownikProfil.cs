using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class UzytkownikProfil : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_Profil",
                table: "Profil");

            migrationBuilder.DropIndex(
                name: "IX_Profil_UzytkownikId",
                table: "Profil");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "Profil");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Profil",
                table: "Profil",
                column: "UzytkownikId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_Profil",
                table: "Profil");

            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "Profil",
                type: "int",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Profil",
                table: "Profil",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_Profil_UzytkownikId",
                table: "Profil",
                column: "UzytkownikId");
        }
    }
}
