using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace APIpz.Migrations
{
    public partial class migracja29032022 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Opinia_Miejsce_MiejsceId",
                table: "Opinia");

            migrationBuilder.DropForeignKey(
                name: "FK_Opinia_Uzytkownik_UzytkownikId",
                table: "Opinia");

            migrationBuilder.DropIndex(
                name: "IX_Opinia_MiejsceId",
                table: "Opinia");

            migrationBuilder.DropColumn(
                name: "MiejsceId",
                table: "Opinia");

            migrationBuilder.RenameColumn(
                name: "UzytkownikId",
                table: "Opinia",
                newName: "OdwiedzonyId");

            migrationBuilder.RenameIndex(
                name: "IX_Opinia_UzytkownikId",
                table: "Opinia",
                newName: "IX_Opinia_OdwiedzonyId");

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

            migrationBuilder.RenameColumn(
                name: "OdwiedzonyId",
                table: "Opinia",
                newName: "UzytkownikId");

            migrationBuilder.RenameIndex(
                name: "IX_Opinia_OdwiedzonyId",
                table: "Opinia",
                newName: "IX_Opinia_UzytkownikId");

            migrationBuilder.AddColumn<int>(
                name: "MiejsceId",
                table: "Opinia",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Opinia_MiejsceId",
                table: "Opinia",
                column: "MiejsceId");

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
        }
    }
}
