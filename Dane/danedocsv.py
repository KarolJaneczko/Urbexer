#!/usr/bin/env python3
"""
nie zapomnij o: 
$ chmod +x ./danedocsv.py
"""

__version__ = "1"

# 1. USTAWIENIA - BEGIN
debuguj = False
nazwa_pliku = 'kordyopisitd.txt'
wstaw_naglowek = True
nazwy_pol = [
        'lat',
        'lng',
        'placeCategory',
        'placeCity',
        'placeLink',
        'placeTitle',
        'placeAddDate',
        'placeViewsCount',
        'placeCommentCount',
        'placeRating',
        'placeAvgRating']
nazwa_pliku_wyjsciowego = 'dane.csv'
# 1. USTAWIENIA - END

# 2. KOD - BEGIN
import csv

print("ETAP 1 - WCZYTYWANIE WPISÓW")

wpisy = []

# wpisem jest wszystko między znacznikami <script>..</script>
with open(nazwa_pliku) as plik:
    wpis = []
    czytam_wpis = False
    
    linia = plik.readline()
    
    i = 1 # numer linijki
    j = 1 # numer wpisu

    while linia:
        linia = linia.strip()

        if czytam_wpis:
            if linia.lower() == '</script>':
                wpisy.append(wpis)
                czytam_wpis = False
                continue

            wpis.append(linia)
            if debuguj:
                print("{}: ({})".format(i, linia))
        
        else:
            if linia.lower() == '<script>':
                if debuguj:
                    print("WPIS #{}".format(j))
                wpis = []
                czytam_wpis = True
                j += 1

        linia = plik.readline()
        i += 1

print("Wczytano {} wpisów".format(len(wpisy)))

print("ETAP 2 - PARSOWANIE WPISÓW")

baza = list()
dostepne_kategorie = set()
for wpis in wpisy:
    
    rekord = dict()
    
    for linia in wpis:
        if ":" in linia:
            index_dwukropka = linia.find(":")
            klucz = linia[:index_dwukropka].strip().strip(',}{').strip()
            wartosc = linia[index_dwukropka+1:].strip().strip(',}{').strip().strip('\'')
            if wartosc != '':
                rekord[klucz] = wartosc 
            dostepne_kategorie.add(klucz)

            if debuguj:
                print('[{}]:[{}]'.format(klucz, wartosc))

    baza.append(rekord)

    if debuguj:
        print("--- KONIEC WPISU ---")

print("ETAP 3 - ZAPISYWANIE DO FORMATU CSV")

with open(nazwa_pliku_wyjsciowego, 'w', newline='') as plik_csv:
    writer = csv.DictWriter(plik_csv, fieldnames=nazwy_pol)

    if wstaw_naglowek:
        writer.writeheader()
    
    for rekord in baza:
        writer.writerow(rekord)


# 2. KOD - END
