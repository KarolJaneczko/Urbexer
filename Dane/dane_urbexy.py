#!/usr/bin/env python3
import requests, json, csv, sys

per_page = 100
# Pobieramy do 100 elementów bo na tyle domyślnie pozawala 
# na jednej stronie WordPress Rest API

fieldnames = [
            'id',
            'author',
            'slug',
            'title',
            'voivodeship',
            'town',
            'date',
            'date_gmt',
            'modified',
            'modified_gmt',
            'lat',
            'lng',
            'zoom',
            'address',
            'desc',
            'category',
            'rating'
        ]
filename = 'dane2.csv'
category_to_voivodeship = {
         6 : 'dolnośląskie',
         7 : 'kujawsko-pomorskie',
         8 : 'lubelskie',
         9 : 'lubuskie',
        10 : 'łódzkie',
        11 : 'małopolskie',
        12 : 'mazowieckie',
        13 : 'opolskie',
        14 : 'podkarpackie',
        15 : 'podlaskie',
        16 : 'pomorskie',
        17 : 'śląskie',
        18 : 'świętokrzyskie',
        19 : 'warmińsko-mazurskie',
        20 : 'wielkopolskie',
        21 : 'zachodniopomorskie'
}
def is_voivodeship(n):
    return n >= 6 and n <= 21


page = 1
total_entries = 0
skipped_entries = 0
category_to_town = {}
while True:
    url = 'https://urbexy.pl/wp-json/wp/v2/categories'
    params = {'per_page' : str(per_page), 'page' : str(page)}
    r = requests.get(url = url, params = params)
    if r.status_code != 200: # Jak nie ma kodu 200 HTTP to skończyły się nam strony 
        break
    if not r.json(): # empty json
        break
    for i, entry in enumerate(r.json(), start = 1):
        total_entries += 1
        print("\rProcessing category: {} ".format(total_entries), end='')
        if is_voivodeship(entry['id']):
            print("INFO: category is voivodeship, skipping category")
            skipped_entries += 1
        else:
            if is_voivodeship(entry['parent']):
                category_to_town[entry['id']] = entry['name']
            else:
                print("INFO: town does not belong to voivodeship, skipping category")
                skipped_entries += 1

    page += 1
print('\rTotal categories: {}, Skipped categories: {}, Categories in dictionary: {}'.format(
    total_entries, skipped_entries, total_entries - skipped_entries))

page = 1
total_entries = 0
skipped_entries = 0
with open(filename, 'w', newline='') as file:
    writer = csv.DictWriter(file, fieldnames = fieldnames)

    writer.writeheader()

    while True:
        url = 'https://urbexy.pl/wp-json/wp/v2/miejsce'
        params = {'per_page' : str(per_page), 'page' : str(page)}
        r = requests.get(url = url, params = params)
        if r.status_code != 200: # Jak nie ma kodu 200 HTTP to skończyły się nam strony 
            break
        if not r.json(): # empty json
            break
        for i, entry in enumerate(r.json(), start = 1):
            total_entries += 1
            #n = page * per_page + i
            #print(json.dumps(entry, indent=2))
       
            number_of_categories = len(entry['categories'])
            voivodeship = ''
            town = ''


            if number_of_categories > 2:
                print("CRITICAL ERROR: more than 2 categories \
                        (supposed voivodeship and town)")
                sys.exit(1)
            elif number_of_categories < 1:
                print("ERROR: entry has less than 1 category, skipping entry")
                skipped_entries += 1
                continue
            elif number_of_categories == 1:
                if is_voivodeship(entry['categories'][0]):
                    print("ERROR: entry has only 1 category and it is voivodeship (unable to find town), skipping entry")
                    skipped_entries += 1
                    continue
                else: # got town, figuring out voivodeship
                    town = entry['categories'][0]
                    town_url = 'https://urbexy.pl/wp-json/wp/v2/categories/' + str(town)
                    r_town = requests.get(url = town_url)
                    if r_town.status_code != 200:
                        print("CRITICAL ERROR: cannot get category json")
#
                        print(json.dumps(entry, indent=2))
                        sys.exit(1)
                    else:
                        if is_voivodeship(r_town.json()['parent']):
                            voivodeship = r_town.json()['parent']
                        else: 
                            print("ERROR: entry has only 1 category and it is town with parent which is not voivodeship, skipping entry")
                            skipped_entries += 1
                            continue
            else: # number_of_categories == 2 
                if is_voivodeship(entry['categories'][0]):
                    voivodeship = entry['categories'][0] 
                    town        = entry['categories'][1]
                elif is_voivodeship(entry['categories'][1]):
                    voivodeship = entry['categories'][1] 
                    town        = entry['categories'][0]
                else:
                    print("ERROR: entry has no voivodeship, skipping entry")
                    skipped_entries += 1
                    continue

            writer.writerow({
                'id'           : entry['id'],
                'author'       : entry['id'],
                'slug'         : entry['slug'],
                'title'        : entry['title']['rendered'],
                'voivodeship'  : category_to_voivodeship[voivodeship],
                'town'         : category_to_town[town],
                'date'         : entry['date'],
                'date_gmt'     : entry['date_gmt'],
                'modified'     : entry['modified'],
                'modified_gmt' : entry['modified_gmt'],
                'lat'          : entry['ACF']['urbexy_osm']['lat'],
                'lng'          : entry['ACF']['urbexy_osm']['lng'],
                'zoom'         : entry['ACF']['urbexy_osm']['zoom'],
                'address'      : entry['ACF']['urbexy_osm']['address'],
                'desc'         : entry['ACF']['urbexy_desc'].encode("unicode_escape").decode("utf-8"), # newline characters destory csv so we have to convert them to escape sequence '\n'
                'category'     : entry['ACF']['urbexy_place_category'],
                'rating'       : entry['place_rating'][0]
                })
            print("\rProcessing entry: {} ".format(total_entries), end='')
        page += 1

print('\rTotal entries: {}, Skipped entries: {}, Entries in csv: {}'.format(
    total_entries, skipped_entries, total_entries - skipped_entries))
