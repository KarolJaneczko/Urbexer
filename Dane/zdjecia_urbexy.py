#!/usr/bin/env python3
import requests, json, csv, sys, os, time

per_page = 100
# Pobieramy do 100 elementów bo na tyle domyślnie pozawala 
# na jednej stronie WordPress Rest API

placeholder_media_id = 411 
# media id obrazka z znakiem zapytania które urbexy.pl
# używa jako placeholder gdy miejsce nie ma obrazka

# Wybierz jeden i odkomentuj, reszte zakomentuj; kolejność od najmniejszego do największego
size = 'places-list-thumb' # 100x100	
#size = 'thumbnail' # 220x220
#size = 'medium'	
#size = 'medium_large'
#size = 'baza-wiedzy-featured-image'	
#size = 'full'	


fieldnames = [
            'id',
            'media_id',
            'media_nr',
            'width',
            'height',
            'mime_type',
            'source_url'
        ]
dirname = os.path.join('zdjecia_urbexy', size)
filename = os.path.join(dirname, 'dane3_' + size + '.csv')

if not os.path.exists(dirname): # jeśli folder na zdjecia nie istnieje stwórz go
    os.makedirs(dirname, exist_ok=True )
else: # jeśli istnieje to wyczyść zwykłe pliki
    for fname in os.listdir(dirname):
        path = os.path.join(dirname, fname)
        if os.path.isfile(path):
            os.unlink(path)

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
      
            width = ''
            height = ''
            mime_type = ''
            source_url = ''

            med_id = ''
            med_nr = ''


            if not entry['ACF']['urbexy_featured_image']: 
                print("ERROR: entry's JSON has no 'urbexy_featured_image' property, skipping")
                skipped_entries += 1
                continue
            elif entry['ACF']['urbexy_featured_image'] == placeholder_media_id:
                # placeholder, skipujemy
                skipped_entries += 1
                continue
            else:
                gallery_media_ids = []
                if entry['ACF']['urbexy_gallery']:
                    for gallery_image_json in entry['ACF']['urbexy_gallery']:
                        gallery_media_ids.append(gallery_image_json['urbexy_foto'])
                media_ids = gallery_media_ids
                media_ids.insert(0, entry['ACF']['urbexy_featured_image'])

                for media_nr, media_id in enumerate(media_ids, start = 0):
                    media_url = 'https://urbexy.pl/wp-json/wp/v2/media/' + str(media_id) 
                    media_r = requests.get(url = media_url)
                    if media_r.status_code != 200: # błąd
                        if media_r.status_code == 503: # 503 Service Unavailable, musimy poczekać 
                            print("ERROR: media query status code 503, skipping")
                            skipped_entries += 1
                            continue
                        elif media_r.status_code == 404: # 404 Not Found, zawartość mediów pod to id mediów nie istnieje mimo że jest wpisane w jsonie miejsca
                            print("ERROR: media query status code 404, skipping")
                            skipped_entries += 1
                            continue
                        else:
                            print("CRITICAL ERROR: media query got status " + str(media_r.status_code) \
                                + " which is different than 200")
                            print(json.dumps(entry, indent=2))
                            sys.exit(1)
                    if not media_r.json(): # pusty JSON
                        print("CRITICAL ERROR: media query got empty JSON")
                        sys.exit(1)
                    media_json = media_r.json()
                    if size not in media_json['media_details']['sizes']:
                        print("ERROR: cannot get JSON of size "+ size +", skipping")
                        skipped_entries += 1
                        continue
                    image_json = media_json['media_details']['sizes'][size]
                    width = image_json['width']
                    height = image_json['height']
                    mime_type = image_json['mime_type']
                    source_url = image_json['source_url']

                    med_id = media_id
                    med_nr = media_nr
                    
                    response_file = requests.get(source_url)
                    if media_r.status_code != 200: # błąd
                        print("CRITICAL ERROR: cannot download image at url", source_url)
                        sys.exit(1)
                    if mime_type == 'image/png':
                        file = open(os.path.join(dirname, str(entry['id']) + "_" + size + "_" + str(media_nr) + ".png"), "wb")
                        file.write(response_file.content)
                        file.close()
                    elif mime_type == 'image/jpeg':
                        file = open(os.path.join(dirname, str(entry['id']) + "_" + size + "_" + str(media_nr) + ".jpg"), "wb")
                        file.write(response_file.content)
                        file.close()
                    else:
                        print("CRITICAL ERROR: unknown image format", mime_type)
                        sys.exit(1)

                    writer.writerow({
                        'id'         : entry['id'],
                        'media_id'   : med_id,
                        'media_nr'   : med_nr,
                        'width'      : width,
                        'height'     : height,
                        'mime_type'  : mime_type,
                        'source_url' : source_url
                        })

            print("\rProcessing entry: {} ".format(total_entries), end='')
        page += 1

print('\rTotal entries: {}, Skipped entries: {}, Entries in csv: {}'.format(
    total_entries, skipped_entries, total_entries - skipped_entries))
