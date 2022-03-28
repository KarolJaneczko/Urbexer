﻿// <auto-generated />
using System;
using APIpz.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace APIpz.Migrations
{
    [DbContext(typeof(BazaDbContext))]
    [Migration("20220328205216_Odwiedzone")]
    partial class Odwiedzone
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.1")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("APIpz.Entities.Miejsce", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Adres")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("Doswiadczenie")
                        .HasColumnType("int");

                    b.Property<string>("Link")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Miejsce_KategoriaId")
                        .HasColumnType("int");

                    b.Property<string>("Nazwa")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("Trudnosc")
                        .HasColumnType("int");

                    b.Property<float>("WspolrzedneLAT")
                        .HasColumnType("real");

                    b.Property<float>("WspolrzedneLNG")
                        .HasColumnType("real");

                    b.Property<int?>("ZdjecieId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("Miejsce_KategoriaId");

                    b.HasIndex("ZdjecieId");

                    b.ToTable("Miejsce");
                });

            modelBuilder.Entity("APIpz.Entities.Miejsce_kategoria", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Nazwa")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Miejsce_kategoria");
                });

            modelBuilder.Entity("APIpz.Entities.Odwiedzony", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("OdwiedzonePrzezId")
                        .HasColumnType("int");

                    b.Property<int>("OdwiedzonyUrbexId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("OdwiedzonePrzezId");

                    b.HasIndex("OdwiedzonyUrbexId");

                    b.ToTable("Odwiedzone");
                });

            modelBuilder.Entity("APIpz.Entities.Opinia", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("MiejsceId")
                        .HasColumnType("int");

                    b.Property<int>("Ocena")
                        .HasColumnType("int");

                    b.Property<string>("Tekst")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("UzytkownikId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("MiejsceId");

                    b.HasIndex("UzytkownikId");

                    b.ToTable("Opinia");
                });

            modelBuilder.Entity("APIpz.Entities.Ranking", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.HasKey("Id");

                    b.ToTable("Ranking");
                });

            modelBuilder.Entity("APIpz.Entities.Ranking_slownik", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Nazwa")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Ranking_slownik");
                });

            modelBuilder.Entity("APIpz.Entities.Uzytkownik", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<bool>("CzyAdmin")
                        .HasColumnType("bit");

                    b.Property<bool>("CzyKontoAktywne")
                        .HasColumnType("bit");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("HasloHash")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("KodPotwierdzajacyRejestracje")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Login")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Uzytkownik");
                });

            modelBuilder.Entity("APIpz.Entities.Zdjecie", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("Link")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<byte[]>("Obraz")
                        .HasColumnType("varbinary(max)");

                    b.HasKey("Id");

                    b.ToTable("Zdjecie");
                });

            modelBuilder.Entity("APIpz.Entities.Miejsce", b =>
                {
                    b.HasOne("APIpz.Entities.Miejsce_kategoria", "Miejsce_Kategoria")
                        .WithMany()
                        .HasForeignKey("Miejsce_KategoriaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("APIpz.Entities.Zdjecie", "Zdjecie")
                        .WithMany()
                        .HasForeignKey("ZdjecieId");

                    b.Navigation("Miejsce_Kategoria");

                    b.Navigation("Zdjecie");
                });

            modelBuilder.Entity("APIpz.Entities.Odwiedzony", b =>
                {
                    b.HasOne("APIpz.Entities.Uzytkownik", "OdwiedzonePrzez")
                        .WithMany()
                        .HasForeignKey("OdwiedzonePrzezId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("APIpz.Entities.Miejsce", "OdwiedzonyUrbex")
                        .WithMany()
                        .HasForeignKey("OdwiedzonyUrbexId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("OdwiedzonePrzez");

                    b.Navigation("OdwiedzonyUrbex");
                });

            modelBuilder.Entity("APIpz.Entities.Opinia", b =>
                {
                    b.HasOne("APIpz.Entities.Miejsce", "Miejsce")
                        .WithMany()
                        .HasForeignKey("MiejsceId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("APIpz.Entities.Uzytkownik", "Uzytkownik")
                        .WithMany()
                        .HasForeignKey("UzytkownikId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Miejsce");

                    b.Navigation("Uzytkownik");
                });
#pragma warning restore 612, 618
        }
    }
}
