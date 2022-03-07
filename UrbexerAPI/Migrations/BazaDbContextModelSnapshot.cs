﻿// <auto-generated />
using System;
using APIpz.entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace APIpz.Migrations
{
    [DbContext(typeof(BazaDbContext))]
    partial class BazaDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.1")
                .HasAnnotation("Relational:MaxIdentifierLength", 64);

            modelBuilder.Entity("APIpz.entities.Miejsce", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<int?>("Doswiadczenie")
                        .HasColumnType("int");

                    b.Property<string>("Nazwa")
                        .IsRequired()
                        .HasColumnType("longtext");

                    b.Property<int?>("Trudnosc")
                        .HasColumnType("int");

                    b.Property<string>("Wojewodztwo")
                        .IsRequired()
                        .HasColumnType("longtext");

                    b.Property<float?>("Wspolrzedne")
                        .HasColumnType("float");

                    b.HasKey("Id");

                    b.ToTable("Miejsca");
                });

            modelBuilder.Entity("APIpz.entities.Odwiedzony", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<int>("OdwiedzonePrzezId")
                        .HasColumnType("int");

                    b.Property<int>("OdwiedzonyUrbexId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("OdwiedzonePrzezId");

                    b.HasIndex("OdwiedzonyUrbexId");

                    b.ToTable("Odwiedzone");
                });

            modelBuilder.Entity("APIpz.entities.Opis", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<int>("MiejsceId")
                        .HasColumnType("int");

                    b.Property<string>("Tekst")
                        .HasColumnType("longtext");

                    b.Property<int?>("UzytkownikId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("MiejsceId");

                    b.HasIndex("UzytkownikId");

                    b.ToTable("Opisy");
                });

            modelBuilder.Entity("APIpz.entities.Uzytkownik", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<bool>("CzyAdmin")
                        .HasColumnType("tinyint(1)");

                    b.Property<bool>("CzyKontoAktywne")
                        .HasColumnType("tinyint(1)");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("longtext");

                    b.Property<string>("HasloHash")
                        .IsRequired()
                        .HasColumnType("longtext");

                    b.Property<string>("KodPotwierdzajacyRejestracje")
                        .IsRequired()
                        .HasColumnType("longtext");

                    b.Property<string>("Login")
                        .IsRequired()
                        .HasColumnType("longtext");

                    b.HasKey("Id");

                    b.ToTable("Uzytkownicy");
                });

            modelBuilder.Entity("APIpz.entities.Wyprawa", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<DateTime>("Kiedy")
                        .HasColumnType("datetime(6)");

                    b.Property<int>("MiejsceId")
                        .HasColumnType("int");

                    b.Property<int?>("UzytkownikId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("MiejsceId");

                    b.HasIndex("UzytkownikId");

                    b.ToTable("Wyprawy");
                });

            modelBuilder.Entity("APIpz.entities.Zdjecie", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    b.Property<byte[]>("Obraz")
                        .IsRequired()
                        .HasColumnType("longblob");

                    b.Property<int?>("UzytkownikId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("UzytkownikId");

                    b.ToTable("Zdjecia");
                });

            modelBuilder.Entity("APIpz.entities.Odwiedzony", b =>
                {
                    b.HasOne("APIpz.entities.Uzytkownik", "OdwiedzonePrzez")
                        .WithMany()
                        .HasForeignKey("OdwiedzonePrzezId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("APIpz.entities.Miejsce", "OdwiedzonyUrbex")
                        .WithMany()
                        .HasForeignKey("OdwiedzonyUrbexId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("OdwiedzonePrzez");

                    b.Navigation("OdwiedzonyUrbex");
                });

            modelBuilder.Entity("APIpz.entities.Opis", b =>
                {
                    b.HasOne("APIpz.entities.Miejsce", "Miejsce")
                        .WithMany()
                        .HasForeignKey("MiejsceId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("APIpz.entities.Uzytkownik", null)
                        .WithMany("Opisy")
                        .HasForeignKey("UzytkownikId");

                    b.Navigation("Miejsce");
                });

            modelBuilder.Entity("APIpz.entities.Wyprawa", b =>
                {
                    b.HasOne("APIpz.entities.Miejsce", "Miejsce")
                        .WithMany()
                        .HasForeignKey("MiejsceId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("APIpz.entities.Uzytkownik", null)
                        .WithMany("Wyprawy")
                        .HasForeignKey("UzytkownikId");

                    b.Navigation("Miejsce");
                });

            modelBuilder.Entity("APIpz.entities.Zdjecie", b =>
                {
                    b.HasOne("APIpz.entities.Uzytkownik", null)
                        .WithMany("Zdjecia")
                        .HasForeignKey("UzytkownikId");
                });

            modelBuilder.Entity("APIpz.entities.Uzytkownik", b =>
                {
                    b.Navigation("Opisy");

                    b.Navigation("Wyprawy");

                    b.Navigation("Zdjecia");
                });
#pragma warning restore 612, 618
        }
    }
}
