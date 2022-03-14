--------------------
-- Miejsce_Kategorie
--------------------

SET IDENTITY_INSERT miejsce_kategoria ON

INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (1, 'Kolejowe');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (2, 'Hotele i pensjonaty');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (3, 'Domy');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (4, 'Industrialne');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (5, 'Restauracje i kluby');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (6, 'Rolnicze');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (7, 'Zamki i pa³ace');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (8, 'Podziemia');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (9, 'Biurowce');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (10, 'Militarne');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (11, 'Szpitale');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (12, 'Podziemia i tunele');
INSERT INTO miejsce_kategoria (Id, Nazwa) VALUES (13, 'Inne');

SET IDENTITY_INSERT miejsce_kategoria OFF

--------------------
-- Miejsce
--------------------

SET IDENTITY_INSERT [dbo].[Miejsce] ON 
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1, N'Wiadukt kolejowy', 1, NULL, 53.4338036, 17.7231579, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wiadukt-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2, N'Hotel', 2, NULL, 49.6085968, 19.9728718, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (3, N'Oœrodek Szkolenia Policji', 13, NULL, 52.47431, 16.7883968, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-szkolenia-policji/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (4, N'Poniemiecki opuszczony dom.', 3, NULL, 52.98264, 14.8286381, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poniemiecki-opuszczony-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (5, N'Domki letniskowe', 2, NULL, 50.80897, 19.15638, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/domki-letniskowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (6, N'Dom z warsztatem', 3, NULL, 50.4858665, 18.4111824, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-z-warsztatem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (7, N'Opuszczony budynek z hal¹', 4, NULL, 52.21496, 20.9260826, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-z-hala/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (8, N'Opuszczony klub nocny &#8220;Las Vegas&#8221;', 5, NULL, 52.1040535, 18.16776, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-klub-nocny-las-vegas/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (9, N'Spalona willa Danuta', 3, NULL, 52.3556824, 21.2237835, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spalona-willa-danuta/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (10, N'Opuszczona Garbarnia', 4, NULL, 51.2510223, 22.5891838, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-garbarnia-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (11, N'Oœrodek Wypoczynkowy PKP', 2, NULL, 52.2249069, 14.96456, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (12, N'Opuszczony Dom', 3, NULL, 50.1944847, 20.0033569, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-23/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (13, N'Stadnina koni i szko³a nauki jazdy konnej', 6, NULL, 49.9828, 18.758297, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stadnina-koni-i-szkola-nauki-jazdy-konnej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (14, N'Opuszczona cukrownia w Bierutowie', 5, NULL, 51.12241, 17.56142, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cukrownia-w-bierutowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (15, N'opuszczone domy (najprawdopodobniej po po¿arze)', 3, NULL, 50.07269, 19.8405666, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-domy-najprawdopodobniej-po-pozarze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (16, N'Opuszczone przedszkole', 13, NULL, 52.3762169, 16.9110413, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-przedszkole-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (17, N'opuszczona budowa', 3, NULL, 50.87322, 20.7462349, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-budowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (18, N'Opuszczony PGR', 3, NULL, 51.457077, 16.0178356, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-7/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (19, N'Kazamata Podziemna', 7, NULL, 49.9889526, 20.9979458, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kazamata-podziemna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (20, N'Ma³y opuszczony dom', 3, NULL, 50.15145, 19.4194012, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/maly-opuszczony-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (21, N'Opuszczony dom', 3, NULL, 50.1346626, 19.4128418, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-22/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (22, N'Opuszczone hangary', 4, NULL, 51.2182541, 22.5511932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-hangary/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (23, N'Opuszczony koœció³  mariawicki', 13, NULL, 52.0571175, 21.7591763, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kosciol-mariawicki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (24, N'Kaplica Mariawitów  z 1910 roku', 13, NULL, 52.0572128, 21.7589359, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kaplica-mariawitow-z-1910-roku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (25, N'Opuszczona wie¿a ciœnieñ', 13, NULL, 50.2874756, 18.7360229, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-wieza-cisnien-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (26, N'Opusczone zbiorniki wodne', 13, NULL, 50.1499329, 19.400322, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opusczone-zbiorniki-wodne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (27, N'Porzucona Plansza Szachowa', 13, NULL, 49.9902458, 21.000721, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/porzucona-plansza-szachowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (28, N'Spichlerz Ksi¹¿¹t Sanguszków', 7, NULL, 50.0057945, 21.002552, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spichlerz-ksiazat-sanguszkow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (29, N'Stary Tunel W¹skotorówki i Strusinki', 8, NULL, 49.99784, 20.9758587, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-tunel-waskotorowki-i-strusinki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (30, N'Burzowiec (kana³ ulgi, kolektor przelewowy)', 8, NULL, 50.01855, 20.9375229, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/burzowiec-kanal-ulgi-kolektor-przelewowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (31, N'Opuszczona Wagonownia', 1, NULL, 49.99253, 20.96685, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-wagonownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (32, N'Dwór Ksiêcia Sanguszki z 1880 roku', 7, NULL, 49.9647255, 20.9743462, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-ksiecia-sanguszki-z-1880-roku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (33, N'Stary dom', 3, NULL, 49.9944572, 20.83947, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-dom-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (34, N'Stara mleczarnia', 6, NULL, 53.2067528, 17.83685, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-mleczarnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (35, N'Opuszczone dom', 3, NULL, 49.9227829, 19.0544052, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (36, N'Porzucona naczepa TIR', 13, NULL, 50.006897, 20.845377, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/porzucona-naczepa-tir/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (37, N'Opuszczona rafineria', 4, NULL, 49.91126, 19.0288658, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-rafineria/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (38, N'Opuszczona pa³ac w Bojanowie', 13, NULL, 51.1439247, 18.3677959, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-palac-w-bojanowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (39, N'Spalony zabytkowy M³yn Szancera w centrum Miasta', 13, NULL, 50.0126343, 20.9956436, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spalony-zabytkowy-mlyn-szancera-w-centrum-miasta/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (40, N'Opuszczony domek przy autostradzie.', 3, NULL, 50.00207, 20.7084446, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-domek-przy-autostradzie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (41, N'Zak³ad prefabrykacji betonu WODPOL-BUD', 4, NULL, 52.3195763, 21.0103874, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-prefabrykacji-betonu-wodpol-bud/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (42, N'Przychodnia Naturoterapia', 4, NULL, 50.4473038, 16.88238, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przychodnia-naturoterapia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (43, N'Opuszczony Folwark Annowo', 6, NULL, 52.50094, 17.0004864, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-folwark-annowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (44, N'Ujków Stary &#8211; pozosta³oœci po wiosce w lesie', 3, NULL, 50.2905731, 19.4991665, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ujkow-stary-pozostalosci-po-wiosce-w-lesie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (45, N'Ruiny Pa³acu £ubieñskich z 1820 roku', 7, NULL, 52.27082, 21.30674, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-palacu-lubienskich-z-1820-roku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (46, N'Most kolejowy w œrodku niczego WARTULE', 1, NULL, 53.8420372, 19.36863, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/most-kolejowy-w-srodku-niczego-wartule/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (47, N'nieukoñczone osiedle wielorodzinne', 3, NULL, 50.04675, 19.929184, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieukonczone-osiedle-wielorodzinne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (48, N'KRAKOWSKIE PRZEDSIÊBIORSTWO BUDOWY PIECÓW PRZEMYS£OWYCH', 4, NULL, 50.14831, 19.4663982, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/krakowskie-przedsiebiorstwo-budowy-piecow-przemyslowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (49, N'Stary most', 1, NULL, 49.9955063, 20.97167, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-most/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (50, N'Opuszczony biurowiec', 9, NULL, 53.1004143, 18.0650425, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-biurowiec-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (51, N'Opuszczony budynek', 3, NULL, 49.9917564, 20.9206047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-7/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (52, N'Stacja Kolejowa Nieborowice', 1, NULL, 50.2259178, 18.617588, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-kolejowa-nieborowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (53, N'Stara owczarnia', 6, NULL, 49.7172, 19.2816544, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-owczarnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (54, N'Opuszczony dom ksiêdza', 3, NULL, 50.17362, 19.4738064, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-ksiedza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (55, N'Opuszczona fabryka blatów', 13, NULL, 51.7317047, 15.6979179, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-blatow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (56, N'oœrodek wypoczynkowy œwitez', 2, NULL, 54.07596, 20.6020679, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-switez/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (57, N'Opuszczony pustostan', 9, NULL, 50.04702, 19.92974, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pustostan-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (58, N'opuszczona willa', 3, NULL, 52.4944229, 17.1017628, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-willa-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (59, N'Spalona Winiarnia Wejherowo', 8, NULL, 54.5995522, 18.2412472, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spalona-winiarnia-wejherowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (60, N'Ruiny pa³acu', 7, NULL, 53.31461, 16.4357071, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-palacu-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (61, N'Opuszczona fabryka nielegalnych papierosów', 13, NULL, 50.5251579, 21.8248138, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-nielegalnych-papierosow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (62, N'Osadniki Sodowe Solvay &#8211; &#8220;Bia³e Morza&#8221;', 13, NULL, 50.01207, 19.94026, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osadniki-sodowe-solvay-biale-morza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (63, N'Opuszczony dworek z 1921', 3, NULL, 50.02425, 20.9107018, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworek-z-1921/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (64, N'Pustostan Parady¿', 3, NULL, 54.632946, 18.135107, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pustostan-paradyz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (65, N'Opuszczony budynek dawnej stacji kolejowej Lipinki.', 1, NULL, 53.4642868, 19.3185, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-dawnej-stacji-kolejowej-lipinki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (66, N'Opuszczony dom', 3, NULL, 50.0917854, 19.5300083, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-20/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (67, N'Opuszczona szkó³ka leœna', 13, NULL, 52.44448, 16.8150311, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-szkolka-lesna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (68, N'opuszczona wie¿a ciœnieñ', 13, NULL, 53.1294441, 18.0747128, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-wieza-cisnien-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (69, N'Stara owczarnia', 6, NULL, 53.16315, 18.1496868, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-owczarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (70, N'Opuszczony dom', 3, NULL, 50.09176, 19.5298824, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-19/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (71, N'Opuszczony pgr', 6, NULL, 52.4468956, 20.7741051, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-6/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (72, N'Schronisko M³odzie¿owe &#8220;Wiecha”', 2, NULL, 49.7072258, 18.84892, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schronisko-mlodziezowe-wiecha/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (73, N'Schron przeciwlotniczy.', 8, NULL, 54.1466255, 19.4049187, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-przeciwlotniczy-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (74, N'schron PKP', 8, NULL, 54.15079, 19.4179478, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (75, N'Schron pod blokiem', 8, NULL, 54.1588, 19.401804, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-pod-blokiem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (76, N'Dom z czerwonej ceg³y z zachowanym wyposa¿eniem', 3, NULL, 52.97595, 17.11944, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-z-czerwonej-cegly-z-zachowanym-wyposazeniem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (77, N'Willa Dziada z Wo³omina.', 5, NULL, 51.9857674, 20.9236813, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-dziada-z-wolomina/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (78, N'Opuszczony oœrodek wczasowy &#8220;s³oneczny stok&#8221;', 2, NULL, 53.9851151, 17.08419, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wczasowy-sloneczny-stok/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (79, N'Opuszczony dworzec PKP', 1, NULL, 54.17733, 19.3920517, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworzec-pkp-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (80, N'Opuszczony hotel z wyposa¿eniem', 2, NULL, 50.1250648, 19.3908119, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-hotel-z-wyposazeniem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (81, N'Opuszczone koszary.', 10, NULL, 54.14732, 19.42346, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-koszary-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (82, N'Opuszczony pa³ac Brzozówiec wraz z fabryk¹ wody', 4, NULL, 52.5532455, 17.7979755, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-brzozowiec-wraz-z-fabryka-wody/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (83, N'Opuszczone Surowe bloki', 3, NULL, 50.249958, 18.908638, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-surowe-bloki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (84, N'Belweder Toruñ', 10, NULL, 53.00966, 18.62291, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/belweder-torun/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (85, N'Opuszczona Nowoczesna Fabryka', 4, NULL, 51.8497429, 19.3981552, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-nowoczesna-fabryka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (86, N'niewielki bunkier w koch³owicach', 13, NULL, 50.2496147, 18.9081726, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niewielki-bunkier-w-kochlowicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (87, N'Opuszczony dworzec kolejowy Górne', 1, NULL, 54.25921, 22.4254017, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworzec-kolejowy-gorne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (88, N'Opuszczony budynek', 13, NULL, 49.99941, 20.84136, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (89, N'Wapno – miasto, które zapad³o siê pod ziemiê', 13, NULL, 52.90569, 17.4746056, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wapno-miasto-ktore-zapadlo-sie-pod-ziemie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (90, N'Opuszczony Park Miniatur Sakralnych Z³ota Góra w Czêstochowie', 13, NULL, 50.80928, 19.152483, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-park-miniatur-sakralnych-zlota-gora-w-czestochowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (91, N'Opuszczony dom z wyposa¿eniem', 3, NULL, 50.8639565, 20.6298084, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-z-wyposazeniem-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (92, N'Kasyno oficerskie', 10, NULL, 54.305603, 22.3012753, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kasyno-oficerskie-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (93, N'Pa³ac Biernacice &#8211; ruiny', 7, NULL, 51.965, 18.8726234, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-biernacice-ruiny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (94, N'Opuszczony oœrodek wypoczynkowy', 2, NULL, 53.237957, 18.1192989, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (95, N'Opuszczona Nastawnia.', 1, NULL, 52.21048, 20.8822365, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-nastawnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (96, N'Opuszczony dom z wyposa¿eniem', 3, NULL, 50.8645821, 20.6299915, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-z-wyposazeniem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (97, N'Opuszczony PGR &#8211; Doba', 6, NULL, 54.0761681, 21.5867939, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-doba/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (98, N'Leœniczówka Zdru¿no', 7, NULL, 53.6173553, 21.4732914, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lesniczowka-zdruzno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (99, N'Opuszczony kompleks oœrodków wypoczynkowych i domków letniskowych w Pogorzelicy', 2, NULL, 54.10283, 15.118309, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kompleks-osrodkow-wypoczynkowych-i-domkow-letniskowych-w-pogorzelicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (100, N'Opuszczony dom &#8211; Gdynia', 3, NULL, 54.5179024, 18.5273647, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-gdynia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (101, N'Pa³ac Fahrenheidów', 7, NULL, 54.31807, 21.9812012, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-fahrenheidow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (102, N'Pa³acu Dönhoffów', 7, NULL, 54.20829, 21.2336864, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palacu-donhoffow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (103, N'Opuszczona rzeŸnia', 13, NULL, 51.0125046, 18.0514355, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-rzeznia-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (104, N'Opuszczony pensjonat Vena &#8211; Kar³owo', 2, NULL, 54.2497177, 21.5570488, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pensjonat-vena-karlowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (105, N'Opuszczony dworzec kolejowy G³omno', 1, NULL, 54.32745, 20.7592468, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworzec-kolejowy-glomno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (106, N'Opuszczony PGR', 6, NULL, 54.3602066, 20.7051067, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (107, N'Ruiny koœcio³a pw. œw. Bart³omieja', 13, NULL, 54.41398, 19.9859734, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kosciola-pw-sw-bartlomieja/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (108, N'Opuszczony zak³ad przetwórstwa miêsa', 13, NULL, 50.2382, 19.2158661, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zaklad-przetworstwa-miesa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (109, N'Opuszczony dworzec kolejowy Frombork', 1, NULL, 54.3580627, 19.6771011, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworzec-kolejowy-frombork/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (110, N'Dawna komora celna', 13, NULL, 50.2085838, 19.1842232, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-komora-celna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (111, N'Wapienniki', 9, NULL, 50.2348328, 19.3059864, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wapienniki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (112, N'Dawna prochownia', 8, NULL, 50.2282372, 19.2887249, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-prochownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (113, N'Prochownia z 1899', 8, NULL, 50.2349434, 19.30584, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/prochownia-z-1899/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (114, N'Opuszczony dom', 3, NULL, 52.82932, 16.4904785, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-17/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (115, N'Opuszczony oœrodek wypoczynkowy Mewa i Gryf', 2, NULL, 54.09363, 15.134697, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (116, N'OPUSZCZONY BIUROWIEC PKS', 9, NULL, 50.14803, 19.3996677, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-biurowiec-pks/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (117, N'Oœrodek wczasowy Burczybas', 2, NULL, 54.31507, 18.2666473, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wczasowy-burczybas/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (118, N'Budynki firmy transportowej ABS Bonifer Polska + baza paliw', 13, NULL, 50.9295578, 17.3029175, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynki-firmy-transportowej-abs-bonifer-polska-baza-paliw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (119, N'Opuszczona Mleczarnia', 4, NULL, 53.910202, 19.6196079, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-mleczarnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (120, N'Pa³ac Brzezinka', 7, NULL, 51.2842445, 17.4483566, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-brzezinka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (121, N'Opuszczony magazyn  kolejowy', 1, NULL, 53.6992569, 19.94542, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-magazyn-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (122, N'Opuszczone Laboratorium', 13, NULL, 50.559906, 18.8923969, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-laboratorium-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (123, N'Opuszczona Fabryka w Radomiu', 4, NULL, 51.391964, 21.1401463, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-w-radomiu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (124, N'Opuszczony zaklad produkcyjny', 4, NULL, 50.1499557, 19.254034, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zaklad-produkcyjny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (125, N'Opuszczona Cegielnia Sominin', 4, NULL, 54.2940865, 18.2558441, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cegielnia-sominin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (126, N'Pa³ac Osetno', 7, NULL, 51.6344757, 16.4587688, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-osetno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (127, N'Opuszczony Osrodek Wypoczynkowy Go³uñ', 2, NULL, 54.0074425, 17.97065, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy-golun/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (128, N'Opuszczona Fabryka Tago', 4, NULL, 52.3524475, 21.2404747, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-tago/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (129, N'Chyba coœ medycznego', 11, NULL, 51.41237, 21.1121216, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/chyba-cos-medycznego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (130, N'Pa³ac w Karczewie', 7, NULL, 52.1888237, 16.5179443, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-karczewie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (131, N'hangar', 10, NULL, 51.971344, 19.14917, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hangar/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (132, N'Opuszczony dom', 3, NULL, 50.10734, 19.3811054, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-16/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (133, N'By³a strzelnica wojskowa', 10, NULL, 50.34345, 17.5855179, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/byla-strzelnica-wojskowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (134, N'Opuszczony dom z pe³nym wyposa¿eniem', 3, NULL, 49.6879, 19.7476139, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-z-pelnym-wyposazeniem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (135, N'Gorzelnia', 4, NULL, 53.293644, 18.5280132, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (136, N'Opuszczony PGR', 6, NULL, 53.2519836, 18.4004955, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (137, N'Wrak Samolotu', 13, NULL, 50.91289, 18.3757877, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wrak-samolotu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (138, N'Stara gorzelnia', 4, NULL, 52.4907761, 16.5059071, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-gorzelnia-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (139, N'Stara gorzelnia', 4, NULL, 52.39755, 16.493784, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-gorzelnia-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (140, N'Dwór Smi³ów', 7, NULL, 51.6744766, 18.11198, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-smilow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (141, N'Dworzec PKP Rybnik Gotartowice', 1, NULL, 50.0876846, 18.6230278, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworzec-pkp-rybnik-gotartowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (142, N'Opuszczony klub nocny Protector Prestige', 5, NULL, 51.34236, 19.594862, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-klub-nocny-protector-prestige/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (143, N'Opuszczony McDonald&#8217;s i stacja benzynowa', 5, NULL, 51.38389, 19.62654, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-mcdonalds-i-stacja-benzynowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (144, N'Stacja Paliw', 13, NULL, 53.0529633, 18.699501, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-paliw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (145, N'Pa³acyki (stare szpitale) Turczynek', 3, NULL, 52.12785, 20.6982632, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palacyki-stare-szpitale-turczynek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (146, N'Opuszony domek Baba Jagi', 2, NULL, 53.2977142, 17.8534679, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszony-domek-baba-jagi/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (147, N'Opuszczony dom w P³awnej', 3, NULL, 49.75502, 20.9513969, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-w-plawnej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (148, N'Dom', 3, NULL, 50.69211, 19.2510986, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (149, N'Opuszczona Winiarnia Fabryka', 13, NULL, 50.4364624, 16.65373, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-winiarnia-fabryka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (150, N'Opuszczone osiedle wielorodzinne &#8211; 6 budynków', 3, NULL, 49.9992828, 19.9540787, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-osiedle-wielorodzinne-6-budynkow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (151, N'Pa³ac/willa oraz kilka budynków', 7, NULL, 50.01869, 19.792696, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-willa-oraz-kilka-budynkow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (152, N'Restauracja Baszta', 5, NULL, 52.1281128, 21.0169849, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/restauracja-baszta/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (153, N'Oœrodek wypoczynkowy &#8211; Eldorado', 2, NULL, 50.3924751, 16.3872356, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-eldorado/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (154, N'Pa³ac w lasku', 7, NULL, 53.26096, 17.78052, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-lasku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (155, N'Opuszczone Domy Kozieg³owy', 3, NULL, 52.44904, 16.98472, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-domy-kozieglowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (156, N'opuszczona budowa w Kobylnicy', 13, NULL, 52.44986, 17.08164, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-budowa-w-kobylnicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (157, N'Opuszczona oczyszczalnia', 13, NULL, 49.48285, 20.0487633, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-oczyszczalnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (158, N'Oœrodek &#8220;Dzika Ró¿a&#8221;', 2, NULL, 53.65442, 21.3982449, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-dzika-roza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (159, N'opuszczona poczta', 13, NULL, 52.4472, 17.0801945, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-poczta/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (160, N'(ruiny) bunkier po materia³ach wybuchowych', 8, NULL, 49.838356, 19.5282726, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-bunkier-po-materialach-wybuchowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (161, N'Opuszczone Kino Uciecha', 13, NULL, 51.7444878, 15.595336, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-kino-uciecha/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (162, N'Opuszczony Serwis Samochodowy', 13, NULL, 52.2900124, 21.08391, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-serwis-samochodowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (163, N'Ruiny dworku', 3, NULL, 51.73353, 19.651762, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-dworku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (164, N'Opuszczony Hotel', 2, NULL, 53.59362, 21.6821785, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-hotel-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (165, N'Opuszczona stodo³a', 6, NULL, 49.5363655, 19.1723919, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stodola-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (166, N'Pa³ac £¹czany', 7, NULL, 51.0575829, 17.75544, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-laczany/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (167, N'Dom Asystenta &#8211; Gdañski Uniwersytet Medyczny', 2, NULL, 54.36739, 18.60906, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-asystenta-gdanski-uniwersytet-medyczny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (168, N'Opuszczone gospodarstwo rolne', 6, NULL, 51.91833, 19.3613377, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gospodarstwo-rolne-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (169, N'Niedokoñczony budynek mieszkalny na Stawowej', 13, NULL, 50.0987473, 19.8753319, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-budynek-mieszkalny-na-stawowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (170, N'Wie¿a widokowa z XIX w.  Warszyn.', 7, NULL, 53.10291, 15.2327156, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-widokowa-z-xix-w-warszyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (171, N'Dwie zrujnowane wille', 3, NULL, 52.2557526, 20.9459438, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwie-zrujnowane-wille/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (172, N'Dworek', 7, NULL, 49.98524, 19.2524014, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (173, N'Opuszczony Dworek St¹¿ki', 7, NULL, 53.3866043, 18.161087, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworek-stazki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (174, N'Stary Cmentarz Mennonicki', 13, NULL, 53.34188, 18.3347759, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-cmentarz-mennonicki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (175, N'Dawny budynek komitetu PZPR w Bytomiu', 9, NULL, 50.35121, 18.926815, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawny-budynek-komitetu-pzpr-w-bytomiu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (176, N'opuszczony bunkier', 10, NULL, 51.0933952, 17.0494175, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-bunkier-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (177, N'Stare m³yny', 4, NULL, 51.89147, 17.7871552, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stare-mlyny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (178, N'Stara gorzelnia.', 13, NULL, 52.1017151, 16.9054432, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-gorzelnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (179, N'Camping nr.26 w Antoninie.', 2, NULL, 51.509964, 17.846674, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/camping-nr-26-w-antoninie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (180, N'Bastion Filip i Brama Chy¿añska &#8212; Twierdza Kostrzyn', 10, NULL, 52.5763359, 14.6418037, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bastion-filip-i-brama-chyzanska-twierdza-kostrzyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (181, N'Opuszczony wojskowy szpital uzdrowiskowy', 11, NULL, 52.87843, 18.7977047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-wojskowy-szpital-uzdrowiskowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (182, N'Dom na Krótkiej', 3, NULL, 53.17402, 18.5741253, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-na-krotkiej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (183, N'Opusczona kot³ownia &#8211; Be³chatów', 13, NULL, 51.3758659, 19.35292, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opusczona-kotlownia-belchatow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (184, N'Opuszczony amfiteatr', 13, NULL, 53.1398468, 17.59078, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-amfiteatr-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (185, N'Opuszczony M³yn', 13, NULL, 51.1521072, 21.97463, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-mlyn-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (186, N'Opuszczona Spi¿arnia &#8211; Dawny (nie istniej¹cy ju¿ kompleks pa³acowy)', 13, NULL, 51.8759346, 19.47248, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-spizarnia-dawny-nie-istniejacy-juz-kompleks-palacowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (187, N'Pa³ac w Barzynie (Pa³ac rodu von Bodeck)', 7, NULL, 53.98536, 19.5713024, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-barzynie-palac-rodu-von-bodeck/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (188, N'Ruiny zespo³u m³yñskiego', 9, NULL, 54.00896, 19.47575, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zespolu-mlynskiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (189, N'Opuszczone gospodarstwo', 3, NULL, 50.4081345, 21.0727139, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gospodarstwo-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (190, N'AGROMA Schron atomowy Czarna Bia³ostocka', 10, NULL, 53.3134155, 23.23722, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/agroma-schron-atomowy-czarna-bialostocka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (191, N'Fort  Sarbinowo', 10, NULL, 52.6205826, 14.6659813, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-sarbinowo-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (192, N'Sporej wielkosci zajazd / hotel przy trasie DK60 pomiêdzy Goœtyniem a P³ockiem.', 2, NULL, 52.45592, 19.5810452, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sporej-wielkosci-zajazd-hotel-przy-trasie-dk60-pomiedzy-gostyniem-a-plockiem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (193, N'9 Dywizjon Obrony Powietrznej', 10, NULL, 52.19943, 20.3780727, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/9-dywizjon-obrony-powietrznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (194, N'Opuszczona rzeŸnia', 13, NULL, 53.1364021, 17.5880337, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-rzeznia-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (195, N'Koœció³ ewangelicki z drugiej po³owy XIX wieku', 13, NULL, 52.04039, 18.0564442, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-ewangelicki-z-drugiej-polowy-xix-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (196, N'Dom dziwactw', 3, NULL, 53.17312, 18.5888672, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-dziwactw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (197, N'Opuszczony dom', 3, NULL, 51.8519, 19.38233, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-15/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (198, N'opuszczona szko³a', 13, NULL, 50.8142471, 19.1107235, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-szkola-9/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (199, N'Opuszczony wagon', 1, NULL, 51.35211, 19.4346, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-wagon/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (200, N'Wapiennik', 13, NULL, 50.85958, 19.19238, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wapiennik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (201, N'Opuszczony pa³ac w S³awie', 7, NULL, 51.8768158, 16.0693932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-w-slawie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (202, N'opuszczone dom- Wroc³aw', 3, NULL, 51.0905457, 17.0135384, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-dom-wroclaw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (203, N'Serwis £odzi', 4, NULL, 54.3115959, 18.9308186, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/serwis-lodzi/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (204, N'Opuszczona Drukarnia Czerwonak', 9, NULL, 52.469677, 16.9786034, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-drukarnia-czerwonak/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (205, N'Opuszczone kino/dyskoteka BRONX', 9, NULL, 50.12758, 19.3908882, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-kino-dyskoteka-bronx/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (206, N'Opuszczona Baza Wojskowa', 10, NULL, 50.1159744, 19.9639, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-baza-wojskowa-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (207, N'Opuszczona Ubojnia w Liwie', 13, NULL, 53.7269554, 19.8388824, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-ubojnia-w-liwie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (208, N'Strzelnica', 10, NULL, 53.1599464, 16.7211914, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/strzelnica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (209, N'Pozosta³oœci dawnego kompleksu budynków', 4, NULL, 50.27187, 18.6899319, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozostalosci-dawnego-kompleksu-budynkow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (210, N'Stara paszarnia', 6, NULL, 52.2629051, 19.1638813, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-paszarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (211, N'Opuszczony budek sprzeda¿y i produkcji mebli', 9, NULL, 52.40033, 16.79892, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budek-sprzedazy-i-produkcji-mebli/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (212, N'Stare zabudowanie gospodarcze', 6, NULL, 54.67016, 18.4541988, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stare-zabudowanie-gospodarcze-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (213, N'Opuszczona kamienica', 3, NULL, 50.2758636, 18.9770985, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-6/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (214, N'Opuszczony pa³acyk &#8211; Osina', 7, NULL, 53.02965, 15.1919031, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palacyk-osina/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (215, N'Pozosta³oœci po niemieckim cmentarzu', 13, NULL, 51.89519, 19.255085, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozostalosci-po-niemieckim-cmentarzu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (216, N'Opuszczona fabryka ko¿uchów.', 4, NULL, 51.3839531, 22.172142, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-kozuchow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (217, N'Opuszczona Kopalnia Soli im. Tadeusza Koœciuszki w Wapnie', 4, NULL, 52.9089, 17.4682617, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kopalnia-soli-im-tadeusza-kosciuszki-w-wapnie-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (218, N'Niedokoñczony dom', 3, NULL, 53.07281, 18.7630177, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-dom-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (219, N'Jednostka Wojsk in¿ynieryjnych', 9, NULL, 53.04034, 18.59157, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-wojsk-inzynieryjnych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (220, N'Opuszczona stacja kolejowa Zabrze Makoszowy', 1, NULL, 50.28188, 18.767395, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stacja-kolejowa-zabrze-makoszowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (221, N'Opuszczona zabytkowa kamienica', 3, NULL, 53.3398361, 15.0453644, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-zabytkowa-kamienica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (222, N'Opuszczona cegielnia Sztutowo', 4, NULL, 54.318882, 19.1588955, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cegielnia-sztutowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (223, N'Stare zabudowanie gospodarcze', 6, NULL, 54.6692657, 18.4517536, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stare-zabudowanie-gospodarcze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (224, N'Opuszczona leœniczówka w której krêcono film: &#8220;W lesie dziœ nie zaœnie nikt&#8221;', 3, NULL, 52.3818855, 20.55755, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-lesniczowka-w-ktorej-krecono-film-w-lesie-dzis-nie-zasnie-nikt/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (225, N'Stary cmentarz ¿ydowski.', 13, NULL, 50.79596, 20.4711, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-cmentarz-zydowski-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (226, N'Opuszczony dom z przybudówk¹', 3, NULL, 50.0690956, 19.1483536, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-z-przybudowka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (227, N'Opusczona Ubojnia', 6, NULL, 53.028, 18.7426758, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opusczona-ubojnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (228, N'Opuszczone altany we Wzgórzach Krzesz³awickich', 13, NULL, 50.09823, 20.0434723, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-altany-we-wzgorzach-krzeszlawickich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (229, N'Opuszczone Poci¹gi-Bydgoszcz', 1, NULL, 53.1204071, 18.0615234, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-pociagi-bydgoszcz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (230, N'Pustostan', 3, NULL, 54.59095, 18.2282352, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pustostan/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (231, N'Opuszczone boiska', 13, NULL, 50.31741, 18.61084, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-boiska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (232, N'Nie dokoñczona willa w Krakowie', 3, NULL, 50.0910568, 19.9861336, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nie-dokonczona-willa-w-krakowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (233, N'Opuszczony dom w Krakowie', 3, NULL, 50.0919, 19.98442, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-w-krakowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (234, N'Opuszczona kamienica', 3, NULL, 50.271843, 19.0096512, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (235, N'Opuszczony Pa³ac w Wilanowie.', 7, NULL, 50.6668739, 20.3027344, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-w-wilanowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (236, N'OPUSZCZONA SZKO£A PODSTAWOWA TARNAWA-GÓRA', 13, NULL, 50.65053, 19.8731518, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-szkola-podstawowa-tarnawa-gora/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (237, N'Bunkier/Schron B45', 10, NULL, 53.0307159, 18.6391449, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-schron-b45/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (238, N'Hurtownia lumpexu', 13, NULL, 52.2124443, 21.8625355, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hurtownia-lumpexu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (239, N'Opuszczona buda PGR&#8217;owska', 6, NULL, 49.8754921, 22.8997574, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-buda-pgrowska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (240, N'Opuszczony dom', 3, NULL, 49.86967, 22.8338337, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-14/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (241, N'Opuszczony budynek kolejowy', 1, NULL, 49.8454056, 22.8220425, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (242, N'Willa Hemplów w Wolicy', 7, NULL, 50.7514877, 20.47467, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-hemplow-w-wolicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (243, N'Spichlerz dawnego kompleksu M³ynów nad Czarn¹ Nid¹', 4, NULL, 50.77358, 20.4568768, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spichlerz-dawnego-kompleksu-mlynow-nad-czarna-nida/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (244, N'Opuszczona stra¿ po¿arna', 13, NULL, 52.0986938, 17.0156727, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-straz-pozarna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (245, N'Opuszczony basen Polkowice', 13, NULL, 51.49525, 16.0686855, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-basen-polkowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (246, N'Dom dziecka', 7, NULL, 49.761322, 21.5956669, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-dziecka-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (247, N'Opuszczona sto³ówka wojskowa &#8220;Kantyna&#8221;', 10, NULL, 53.1662636, 16.7203331, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stolowka-wojskowa-kantyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (248, N'Koszary wojskowe', 10, NULL, 53.17024, 16.7074585, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/koszary-wojskowe-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (249, N'Opuszczone hale', 4, NULL, 53.085022, 18.614048, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-hale-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (250, N'Dom Anny', 3, NULL, 53.46223, 18.621273, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-anny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (251, N'Fort Czarnów', 10, NULL, 52.524437, 14.7611, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-czarnow-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (252, N'Dawny schron obrony cywilnej', 10, NULL, 52.0665245, 20.9099026, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawny-schron-obrony-cywilnej-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (253, N'Opuszczony Dom Przy Krzy¿u', 3, NULL, 50.8910446, 18.915905, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-przy-krzyzu-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (254, N'Opuszczony PGR', 6, NULL, 50.3368225, 18.585125, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (255, N'Opuszczona Lisiarnia', 13, NULL, 50.6600876, 23.1874466, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-lisiarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (256, N'Opuszczone hale', 4, NULL, 50.35022, 19.0184231, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-hale-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (257, N'Opuszczony Dom przy Krzy¿u', 3, NULL, 50.890728, 18.91442, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-przy-krzyzu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (258, N'Opuszczony dom Szamana z Wyposa¿eniem', 3, NULL, 50.9136772, 20.886097, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-szamana-z-wyposazeniem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (259, N'Opuszczona fabryka/warsztat', 13, NULL, 53.33734, 15.0571413, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-warsztat/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (260, N'Opuszczony pustostan', 3, NULL, 53.3373642, 15.0576744, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pustostan/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (261, N'Stary browar Kuppermanna', 13, NULL, 53.340374, 15.0426245, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-browar-kuppermanna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (262, N'Sztutowo cegielnia', 13, NULL, 54.2044258, 19.3675232, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sztutowo-cegielnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (263, N'PGR ³abêdy', 6, NULL, 50.3359528, 18.5848446, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pgr-labedy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (264, N'Kot³ownia', 4, NULL, 52.2816, 16.6113281, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kotlownia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (265, N'Nie dobudowany biurowiec', 9, NULL, 52.1874046, 20.9619141, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nie-dobudowany-biurowiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (266, N'Opuszczony dom przy ul. Radarowej', 3, NULL, 52.1874046, 20.9619141, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-przy-ul-radarowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (267, N'Restauracja olimpijska', 5, NULL, 52.2562523, 20.9444637, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/restauracja-olimpijska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (268, N'Stary poci¹g i ma³e ruiny', 13, NULL, 51.5899239, 15.3206062, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-pociag-i-male-ruiny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (269, N'Opuszczona restauracja', 5, NULL, 54.54832, 18.4385433, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-restauracja-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (270, N'PA£AC SZEMBEKÓW, PORÊBA ¯EGOTY', 7, NULL, 50.05344, 19.567009, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-szembekow-poreba-zegoty/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (271, N'Opuszczony dom i kurnik', 3, NULL, 50.0497665, 18.4370537, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-i-kurnik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (272, N'Pa³ac w Przeczowie Dolnym', 7, NULL, 51.0552063, 17.5561523, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-przeczowie-dolnym/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (273, N'Palac z XVIII wieku', 7, NULL, 51.66254, 15.8886557, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-z-xviii-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (274, N'Koœció³ ewangelicki w KuŸniczysku', 7, NULL, 51.37178, 17.1936035, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-ewangelicki-w-kuzniczysku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (275, N'&#8220;Wieczna budowa&#8221;', 3, NULL, 50.80908, 19.0965233, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieczna-budowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (276, N'OSRODEK WCZASOWY / pensjonat &#8211; BIALOBRZEGI', 2, NULL, 52.45653, 21.0711384, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wczasowy-pensjonat-bialobrzegi/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (277, N'stary komin', 13, NULL, 52.21434, 20.6542969, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-komin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (278, N'Dom Wczasowy Halny', 2, NULL, 49.647625, 18.8727951, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-wczasowy-halny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (279, N'Budynek obok maszyny wyci¹gowej i ³aŸni na terenie by³ej kopalni KWK ANNA', 4, NULL, 50.0500832, 18.3911133, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-obok-maszyny-wyciagowej-i-lazni-na-terenie-bylej-kopalni-kwk-anna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (280, N'2 opuszczone kamienice', 3, NULL, 53.33606, 15.052906, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/2-opuszczone-kamienice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (281, N'Ruiny PGR-u', 6, NULL, 51.4990273, 16.2740326, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-pgr-u/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (282, N'Opuszczone bloki mieszkalne', 3, NULL, 50.28742, 18.7265587, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-bloki-mieszkalne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (283, N'Opuszczona baza paliwowa', 4, NULL, 52.27069, 21.09495, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-baza-paliwowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (284, N'Piekarnia', 13, NULL, 50.8204346, 19.109726, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/piekarnia-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (285, N'Zamek Fa³kowskich', 7, NULL, 51.138, 20.10498, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-falkowskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (286, N'Dom mieszkalny', 3, NULL, 49.5899277, 19.3043957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-mieszkalny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (287, N'Opuszczony sklep', 13, NULL, 49.6899261, 19.9571266, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-sklep/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (288, N'Hotel lub pensjonat', 2, NULL, 49.97626, 20.0588341, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-lub-pensjonat/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (289, N'Stary szpital w Nowym Targu', 11, NULL, 49.48834, 20.0317669, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-szpital-w-nowym-targu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (290, N'Opuszczony Dom w pobli¿u Gniezna', 3, NULL, 52.49616, 17.512207, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-w-poblizu-gniezna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (291, N'Stanica ¯wirowni', 4, NULL, 49.7043152, 19.1810551, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stanica-zwirowni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (292, N'Dom po po¿arze z meblami', 3, NULL, 50.04066, 18.3819714, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-po-pozarze-z-meblami/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (293, N'Opuszczony dom ze zdjêciami', 3, NULL, 50.02748, 18.4055328, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-ze-zdjeciami/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (294, N'Hotel B&amp;B', 2, NULL, 51.12502, 16.9506588, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-bb/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (295, N'Color Park w Nowym Targu', 4, NULL, 49.446476, 20.0195141, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/color-park-w-nowym-targu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (296, N'OPUSZCZONY DOM Z GARA¯AMI', 3, NULL, 52.1922073, 22.0914669, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-z-garazami/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (297, N'Dzies³aw, Ruiny pa³acu', 7, NULL, 51.4733124, 16.3676014, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dzieslaw-ruiny-palacu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (298, N'Opuszczony dom przy rynku', 3, NULL, 50.19997, 19.2812519, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-przy-rynku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (299, N'Lotnisko wojskowe', 10, NULL, 54.12455, 20.1041145, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lotnisko-wojskowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (300, N'Hotel ASTRA', 2, NULL, 54.3873177, 19.8341141, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-astra/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (301, N'Ruiny cegielni w Wo¿uczynie', 13, NULL, 50.569355, 23.5707531, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-cegielni-w-wozuczynie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (302, N'Opuszczona pralnia chemiczna mewa', 4, NULL, 52.16557, 22.2792778, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-pralnia-chemiczna-mewa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (303, N'Lokomotywownia Katowice', 1, NULL, 50.25812, 19.0066566, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lokomotywownia-katowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (304, N'PGR w drzonowie', 6, NULL, 51.8939552, 15.3394547, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pgr-w-drzonowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (305, N'Opuszczona Kamienica', 13, NULL, 50.7920456, 19.11621, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (306, N'Stary M³yn', 13, NULL, 50.7086334, 19.4458, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-mlyn-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (307, N'Ruiny dworu Kloczkowskiej', 7, NULL, 51.76784, 19.621582, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-dworu-kloczkowskiej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (308, N'Cmentarz wojenny z czasów I wojny', 13, NULL, 51.76784, 19.621582, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-wojenny-z-czasow-i-wojny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (309, N'Bar „Pod Kogutem” Luæmierz -Las', 3, NULL, 51.8985748, 19.3728027, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bar-pod-kogutem-lucmierz-las/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (310, N'Willa cyganów', 3, NULL, 51.68205, 19.33296, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-cyganow-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (311, N'Dawne browary lubusz', 8, NULL, 51.92575, 15.50842, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawne-browary-lubusz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (312, N'Tabór wagonów osobowych', 1, NULL, 51.2368927, 22.6252575, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tabor-wagonow-osobowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (313, N'Opuszczone budynki mieszkalne', 3, NULL, 52.3156929, 21.080801, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki-mieszkalne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (314, N'Opuszczony Oœrodek kolonii letnich', 2, NULL, 51.0478134, 19.0303211, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-kolonii-letnich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (315, N'Bunkier Linii Mo³otowa', 10, NULL, 50.3328819, 23.5011673, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-linii-molotowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (316, N'Willa Chimera', 3, NULL, 52.1214066, 20.6657143, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-chimera/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (317, N'Oœrodek wypoczynkowy stoczni gdañskiej', 2, NULL, 54.220974, 17.9647923, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-stoczni-gdanskiej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (318, N'opuszczony dom obok odlewni', 3, NULL, 52.1650352, 22.2606983, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-obok-odlewni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (319, N'Fabryka prochu i amunicji  DAG Fabrik Bromberg', 13, NULL, 53.0683365, 18.07229, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-prochu-i-amunicji-dag-fabrik-bromberg/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (320, N'Nawiedzony Dom w Myszkowie', 3, NULL, 50.5692825, 19.3359375, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nawiedzony-dom-w-myszkowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (321, N'Pusty dom', 3, NULL, 54.34115, 18.3658257, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pusty-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (322, N'Opuszczona cukrownia &#8211; G³ogów', 13, NULL, 51.65515, 16.1193047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cukrownia-glogow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (323, N'Restauracja Neptun', 5, NULL, 41.5579224, 13.1066895, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/restauracja-neptun/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (324, N'Opuszczony basen', 13, NULL, 51.649044, 16.0671158, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-basen-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (325, N'Opuszczony Stary cmentarz ¿ydowski w Gliwicach', 13, NULL, 50.299614, 18.6779785, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-stary-cmentarz-zydowski-w-gliwicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (326, N'Opuszczony Dworzec PKP', 1, NULL, 50.55186, 21.1578236, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworzec-pkp-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (327, N'Opuszczony zak³ad przemys³owy', 4, NULL, 52.209446, 20.8880138, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zaklad-przemyslowy-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (328, N'Dwór Ferdynanda Kalksteina', 3, NULL, 52.61887, 17.2037086, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-ferdynanda-kalksteina/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (329, N'SZKO£A PODSTAWOWA &#8211; TARNAWA-GÓRA', 3, NULL, 50.65071, 19.8731937, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkola-podstawowa-tarnawa-gora/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (330, N'Koniecpolskie Zak³ady P³yt Pilœniowych', 4, NULL, 50.7774353, 19.699194, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/koniecpolskie-zaklady-plyt-pilsniowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (331, N'Opuszczona Willa w Wo³ominie', 3, NULL, 52.362545, 21.23953, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-willa-w-wolominie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (332, N'Forty Beniaminów', 10, NULL, 52.43863, 21.10465, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/forty-beniaminow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (333, N'Opuszczona Willa', 3, NULL, 52.36217, 21.2397976, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-willa-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (334, N'Opuszczona budowa bloku', 13, NULL, 52.27985, 20.9227142, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-budowa-bloku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (335, N'STARA HALA TARGOWA', 13, NULL, 50.29096, 19.0003719, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-hala-targowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (336, N'Opuszczony Zak³ad Jubilerski Juwelia', 3, NULL, 52.2797279, 20.9235344, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zaklad-jubilerski-juwelia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (337, N'Opuszczony dom w Pieninach Spiskich', 3, NULL, 49.41406, 20.22237, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-w-pieninach-spiskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (338, N'Wymar³y dom dziecka w Nowym Targu', 3, NULL, 49.49829, 20.0376453, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wymarly-dom-dziecka-w-nowym-targu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (339, N'Dawne browary zachodnie lubusz', 8, NULL, 51.9261322, 15.5094852, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawne-browary-zachodnie-lubusz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (340, N'Cegielnia w Topoli', 4, NULL, 50.2915878, 20.4392529, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-w-topoli/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (341, N'Pa³ac Morstinów w P³awowicach', 7, NULL, 50.1734772, 20.4139271, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-morstinow-w-plawowicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (342, N'Stra¿acka Wie¿a Obserwacyjna', 13, NULL, 51.2042542, 22.5286274, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/strazacka-wieza-obserwacyjna-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (343, N'opuszczona jednostka', 10, NULL, 51.94974, 20.14147, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-jednostka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (344, N'Urbex Mysiad³o/Piaseczno/Warszawa.', 13, NULL, 52.10159, 21.021862, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/urbex-mysiadlo-piaseczno-warszawa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (345, N'Budynek administracyjny &#8220;Ch³odni Kielce&#8221;', 9, NULL, 50.8859253, 20.62932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-administracyjny-chlodni-kielce/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (346, N'Opuszczone miejsce do sprawiania ryb i wêdzarnia', 6, NULL, 52.05192, 21.0285435, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-miejsce-do-sprawiania-ryb-i-wedzarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (347, N'Opuszczona fabryka w stanie surowym', 13, NULL, 53.1172, 17.2980175, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-w-stanie-surowym/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (348, N'Opuszczony dwór', 7, NULL, 53.4992142, 17.62883, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dwor-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (349, N'Spalony dom przy torach', 3, NULL, 52.06016, 21.0242214, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spalony-dom-przy-torach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (350, N'Opuszczony pa³ac w Ogrodnicy', 7, NULL, 51.14756, 16.570322, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-w-ogrodnicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (351, N'Dom Olimpijczyka Rulewo', 3, NULL, 53.5519333, 18.6046638, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-olimpijczyka-rulewo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (352, N'KuŸnia i Gorzelnia Rulewo', 4, NULL, 53.5521622, 18.6043186, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kuznia-i-gorzelnia-rulewo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (353, N'PGR, hala, ule', 6, NULL, 53.55117, 18.6033764, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pgr-hala-ule/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (354, N'Fabryka Klimontów', 13, NULL, 50.20413, 20.31829, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-klimontow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (355, N'Ruiny M³yna', 13, NULL, 51.2173424, 22.5434837, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-mlyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (356, N'Opuszczone Ÿród³o wody', 13, NULL, 51.3793526, 20.226099, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-zrodlo-wody/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (357, N'Pa³ac przekszta³cony na zak³ad poprawczy', 7, NULL, 53.7828026, 15.3424072, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-przeksztalcony-na-zaklad-poprawczy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (358, N'Stra¿acka wie¿a obserwacyjna', 13, NULL, 51.20506, 22.5295219, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/strazacka-wieza-obserwacyjna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (359, N'Lokomotywownia', 1, NULL, 51.2272263, 382.56308, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lokomotywownia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (360, N'Cmentarzysko poci¹gów Bydgoszcz', 1, NULL, 53.13598, 18.0462341, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarzysko-pociagow-bydgoszcz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (361, N'Schron', 10, NULL, 50.3974266, 18.5955124, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (362, N'Koœció³ poewangelicki.', 13, NULL, 52.62111, 18.0410957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-poewangelicki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (363, N'Mauzoleum rodziny Cohnów &#8211; ruiny.', 13, NULL, 52.1018143, 17.47824, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mauzoleum-rodziny-cohnow-ruiny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (364, N'Pa³ac z koñca XIX w.', 9, NULL, 52.10102, 17.4767475, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-z-konca-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (365, N'Opuszczona cegielnia', 4, NULL, 49.99801, 22.1951714, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cegielnia-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (366, N'Podziemne Miasto Osówka/ Riese', 10, NULL, 50.6743774, 16.4176941, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/podziemne-miasto-osowka-riese/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (367, N'D.W Gra¿yna', 2, NULL, 49.43151, 20.71149, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/d-w-grazyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (368, N'Opuszczony pa³ac z koñca XIX w.', 7, NULL, 52.0948753, 17.4730682, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-z-konca-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (369, N'Stara fabryka', 4, NULL, 51.75294, 19.47818, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-fabryka-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (370, N'Opuszczone budynki administracyjne, Piaseczno', 4, NULL, 52.0897369, 21.0298061, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki-administracyjne-piaseczno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (371, N'Opuszczony PGR Przybrda', 6, NULL, 53.8230858, 16.8424988, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-przybrda/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (372, N'Carska szko³a', 13, NULL, 52.21217, 22.4506855, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/carska-szkola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (373, N'13 Batalion Artylerii Sta³ej', 10, NULL, 53.9438934, 14.4724789, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/13-batalion-artylerii-stalej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (374, N'Cmentarz rodzinny rodu von Treskov z XIX wieku', 13, NULL, 52.4976349, 16.9534054, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-rodzinny-rodu-von-treskov-z-xix-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (375, N'Oœrodek wypoczynkowy', 2, NULL, 50.3878975, 16.8576412, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (376, N'Ruiny pa³acyku w Radoniach', 7, NULL, 52.05856, 20.656599, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-palacyku-w-radoniach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (377, N'Ruiny starej cegielni', 13, NULL, 51.2103233, 19.5391846, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-starej-cegielni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (378, N'KINO / DOM KULTURY', 13, NULL, 52.1065063, 21.3052368, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kino-dom-kultury/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (379, N'Pa³ac w Czerniewie', 7, NULL, 52.2392845, 19.8694515, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-czerniewie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (380, N'Pa³ac w Bieczu', 7, NULL, 51.64359, 14.9046707, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-bieczu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (381, N'opuszczony domek', 3, NULL, 52.21434, 21.2255859, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-domek-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (382, N'Pa³ac Siedlimowice', 7, NULL, 50.93106, 16.5737133, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-siedlimowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (383, N'Opuszczony budynek', 3, NULL, 51.72273, 19.7134, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-6/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (384, N'Nieczynna kot³ownia HCP.', 13, NULL, 52.379837, 16.9139347, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieczynna-kotlownia-hcp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (385, N'&#8220;Rakarnia&#8221;', 13, NULL, 53.42254, 18.5038967, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rakarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (386, N'Domek Wiejska 2', 3, NULL, 53.0961227, 18.6197929, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/domek-wiejska-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (387, N'Opuszczony domek', 3, NULL, 52.26919, 20.8878422, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-domek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (388, N'Spa Morena w £agowie.', 2, NULL, 52.338, 15.29932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spa-morena-w-lagowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (389, N'Stacja PKP', 1, NULL, 53.7475433, 18.7547569, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-pkp-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (390, N'Pa³ac w Piotrowie (k.Brodnicy).', 7, NULL, 52.1306648, 16.8658314, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-piotrowie-k-brodnicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (391, N'Opuszczony basen', 13, NULL, 50.0142937, 19.9226341, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-basen-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (392, N'Oficyna przypa³acowa.', 7, NULL, 52.7261925, 16.9128628, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/oficyna-przypalacowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (393, N'Pa³ac w We³nie.', 7, NULL, 52.7254944, 16.9123573, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-welnie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (394, N'Most kolejowy w Chrzypsku Ma³ym.', 1, NULL, 52.6154747, 16.2527161, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/most-kolejowy-w-chrzypsku-malym/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (395, N'Opuszczona wieœ w Kampinosie', 3, NULL, 52.33534, 20.3686523, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-wies-w-kampinosie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (396, N'Wiatrak holenderski', 6, NULL, 52.60182, 18.2171345, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wiatrak-holenderski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (397, N'Stara gorzelnia w Zakrzewie.', 6, NULL, 52.6019135, 17.38577, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-gorzelnia-w-zakrzewie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (398, N'Stara cegielnia Fabianowo.', 13, NULL, 52.3617325, 16.8637123, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-cegielnia-fabianowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (399, N'Opuszczone budynki', 6, NULL, 54.77936, 21.166996, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (400, N'Opuszczony dom', 3, NULL, 50.12058, 18.85254, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-13/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (401, N'Opuszczony Magazyn zabawek', 13, NULL, 49.6184273, 20.7041531, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-magazyn-zabawek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (402, N'Zbiornik wodny', 13, NULL, 50.41771, 18.7983913, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zbiornik-wodny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (403, N'Stara cegielnia', 4, NULL, 54.289402, 19.4530849, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-cegielnia-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (404, N'Opuszczony Koœció³ Ewangelicki.', 13, NULL, 51.889492, 18.3272247, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kosciol-ewangelicki-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (405, N'Opuszczony budynek', 13, NULL, 51.6589279, 16.105957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (406, N'OPUSZCZONE MIEJSCE WCZASOWE', 13, NULL, 50.41552, 23.203125, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-miejsce-wczasowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (407, N'Cmentarzysko Tadeusza Tabenckiego', 3, NULL, 52.09994, 20.6570435, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarzysko-tadeusza-tabenckiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (408, N'Zespó³ pa³acowo-parkowy Koniecpolskich', 3, NULL, 50.7808266, 19.68793, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-palacowo-parkowy-koniecpolskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (409, N'Nieukoñczony budynek mieszkalny', 3, NULL, 51.61634, 16.35996, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieukonczony-budynek-mieszkalny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (410, N'Bunkier Czarny Piec', 10, NULL, 53.5437355, 20.6307583, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-czarny-piec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (411, N'KAPLICA GROBOWA RODZINY VON LANGENDORFF', 13, NULL, 51.675705, 16.8645287, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kaplica-grobowa-rodziny-von-langendorff/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (412, N'Owczarnia', 6, NULL, 49.6534042, 20.5883789, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/owczarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (413, N'Dawna jednostka wojskowa, obecnie opuszczona', 10, NULL, 54.62387, 16.9822884, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-jednostka-wojskowa-obecnie-opuszczona/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (414, N'Opuszczony Szpital', 11, NULL, 51.4106636, 19.705513, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szpital-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (415, N'Cmentarz ¿ydowski', 13, NULL, 51.4183846, 19.704258, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (416, N'Zak³ady w³ókien chemicznych &#8220;Wistom&#8221;', 4, NULL, 51.5470543, 20.0451565, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-wlokien-chemicznych-wistom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (417, N'Spichlerz, Wichorze', 6, NULL, 53.2974129, 18.5378265, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spichlerz-wichorze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (418, N'RzeŸnia / Ubojnia Bytów', 13, NULL, 54.17057, 17.48474, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rzeznia-ubojnia-bytow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (419, N'Elektrownia Wêglowa Zielonka', 4, NULL, 52.2995949, 21.1664925, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/elektrownia-weglowa-zielonka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (420, N'Szpital zakaŸny', 11, NULL, 53.39508, 23.5228214, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital-zakazny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (421, N'Ruiny Szko³y Podstawowej nr 8', 3, NULL, 50.34982, 18.9329739, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-szkoly-podstawowej-nr-8/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (422, N'Opuszczony market budowlany', 9, NULL, 51.76784, 19.4897461, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-market-budowlany/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (423, N'Fabryka Ceramiki', 13, NULL, 50.46312, 22.5347233, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-ceramiki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (424, N'Ruiny cegielni', 13, NULL, 49.9932022, 18.8994026, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-cegielni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (425, N'Fabryka odzie¿y', 9, NULL, 53.265213, 15.5566406, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-odziezy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (426, N'Pa³ac Bytów', 7, NULL, 53.3441467, 15.5555887, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-bytow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (427, N'ZESPÓ£ PA£ACOWO-PARKOWY, CMENTARZ RODOWY Z KAPLIC¥ &#8211; MAUZOLEUM WIELEÑ', 7, NULL, 52.9033623, 16.1745777, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-palacowo-parkowy-cmentarz-rodowy-z-kaplica-mauzoleum-wielen/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (428, N'Opuszczona restauracja Tokaj pod olsztynkiem', 5, NULL, 53.5442619, 20.27175, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-restauracja-tokaj-pod-olsztynkiem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (429, N'Przedwojenny dom z ogromn¹ histori¹', 3, NULL, 54.5726662, 18.40599, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedwojenny-dom-z-ogromna-historia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (430, N'Magazyny kolejowe i dwie wie¿e ciœnieñ', 1, NULL, 50.9003944, 15.7617121, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyny-kolejowe-i-dwie-wieze-cisnien/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (431, N'Wisz¹ce tory', 1, NULL, 51.109745, 15.8824539, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wiszace-tory/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (432, N'Opuszczony oœrodek Kolonijny', 2, NULL, 51.04681, 19.0317745, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-kolonijny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (433, N'opuszczona stajnia', 6, NULL, 52.13622, 21.0487022, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stajnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (434, N'Opuszczona suszarnia', 6, NULL, 52.2505035, 16.6118011, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-suszarnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (435, N'Opuszczone osiedle', 3, NULL, 52.3140335, 21.07992, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-osiedle/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (436, N'Pa³ac w Notyœcie Wielkim', 7, NULL, 53.90274, 21.4729614, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-notyscie-wielkim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (437, N'Kopalnia soli Wapno', 4, NULL, 52.8823929, 17.4902344, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kopalnia-soli-wapno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (438, N'Stary m³yn', 6, NULL, 52.0105629, 18.505455, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-mlyn-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (439, N'Dorbud', 4, NULL, 50.8862953, 20.62581, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dorbud/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (440, N'Piramida', 5, NULL, 50.4772835, 18.794136, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/piramida/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (441, N'Stary browar, gorzelnia Glisno.', 13, NULL, 52.47454, 15.2389059, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-browar-gorzelnia-glisno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (442, N'Dworek', 7, NULL, 53.9475136, 20.9969654, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (443, N'Dawny areszt œledczy w Krotoszynie', 10, NULL, 51.6998, 17.44629, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawny-areszt-sledczy-w-krotoszynie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (444, N'Obory po PGR-ach', 6, NULL, 53.9416847, 21.0390873, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/obory-po-pgr-ach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (445, N'Dwór WoŸniakowskich/ Biórków Wielki', 3, NULL, 50.1560059, 20.1773357, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-wozniakowskich-biorkow-wielki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (446, N'Opuszczony zajazd', 2, NULL, 51.5742149, 21.9978046, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zajazd/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (447, N'Powojskowe magazyny Grzegórzki Kraków', 10, NULL, 50.0500832, 19.9731445, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/powojskowe-magazyny-grzegorzki-krakow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (448, N'Opuszczona hurtownia przemys³owo-spo¿ywcza', 13, NULL, 50.86567, 20.6282463, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-hurtownia-przemyslowo-spozywcza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (449, N'Opuszczona obora i studnia', 6, NULL, 50.9861, 20.5664063, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-obora-i-studnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (450, N'Cmentarz ¯ydowski', 7, NULL, 50.4523468, 19.6461773, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (451, N'Oczyszczalnia œcieków &#8211; Szyd³ów', 4, NULL, 50.584816, 21.0021687, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/oczyszczalnia-sciekow-szydlow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (452, N'Opuszczony dom', 3, NULL, 51.8629227, 15.7804871, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-12/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (453, N'Bunkier schron', 10, NULL, 52.7290726, 15.3639774, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-schron/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (454, N'Osrodek Turystyki w Kosinie.', 3, NULL, 52.84208, 15.90176, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-turystyki-w-kosinie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (455, N'RzeŸnia &#8220;Meatpol&#8221;', 4, NULL, 52.19604, 18.84409, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rzeznia-meatpol/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (456, N'CENTRUM DYSTRYBUCYJNE SIECI BIEDRONKA, LUBIN', 9, NULL, 51.4167671, 16.1876678, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/centrum-dystrybucyjne-sieci-biedronka-lubin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (457, N'Opuszczona nastawnia kolejowa', 1, NULL, 52.86001, 16.474987, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-nastawnia-kolejowa-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (458, N'Spichlerz', 6, NULL, 52.6121521, 19.5157528, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spichlerz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (459, N'Niedokoñczony i opuszczony zespó³ bloków mieszkalnych.', 9, NULL, 52.1955643, 20.9621964, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-i-opuszczony-zespol-blokow-mieszkalnych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (460, N'Niedokoñczony dom', 3, NULL, 53.08331, 17.87047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-dom-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (461, N'Ruiny stacji pomp PKP', 1, NULL, 50.0454865, 22.0183086, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-stacji-pomp-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (462, N'Opuszczone budynki O¿ar k/ Barlinka', 3, NULL, 53.001564, 15.1611328, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki-ozar-k-barlinka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (463, N'Gorzelnia Glisno', 4, NULL, 52.4694, 15.2490234, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-glisno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (464, N'Opuszczone magazyny', 4, NULL, 52.3528023, 15.442029, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-magazyny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (465, N'Opuszczony stadion pi³karski', 13, NULL, 52.64984, 19.0676575, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-stadion-pilkarski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (466, N'Podziemny bunkier MESKO', 8, NULL, 51.08396, 20.8654461, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/podziemny-bunkier-mesko/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (467, N'Willa AVE', 3, NULL, 49.6211624, 20.6968746, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-ave/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (468, N'Zamek Joannitow w Swobnicy', 7, NULL, 53.0309677, 14.6293688, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-joannitow-w-swobnicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (469, N'Hotel Pensjonat PRL', 2, NULL, 52.9084358, 15.6597576, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-pensjonat-prl/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (470, N'Bunkier ochrony kolei', 10, NULL, 53.6702, 19.8093147, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-ochrony-kolei-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (471, N'Opuszczony oœrodek wypoczynkowy', 2, NULL, 54.3451271, 18.8277779, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (472, N'Opuszczony Dwór', 3, NULL, 51.0160255, 23.6385651, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dwor-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (473, N'Opuszczone osiedle ¯ubr', 3, NULL, 50.023735, 20.1831722, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-osiedle-zubr/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (474, N'Opuszczona Hala z wejœciem na dach.', 4, NULL, 52.141716, 20.923, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-hala-z-wejsciem-na-dach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (475, N'Stacja kolejowa Wieszczyczyn', 1, NULL, 52.0435448, 17.1078167, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-kolejowa-wieszczyczyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (476, N'Ruiny Dworu &#8211; Zamek Œwiêtoszowice', 7, NULL, 50.3654556, 18.7341728, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-dworu-zamek-swietoszowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (477, N'Ruiny basenu &#8220;Liga&#8221;', 13, NULL, 50.3253326, 18.95831, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-basenu-liga/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (478, N'Pa³ac wola boglewska', 7, NULL, 51.8182449, 20.9897442, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-wola-boglewska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (479, N'Opuszczony Dom w ukrytym miejscu', 3, NULL, 50.5496521, 20.52096, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-w-ukrytym-miejscu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (480, N'Opuszczone Koszary Wojskowe', 10, NULL, 51.1415024, 17.0702, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-koszary-wojskowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (481, N'M³yn pu³tuski', 4, NULL, 52.6929932, 21.0814648, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-pultuski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (482, N'Opuszczona szko³a podstawowa', 13, NULL, 52.7097168, 21.12719, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-szkola-podstawowa-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (483, N'Dworzec kolejowy Manieczki', 1, NULL, 52.1140976, 16.930275, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworzec-kolejowy-manieczki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (484, N'Oœrodek wypoczynkowy', 2, NULL, 49.7845764, 22.3431225, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (485, N'opuszczona piekarnia mechaniczna', 13, NULL, 50.2837334, 19.12091, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-piekarnia-mechaniczna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (486, N'DAG Fabryka Amunicji Alfreda Nobla', 10, NULL, 51.79503, 15.2270508, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dag-fabryka-amunicji-alfreda-nobla/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (487, N'Opuszczona cukrownia', 13, NULL, 52.07213, 16.6322918, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cukrownia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (488, N'Fabryka w parku', 4, NULL, 51.77883, 19.470892, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-w-parku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (489, N'Opuszczony pa³ac i budynki gospodarcze', 7, NULL, 53.54514, 18.93234, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-i-budynki-gospodarcze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (490, N'Opuszczony zak³ad utylizacji zwierz¹t', 4, NULL, 50.9477463, 21.56642, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zaklad-utylizacji-zwierzat/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (491, N'Opuszczona fabryka', 13, NULL, 52.6650772, 19.05735, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-7/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (492, N'Opuszczona Restauracja na Cedzynie', 5, NULL, 50.8770561, 20.7389088, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-restauracja-na-cedzynie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (493, N'FIRMA PRIM', 4, NULL, 51.2185555, 22.5518551, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/firma-prim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (494, N'Opuszczony dom na skowronkowej w Grudzi¹dzu', 3, NULL, 53.4423828, 18.793354, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-na-skowronkowej-w-grudziadzu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (495, N'Opuszczony zak³ad', 4, NULL, 50.1320152, 19.6452389, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zaklad-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (496, N'Ogrodzony teren w Lesie Kabackim', 4, NULL, 52.1199455, 21.0377884, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ogrodzony-teren-w-lesie-kabackim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (497, N'Szpital pulmonologiczny', 11, NULL, 50.77144, 18.9747143, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital-pulmonologiczny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (498, N'Opuszczony domek na Skowronkowej w Grudzi¹dzu', 3, NULL, 53.4426956, 18.7937355, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-domek-na-skowronkowej-w-grudziadzu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (499, N'Góra Ossona', 13, NULL, 50.8011169, 19.2041264, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gora-ossona/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (500, N'RzeŸnia/Baza prze³adunkowa poczty', 4, NULL, 53.09463, 18.0113335, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rzeznia-baza-przeladunkowa-poczty/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (501, N'Opuszczony oœrodek &#8220;Babie Lato&#8221; k. Be³chatowa', 2, NULL, 51.2938766, 19.3423824, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-babie-lato-k-belchatowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (502, N'Park Helenów / Ruiny Fabryki Biedermanna', 4, NULL, 51.78161, 19.4694042, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/park-helenow-ruiny-fabryki-biedermanna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (503, N'Hotel Marwil', 2, NULL, 52.4395065, 22.8662148, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-marwil/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (504, N'Opuszczony magazyn zbo¿a', 4, NULL, 53.05244, 15.1204834, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-magazyn-zboza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (505, N'Willa Milionera', 3, NULL, 53.54857, 18.6590767, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-milionera-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (506, N'Bateria &#8220;Schwerin&#8221;', 10, NULL, 54.4356079, 16.3756924, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bateria-schwerin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (507, N'Niedokoñczona budowa elektrowni wêglowej', 4, NULL, 52.72188, 18.9622726, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczona-budowa-elektrowni-weglowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (508, N'Wysadzony most kolejowy', 1, NULL, 54.0774956, 21.9287529, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wysadzony-most-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (509, N'Opuszczona Strzelnica', 10, NULL, 50.77923, 19.0777588, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-strzelnica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (510, N'Bimbrownia Otyñ', 13, NULL, 51.8462, 15.7143459, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bimbrownia-otyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (511, N'Bobolin Bunkry na pla¿y', 10, NULL, 54.39007, 16.3245182, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bobolin-bunkry-na-plazy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (512, N'Obiekt 50050 Rokada', 10, NULL, 52.1089821, 17.0664883, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/obiekt-50050-rokada/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (513, N'Opuszczone gospodarstwo', 6, NULL, 53.9438667, 21.0527134, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gospodarstwo-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (514, N'Opuszczona Stacja Benzynowa &#8220;Cerber&#8221;', 13, NULL, 51.145462, 23.47421, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stacja-benzynowa-cerber/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (515, N'Opuszczony szpital', 11, NULL, 49.7745, 22.781868, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szpital-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (516, N'Stary m³yn', 13, NULL, 52.21434, 22.5219727, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-mlyn-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (517, N'Opuszczony dom ze stodo³¹', 3, NULL, 51.12408, 23.51529, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-ze-stodola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (518, N'Opuszczona Stodo³a', 6, NULL, 50.7351265, 18.6245918, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stodola-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (519, N'Opuszczony zespó³ dworsko-folwarczny z XIX wieku', 7, NULL, 53.2520676, 17.70996, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zespol-dworsko-folwarczny-z-xix-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (520, N'Ruiny Pa³acu K³odzino', 7, NULL, 53.1104355, 15.10619, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-palacu-klodzino/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (521, N'Pa³ac z XIX w', 7, NULL, 51.2344055, 17.1167, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-z-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (522, N'Stare zak³ady Coopexir', 13, NULL, 52.0653419, 20.5729771, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stare-zaklady-coopexir/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (523, N'Niedokoñczony kompleks.', 2, NULL, 54.1265373, 18.4656582, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-kompleks/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (524, N'Szkó³ka Leœna', 13, NULL, 53.1794968, 18.5737686, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkolka-lesna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (525, N'Spalona posiad³oœæ', 3, NULL, 52.20989, 21.2229671, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spalona-posiadlosc/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (526, N'Budomel', 2, NULL, 52.4576035, 16.84586, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budomel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (527, N'Opuszczony budynek biurowy', 9, NULL, 50.0847931, 19.9413548, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-biurowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (528, N'Osiedle ¯ubr', 3, NULL, 50.0232773, 20.1810474, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osiedle-zubr/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (529, N'Zabytkowa kamienica', 3, NULL, 50.30321, 18.9483681, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabytkowa-kamienica-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (530, N'Zespó³ pa³acowo-parkowy', 7, NULL, 51.27405, 22.6304359, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-palacowo-parkowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (531, N'Dwor Czartoryskich', 7, NULL, 50.4880943, 22.3777771, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-czartoryskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (532, N'Cegielnia w Lesance', 4, NULL, 53.021904, 23.6218071, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-w-lesance/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (533, N'Synagoga ¯ydowska &#8211; Krzepice', 13, NULL, 50.9675674, 18.7133, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/synagoga-zydowska-krzepice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (534, N'M³yn wodny &#8211; Krzepice', 13, NULL, 50.9670677, 18.715559, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-wodny-krzepice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (535, N'Cechownia i budynek biurowy KWK Murcki', 4, NULL, 50.1915855, 19.0370045, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cechownia-i-budynek-biurowy-kwk-murcki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (536, N'Dworek Nowy Duninów', 3, NULL, 52.5808563, 19.47624, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-nowy-duninow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (537, N'Bombosklad &#8211; 6 Pu³k Lotnictwa Myœliwsko-Bombowego w Pile', 10, NULL, 53.22312, 16.7205257, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bombosklad-6-pulk-lotnictwa-mysliwsko-bombowego-w-pile/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (538, N'Opuszczona baza PKS i budynki gospodarcze pgrowskie w Dzier¹¿ni', 4, NULL, 50.5692825, 23.4448242, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-baza-pks-i-budynki-gospodarcze-pgrowskie-w-dzierazni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (539, N'Oœrodek wypoczynkowy Czarnolas', 2, NULL, 49.72993, 19.832655, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-czarnolas/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (540, N'Pa³ac i Dom Stangreta', 7, NULL, 51.6978035, 16.6122513, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-i-dom-stangreta/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (541, N'Opuszczony zamek/wiêzienie', 7, NULL, 53.8189964, 22.3449039, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zamek-wiezienie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (542, N'Czêœciowo opuszczone zak³ady „Nowa Huta”', 4, NULL, 50.0789566, 20.1042023, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/czesciowo-opuszczone-zaklady-nowa-huta/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (543, N'KWK PARY¯', 4, NULL, 50.32757, 19.1674957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kwk-paryz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (544, N'Pasa¿ 222 poznañ', 2, NULL, 52.388958, 16.8532848, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pasaz-222-poznan/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (545, N'Opuszczona fabryka domów', 4, NULL, 52.3100281, 20.9638882, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-domow-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (546, N'Niedokoñczony Wysoki Budynek', 9, NULL, 52.2013474, 21.04723, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-wysoki-budynek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (547, N'Opuszczona Hala', 13, NULL, 50.8614426, 20.6323242, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-hala/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (548, N'Czêœciowo Opuszczona Stacja Kolejowa', 1, NULL, 50.88831, 20.6007385, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/czesciowo-opuszczona-stacja-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (549, N'Dwór obronny Herbutów', 3, NULL, 49.46154, 22.407259, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-obronny-herbutow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (550, N'SADOWO &#8211; Opuszczony cmentarz', 13, NULL, 53.8496857, 21.0380535, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sadowo-opuszczony-cmentarz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (551, N'Opuszczona Stacja Kolejowa w Mikulczycach', 1, NULL, 50.3427353, 18.7703133, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stacja-kolejowa-w-mikulczycach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (552, N'Niedokoñczony Aquapark', 13, NULL, 50.3206, 18.7494564, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-aquapark/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (553, N'Tunel Kolei Piaskowej na Zaborzu', 9, NULL, 50.2936974, 18.8068333, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tunel-kolei-piaskowej-na-zaborzu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (554, N'Opuszczony m³yn z 1901 roku', 6, NULL, 52.62973, 18.918457, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-mlyn-z-1901-roku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (555, N'Opuszczona Szko³a w Mikulczycach', 13, NULL, 50.32708, 18.7943878, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-szkola-w-mikulczycach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (556, N'Opuszczona jednostka Wojskowa.', 10, NULL, 52.4252853, 16.8466282, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-jednostka-wojskowa-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (557, N'Opuszczona kolapnia soli im. T. Koœciuszki w Wapnie', 4, NULL, 52.9089, 17.4682617, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kolapnia-soli-im-t-kosciuszki-w-wapnie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (558, N'Opuszczone budynki kolejowe w Rynkowie', 1, NULL, 53.14677, 17.9956055, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki-kolejowe-w-rynkowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (559, N'Ruiny Fabryki', 13, NULL, 51.22961, 22.5793934, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-fabryki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (560, N'Nieczynny wyciag narciarski', 13, NULL, 49.9385223, 21.90573, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieczynny-wyciag-narciarski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (561, N'Opuszczony dom', 3, NULL, 50.1335335, 19.6414032, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-11/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (562, N'Dawne KZKB', 9, NULL, 50.13179, 19.64465, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawne-kzkb/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (563, N'Biurowiec montanstal', 9, NULL, 50.4753151, 18.7985077, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/biurowiec-montanstal/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (564, N'Ruiny Zamku Sobieñ', 7, NULL, 49.5270271, 22.3294125, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zamku-sobien/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (565, N'Dwór bazar', 7, NULL, 50.99429, 22.8465958, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-bazar/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (566, N'Spó³ka komunalna', 13, NULL, 51.8105774, 16.316452, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spolka-komunalna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (567, N'Browar w Trzcianie', 4, NULL, 50.0734863, 21.8232841, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/browar-w-trzcianie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (568, N'Dworek przy ul. Szkolnej', 13, NULL, 50.04053, 18.7638168, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-przy-ul-szkolnej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (569, N'Kino &#8220;HEL&#8221;', 13, NULL, 51.8009377, 16.3170853, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kino-hel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (570, N'Budynek daewoo', 13, NULL, 51.76784, 18.1054688, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-daewoo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (571, N'Stary dom', 3, NULL, 50.1266174, 19.6505871, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (572, N'Fabryka', 4, NULL, 50.1293259, 19.6490154, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (573, N'&#8220;Stara Sztolnia&#8221;', 4, NULL, 50.12483, 19.6377182, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-sztolnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (574, N'Opuszczony Dom', 3, NULL, 51.7391052, 19.3467178, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-9/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (575, N'Szkieletor Hoblera', 3, NULL, 49.575882, 20.72955, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkieletor-hoblera/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (576, N'Most kolejowy', 1, NULL, 50.1253929, 19.64866, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/most-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (577, N'Budynki po¿ydowskie', 3, NULL, 50.136425, 19.6339149, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynki-pozydowskie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (578, N'Ruiny domu', 3, NULL, 50.1346626, 19.621582, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-domu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (579, N'Budynek piekarni', 4, NULL, 50.136837, 19.63523, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-piekarni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (580, N'Opuszczony dom- Pisary', 9, NULL, 50.1299133, 19.6862125, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-pisary/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (581, N'Opuszczony dom', 3, NULL, 50.13714, 19.6759129, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-8/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (582, N'Piekarnia', 4, NULL, 53.3288727, 19.0694447, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/piekarnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (583, N'Pa³ac', 7, NULL, 53.19093, 17.8634529, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-6/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (584, N'Pa³ac', 7, NULL, 53.24827, 17.7126637, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (585, N'Opuszczony Dom w Swarzêdzu', 3, NULL, 52.41136, 17.089222, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-w-swarzedzu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (586, N'Wie¿a ciœnieñ na Kolberga', 13, NULL, 50.3033752, 18.6767578, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-cisnien-na-kolberga/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (587, N'Bunkier wojskowy', 10, NULL, 54.28859, 18.3437347, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-wojskowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (588, N'Opuszczony kompleks wypoczynkowy', 2, NULL, 54.22959, 18.1235924, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kompleks-wypoczynkowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (589, N'Opuszczony dom', 3, NULL, 53.6963425, 20.4888134, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-7/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (590, N'Pa³acyk Myœliwski', 7, NULL, 51.4750748, 17.6031456, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palacyk-mysliwski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (591, N'Koœció³ Ewangelicki', 13, NULL, 51.89143, 18.3212471, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-ewangelicki-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (592, N'Fabryka garniturów w Krzy¿anowie', 9, NULL, 52.0974121, 16.9139233, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-garniturow-w-krzyzanowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (593, N'Pa³acyk', 7, NULL, 51.2542343, 20.8717041, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palacyk/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (594, N'Opuszczony spichlerz na wzniesieniu z po³owy XIXw.', 7, NULL, 50.130825, 19.6878643, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-spichlerz-na-wzniesieniu-z-polowy-xixw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (595, N'Opuszczony Elewator', 6, NULL, 53.7940941, 20.53298, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-elewator/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (596, N'By³a Tajna Wojskowa 31 Baza Paliwowa-JW 3422', 10, NULL, 50.751812, 18.8697243, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/byla-tajna-wojskowa-31-baza-paliwowa-jw-3422/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (597, N'Budynek dawnego komisariatu policji na rogu Wyspiañskiego', 3, NULL, 52.3976669, 16.9000816, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-dawnego-komisariatu-policji-na-rogu-wyspianskiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (598, N'opuszczona szko³a', 13, NULL, 51.13376, 22.1754, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-szkola-6/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (599, N'Fort Prusy (Nysa)', 10, NULL, 50.48287, 17.3194485, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-prusy-nysa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (600, N'Opuszczony m³yn', 2, NULL, 51.94607, 15.4856787, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-mlyn-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (601, N'Poniemiecka przepompownia œcieków', 13, NULL, 51.94885, 15.4698124, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poniemiecka-przepompownia-sciekow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (602, N'Schron / Szczelina przeciwlotnicza', 10, NULL, 50.2074242, 19.261137, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-szczelina-przeciwlotnicza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (603, N'Dawna Szko³a Podstawowa nr 6 na Pechniku', 13, NULL, 50.21212, 19.2545815, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-szkola-podstawowa-nr-6-na-pechniku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (604, N'Opuszczone kino', 13, NULL, 53.3435, 15.0365486, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-kino/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (605, N'Opuszczona hala enea', 4, NULL, 53.33778, 15.0366678, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-hala-enea/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (606, N'Stara remiza', 13, NULL, 51.59072, 18.1713867, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-remiza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (607, N'Przêdzalnia Scheiblera', 4, NULL, 46.13417, 20.7421875, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedzalnia-scheiblera/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (608, N'Opuszczony kompleks hoteli', 2, NULL, 49.61071, 20.2999878, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kompleks-hoteli/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (609, N'Zak³ady Naprawcze Górnoœl¹skich Kolei W¹skotorowych Bytom', 1, NULL, 50.34546, 18.94043, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-naprawcze-gornoslaskich-kolei-waskotorowych-bytom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (610, N'Areszt Œledczy Zabrze', 13, NULL, 50.3033752, 18.7866211, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/areszt-sledczy-zabrze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (611, N'Gorzelnia Rolnicza', 4, NULL, 52.5730133, 16.6333, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-rolnicza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (612, N'Opuszczona chyba-œwietlica', 3, NULL, 53.09544, 18.1049423, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-chyba-swietlica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (613, N'Bunkry Dozamet', 8, NULL, 51.81667, 15.7147427, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-dozamet/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (614, N'Opuszczony oœrodek zdrowia', 4, NULL, 52.5229073, 18.19336, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-zdrowia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (615, N'Fort Sarbinowo', 13, NULL, 52.6215, 14.6781206, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-sarbinowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (616, N'Astoria', 2, NULL, 50.43644, 16.657011, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/astoria/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (617, N'Stare lotnisko i baza wojskowa Debrzno', 10, NULL, 53.5239029, 17.2732754, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stare-lotnisko-i-baza-wojskowa-debrzno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (618, N'Opuszczony zak³ad przemys³owy', 4, NULL, 54.36321, 18.6765652, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zaklad-przemyslowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (619, N'Opuszczona nastawnia kolejowa', 1, NULL, 54.3886032, 18.6804485, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-nastawnia-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (620, N'Schron Bojowy z 1939 r.', 10, NULL, 49.9848557, 18.9162369, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-bojowy-z-1939-r/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (621, N'Dwór Szlachecki z XVIII w. w Dzierlinie', 7, NULL, 51.62485, 18.675993, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-szlachecki-z-xviii-w-w-dzierlinie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (622, N'dworek', 3, NULL, 52.5450821, 16.3758087, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (623, N'Me³no zespó³ pa³acowo &#8211; parkowy', 7, NULL, 53.4148521, 18.9109039, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/melno-zespol-palacowo-parkowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (624, N'Opuszczony budynek', 13, NULL, 51.88891, 19.3132343, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (625, N'Kêtrzyn dro¿d¿ownia', 4, NULL, 54.07448, 21.3772945, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ketrzyn-drozdzownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (626, N'Zamek w Bolkowie', 7, NULL, 50.91689, 16.105957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-w-bolkowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (627, N'Opuszczona firma reklamowa', 13, NULL, 54.3293381, 18.6547852, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-firma-reklamowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (628, N'Opuszczony schron', 10, NULL, 53.0940247, 18.1054688, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-schron/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (629, N'Opuszczona osiedlowa kot³ownia', 4, NULL, 54.3287926, 18.6321678, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-osiedlowa-kotlownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (630, N'Prochownia', 13, NULL, 50.0380135, 18.4209557, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/prochownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (631, N'Srebrny m³yn', 2, NULL, 54.37804, 18.577282, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/srebrny-mlyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (632, N'Wie¿a ciœnieñ', 1, NULL, 53.5509529, 18.1107063, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-cisnien-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (633, N'Zapasowy Schron Prezydenta', 10, NULL, 52.54841, 17.0132732, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zapasowy-schron-prezydenta/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (634, N'LIPTON opuszczony Dom jednorodzinny', 3, NULL, 51.2223778, 22.6903839, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lipton-opuszczony-dom-jednorodzinny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (635, N'Browar Sobótka Górka', 4, NULL, 50.8904381, 16.7091751, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/browar-sobotka-gorka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (636, N'Pozostalosci dawnej jednostki wojskowej, £azy', 10, NULL, 54.29026, 16.15927, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozostalosci-dawnej-jednostki-wojskowej-lazy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (637, N'Cerkiew parafialna pw Przemienienia Pañskiego', 13, NULL, 49.3823738, 22.3681641, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cerkiew-parafialna-pw-przemienienia-panskiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (638, N'Opuszczone Fortyfikacje Huty Zabrze', 13, NULL, 50.3127136, 18.7865887, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-fortyfikacje-huty-zabrze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (639, N'Opuszczony Budynek(pa³acyk?)', 7, NULL, 53.7033958, 15.2273836, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynekpalacyk/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (640, N'Folwark Cysterski &#8211; Bia³y Dwór', 13, NULL, 50.2104721, 18.4757957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/folwark-cysterski-bialy-dwor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (641, N'Opuszczona pastorówka', 13, NULL, 51.80789, 17.630146, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-pastorowka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (642, N'kamienica na kêpnej', 13, NULL, 52.2505035, 21.0374451, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamienica-na-kepnej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (643, N'MD. Oœrodek wczasowy', 2, NULL, 49.3440056, 20.8939667, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/md-osrodek-wczasowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (644, N'Opuszczona kamienica', 4, NULL, 51.2512741, 22.5679779, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (645, N'Poniemieckie kaplica i cmentarz w ¯erzynie', 13, NULL, 53.7661667, 15.3159714, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poniemieckie-kaplica-i-cmentarz-w-zerzynie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (646, N'Ruiny zamku w Mechowie', 7, NULL, 53.821228, 15.1723547, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zamku-w-mechowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (647, N'Opuszczona kamienica na Ostatnim Groszu', 3, NULL, 50.793087, 19.1283112, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-na-ostatnim-groszu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (648, N'Cmentarz ¯ydowski w Krzepicach', 13, NULL, 50.9657, 18.7170982, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-w-krzepicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (649, N'Szko³a Podstawowa w Borowej', 9, NULL, 51.70828, 19.7329044, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkola-podstawowa-w-borowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (650, N'Zespó³ Folwarczny z XVIIIw', 3, NULL, 52.51643, 16.978405, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-folwarczny-z-xviiiw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (651, N'Opusczony Magazyn Wojskowy II', 10, NULL, 52.4211349, 16.85056, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opusczony-magazyn-wojskowy-ii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (652, N'Fort Fryderyka Wilhelma &#8211;  Kêdzierzyn-KoŸle  Baszta Montalemberta', 10, NULL, 50.34346, 18.1562157, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-fryderyka-wilhelma-kedzierzyn-kozle-baszta-montalemberta/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (653, N'Niedokoñczona budowa', 9, NULL, 50.3069878, 18.7745762, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczona-budowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (654, N'Stara piekarnia', 3, NULL, 50.2688675, 18.7940636, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-piekarnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (655, N'Magazyn wojskowy', 10, NULL, 52.42127, 16.8596363, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyn-wojskowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (656, N'Zamek w Chrzelicach', 7, NULL, 50.4650154, 17.7384777, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-w-chrzelicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (657, N'Dawna Kot³ownia', 10, NULL, 52.4229546, 16.84908, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-kotlownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (658, N'Pa³ac', 7, NULL, 52.9743271, 16.6545219, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (659, N'Dwór', 7, NULL, 52.4584732, 16.5737228, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (660, N'Gorzelnia', 4, NULL, 52.512886, 16.9743061, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (661, N'Dwór', 7, NULL, 52.00985, 16.74544, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (662, N'Opuszczony Pa³ac', 7, NULL, 53.4455338, 15.5185318, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (663, N'Opuszczony dworzec kolejowy', 1, NULL, 50.1958, 17.8214455, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworzec-kolejowy-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (664, N'&#8220;Poczekana&#8221; Szczakowa', 5, NULL, 50.235527, 19.3050175, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poczekana-szczakowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (665, N'Cmentarz ¯ydowski ¯ory', 13, NULL, 50.0531158, 18.7067127, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-zory/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (666, N'Niedokoñczony budynek', 9, NULL, 52.1903038, 21.0459251, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-budynek-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (667, N'Dom handlowy &#8220;Têcza&#8221;', 13, NULL, 51.0966225, 20.85205, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-handlowy-tecza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (668, N'Opuszczone zak³ady miêsne FELIX', 6, NULL, 51.8629227, 23.137207, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-zaklady-miesne-felix/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (669, N'Opuszczona Cukrownia.', 4, NULL, 54.2652245, 18.6547852, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cukrownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (670, N'Zasadnicza Szko³a Ogrodnicza W Po³oninach K/suchacza', 13, NULL, 54.2763748, 19.4224987, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zasadnicza-szkola-ogrodnicza-w-poloninach-k-suchacza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (671, N'Opuszczony ¿³obek Gliwice', 13, NULL, 50.35948, 18.61084, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zlobek-gliwice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (672, N'Opuszczona Leœniczówka &#8220;Krzywy Las&#8221;', 13, NULL, 52.577774, 19.236145, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-lesniczowka-krzywy-las/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (673, N'Opuszczone domy, piwniczki i stodo³a', 3, NULL, 52.2542343, 22.0668449, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-domy-piwniczki-i-stodola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (674, N'Opuszczony Bar Rybnik', 5, NULL, 50.0655937, 18.5981617, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-bar-rybnik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (675, N'Oœrodek Wczasowo-Kolonijny &#8220;Baltic &#8211; Tourist&#8221;', 2, NULL, 54.37667, 16.3161144, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wczasowo-kolonijny-baltic-tourist/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (676, N'Opuszczona S³odownia EB', 4, NULL, 54.1349449, 19.0068016, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-slodownia-eb/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (677, N'Budynek', 3, NULL, 49.8083725, 19.029768, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (678, N'IV Batalion radiotechniczny', 10, NULL, 52.26012, 20.872736, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/iv-batalion-radiotechniczny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (679, N'Opuszczony dworzec chrzypsko', 1, NULL, 52.62754, 16.2282467, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworzec-chrzypsko/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (680, N'Sala weselna Bagatela', 2, NULL, 51.7093468, 19.5615215, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sala-weselna-bagatela/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (681, N'Karczma', 5, NULL, 49.71714, 20.4034348, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/karczma/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (682, N'Pa³ac &#8220;Nowy Dwór&#8221;', 7, NULL, 51.1789627, 16.1566849, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-nowy-dwor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (683, N'Stara cegielnia', 4, NULL, 49.57129, 22.0150776, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-cegielnia-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (684, N'Opuszczona apteka', 13, NULL, 51.04585, 20.8379974, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-apteka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (685, N'Cmentarz ¯ydowski', 13, NULL, 52.08291, 21.2759686, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (686, N'gorzelnia stara Cieszyna', 13, NULL, 49.8646622, 21.6299458, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-stara-cieszyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (687, N'Stanica harcerska Aleksandra Kamiñskiego', 13, NULL, 49.7812653, 18.8305664, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stanica-harcerska-aleksandra-kaminskiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (688, N'Przedsiêbiorstwo remontowo &#8211; inwestycyjne ciep³ownictwa', 4, NULL, 52.41559, 16.9473133, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedsiebiorstwo-remontowo-inwestycyjne-cieplownictwa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (689, N'Opuszczony domek w œrodku lasu.', 3, NULL, 53.78767, 20.76416, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-domek-w-srodku-lasu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (690, N'Opuszczona kot³ownia', 4, NULL, 52.0468941, 23.1173477, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kotlownia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (691, N'Dwór z 1870', 7, NULL, 54.9018822, 18.2373047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-z-1870/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (692, N'Opuszczony budynek', 3, NULL, 51.76839, 19.4021683, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (693, N'Bobrza &#8211; ruiny Zak³adu Wielkopiecowego i mur oporowy', 13, NULL, 50.9767227, 20.52791, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bobrza-ruiny-zakladu-wielkopiecowego-i-mur-oporowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (694, N'Fabryka farb i ciep³ownia', 4, NULL, 50.4496346, 16.8962, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-farb-i-cieplownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (695, N'Koœció³', 13, NULL, 51.3772469, 17.1823273, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (696, N'Browar Kuntersztyn', 13, NULL, 53.4932861, 18.7595882, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/browar-kuntersztyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (697, N'Stary bunkier/schron', 8, NULL, 53.4561234, 14.5327454, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-bunkier-schron/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (698, N'Stare Prosektorium', 11, NULL, 53.4556046, 14.5330648, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stare-prosektorium-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (699, N'Opuszczona kopalnia', 13, NULL, 50.0359039, 21.3557129, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kopalnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (700, N'Opuszczony szpital przy ul. Westerplatte.', 11, NULL, 50.83774, 16.4964123, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szpital-przy-ul-westerplatte/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (701, N'Opuszczony pa³ac/szko³a podstawowa', 7, NULL, 52.0353165, 18.0613232, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-szkola-podstawowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (702, N'Opuszczony budynek kolejowy KKP', 1, NULL, 50.3281479, 18.1824589, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-kolejowy-kkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (703, N'hala', 13, NULL, 51.6178551, 17.72026, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hala/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (704, N'Dawne PGR &#8220;Hala Meneliskowa&#8221;', 6, NULL, 53.41871, 18.3842335, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawne-pgr-hala-meneliskowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (705, N'Dawny Dwór i PGR-y w Morsku', 13, NULL, 53.4242744, 18.4835472, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawny-dwor-i-pgr-y-w-morsku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (706, N'Opszczone Koszary', 10, NULL, 52.7068024, 21.0752, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opszczone-koszary/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (707, N'Zabytkowy Dworek przedwojenny', 7, NULL, 53.12894, 16.6369686, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabytkowy-dworek-przedwojenny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (708, N'Opuszczony Dwór Diament &#8211; Otfinów', 3, NULL, 50.1941528, 20.8061466, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dwor-diament-otfinow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (709, N'Budynki dawnej jednostki wojskowej', 10, NULL, 50.4840546, 19.07793, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynki-dawnej-jednostki-wojskowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (710, N'Oœrodek wypoczynkowy WSK Mielec &#8211; Wola Zdakowska', 2, NULL, 50.4356232, 21.399086, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-wsk-mielec-wola-zdakowska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (711, N'Ruiny w lesie nieopodal zabudowy. Podobno pozosta³oœci po szkole.', 13, NULL, 51.6282463, 19.4934082, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-w-lesie-nieopodal-zabudowy-podobno-pozostalosci-po-szkole/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (712, N'Opuszczona fabryka', 4, NULL, 52.8679428, 16.0062771, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-5/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (713, N'Cmentarzysko poci¹gów', 1, NULL, 51.7270279, 19.56665, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarzysko-pociagow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (714, N'Opuszczona fabryka', 9, NULL, 53.69602, 17.5874481, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (715, N'Opuszczone bunkry atomowe', 10, NULL, 53.4297867, 16.5778122, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-bunkry-atomowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (716, N'Opuszczony Domek we Wi¹gu', 3, NULL, 53.43418, 18.5387535, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-domek-we-wiagu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (717, N'RzeŸnia miejska', 4, NULL, 53.4797859, 18.7491245, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rzeznia-miejska-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (718, N'Opuszczona kolejowa wie¿a ciœnieñ', 1, NULL, 54.03486, 19.0502, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kolejowa-wieza-cisnien/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (719, N'Bar Natalia', 5, NULL, 49.58959, 20.73777, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bar-natalia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (720, N'Dom Wasila', 3, NULL, 53.5458145, 18.4471817, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-wasila/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (721, N'M³yn Rzemieñ', 6, NULL, 50.2141151, 21.50787, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-rzemien/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (722, N'Cegielnia Findlerów', 4, NULL, 51.7263451, 18.1015129, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-findlerow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (723, N'Kolejowa wie¿a ciœnieñ', 1, NULL, 50.0032845, 20.9786968, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kolejowa-wieza-cisnien-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (724, N'Tajemniczy budynek w œrodku lasu', 13, NULL, 54.09035, 18.0026112, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tajemniczy-budynek-w-srodku-lasu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (725, N'Niestachowska 1, Poznañ', 13, NULL, 52.4217033, 16.8938026, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niestachowska-1-poznan/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (726, N'Stacja PKP Skarbimierz Osiedle', 1, NULL, 50.8437, 17.4219189, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-pkp-skarbimierz-osiedle/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (727, N'Przedszkole', 13, NULL, 53.45259, 14.5583439, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedszkole-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (728, N'Stacja Pruszcz-Bagienica', 1, NULL, 53.4425964, 17.8336, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-pruszcz-bagienica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (729, N'Opuszczony dom pracowników PKP', 3, NULL, 51.802372, 19.4790859, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-pracownikow-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (730, N'Opuszczony dom w lesie', 3, NULL, 51.81455, 19.4620934, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-w-lesie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (731, N'Ruiny zamku Krzy¿ackiego w pobli¿u Grudzi¹dza &#8220;Wzgórze Anio³ów&#8221;', 7, NULL, 53.4362831, 18.85019, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zamku-krzyzackiego-w-poblizu-grudziadza-wzgorze-aniolow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (732, N'Dawny m³yn parowy', 4, NULL, 51.8027725, 15.7142286, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawny-mlyn-parowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (733, N'Pa³ac Rudolfa Kellera', 7, NULL, 51.76784, 19.4458, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-rudolfa-kellera/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (734, N'Teren dawnej jednostki wojskowej WRiA OPK', 10, NULL, 50.18774, 18.30717, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/teren-dawnej-jednostki-wojskowej-wria-opk/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (735, N'Opuszczona szko³a', 3, NULL, 50.3336143, 20.0052242, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-szkola-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (736, N'Opuszczona obora i dom', 6, NULL, 53.02018, 18.7395439, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-obora-i-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (737, N'Przetwórnia &#8220;Sadki&#8221;', 4, NULL, 53.16215, 17.4414177, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przetwornia-sadki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (738, N'Opuszczone bunkry/schrony', 1, NULL, 50.260376, 19.0036011, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-bunkry-schrony/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (739, N'Opuszczona wie¿a ciœnieñ', 8, NULL, 51.9275742, 15.5137253, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-wieza-cisnien-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (740, N'Browar Zarszyn, póŸniejsze Ch³odnie Zgoda &#8211; Zarszyn', 4, NULL, 49.57784, 22.0127773, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/browar-zarszyn-pozniejsze-chlodnie-zgoda-zarszyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (741, N'Klub Golfowy i K¹pielisko Fala', 13, NULL, 50.28624, 18.988409, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/klub-golfowy-i-kapielisko-fala/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (742, N'Opuszczony Dwór.', 7, NULL, 53.80283, 20.7253857, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dwor-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (743, N'Opuszczona kamienica ¿elazna', 3, NULL, 52.2284241, 20.9950027, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-zelazna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (744, N'Tor Wyœcigów Konnych', 13, NULL, 51.6998, 19.4238281, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tor-wyscigow-konnych-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (745, N'Willa Leona Allarta', 3, NULL, 51.743187, 19.4518948, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-leona-allarta/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (746, N'Opuszczona jednostka rakietowa', 10, NULL, 50.01921, 18.9228344, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-jednostka-rakietowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (747, N'Cegielnia Ska³a', 13, NULL, 50.21431, 19.8707561, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-skala/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (748, N'Stara cegielnia', 13, NULL, 52.22933, 15.9270487, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-cegielnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (749, N'Opuszczona cegielnia', 4, NULL, 51.2591324, 22.4780273, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cegielnia-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (750, N'Ruiny fabryki w lublinie', 4, NULL, 51.246006, 22.6036186, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-fabryki-w-lublinie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (751, N'Opuszczone gospodarstwo PGR', 6, NULL, 51.7351952, 19.7545338, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gospodarstwo-pgr/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (752, N'Ruiny niedokoñczonych domków', 3, NULL, 51.6734352, 19.6866837, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-niedokonczonych-domkow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (753, N'Dworzec kolejowy', 1, NULL, 50.7086334, 16.00708, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworzec-kolejowy-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (754, N'Stadion RKS Skra', 13, NULL, 52.21836, 20.9944439, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stadion-rks-skra/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (755, N'WA£ POMORSKI GRUPA WAROWNA &#8211; GÓRA ŒMIADOWSKA', 10, NULL, 53.62357, 16.5370846, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wal-pomorski-grupa-warowna-gora-smiadowska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (756, N'Pa³ac Paca (ruiny)', 7, NULL, 53.9822121, 22.805727, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-paca-ruiny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (757, N'Budynek po zak³adach drobiarskich', 13, NULL, 54.3421478, 16.6607666, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-po-zakladach-drobiarskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (758, N'Budynek po magazynach zbo¿owych', 13, NULL, 54.3633881, 16.684124, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-po-magazynach-zbozowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (759, N'Bardzo rzadka najstarsza w Polsce wie¿a ciœnieñ z dwoma podziemnymi zbiornikami.', 8, NULL, 54.20101, 16.21582, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bardzo-rzadka-najstarsza-w-polsce-wieza-cisnien-z-dwoma-podziemnymi-zbiornikami/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (760, N'Niedokoñczony dom', 3, NULL, 51.2406578, 22.5024948, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-dom-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (761, N'Pa³ac Kickich w Sobieszynie', 7, NULL, 51.5869827, 22.17655, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-kickich-w-sobieszynie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (762, N'Restauracja Leœna', 5, NULL, 52.99247, 17.8805923, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/restauracja-lesna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (763, N'Mauzoleum Mielochów', 13, NULL, 52.38901, 16.99585, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mauzoleum-mielochow-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (764, N'Opuszczona stacja benzynowa Lotus', 13, NULL, 51.2894058, 18.0381775, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stacja-benzynowa-lotus/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (765, N'Opuszczona Cegielnia Gorlice', 9, NULL, 49.6679878, 21.1585484, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cegielnia-gorlice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (766, N'Opuszczony pa³ac', 7, NULL, 52.7812424, 18.0784225, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (767, N'By³a Fabryka Luerkensa', 4, NULL, 51.7663651, 19.4614658, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/byla-fabryka-luerkensa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (768, N'Kompleks Stadniny przy Dworskiej w Piarach', 13, NULL, 50.12988, 19.6882725, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kompleks-stadniny-przy-dworskiej-w-piarach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (769, N'Wytwórnia cegie³ z czasów PRL', 13, NULL, 50.1276779, 19.7030354, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wytwornia-cegiel-z-czasow-prl/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (770, N'Spalone gospodarstwo', 3, NULL, 51.7447548, 19.5791168, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spalone-gospodarstwo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (771, N'Opuszczony szpital', 11, NULL, 54.2456551, 20.8137512, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szpital-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (772, N'Linia kolejowa Kartuzy-Sierakowice', 1, NULL, 53.7264671, 18.1093, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/linia-kolejowa-kartuzy-sierakowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (773, N'Opuszczony zak³ad PKS', 13, NULL, 51.0534363, 16.19763, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zaklad-pks/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (774, N'Opuszczony Mostostal', 4, NULL, 53.1166649, 23.082674, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-mostostal/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (775, N'Hotel Murat', 2, NULL, 54.60409, 18.3217621, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-murat/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (776, N'Most kolejowy w Rutkach', 1, NULL, 54.3254776, 18.3308449, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/most-kolejowy-w-rutkach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (777, N'Rampa Paw³a Jumpera', 13, NULL, 53.19822, 18.37315, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rampa-pawla-jumpera/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (778, N'Opuszczona rzeŸnia miejska', 4, NULL, 51.25375, 22.6057434, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-rzeznia-miejska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (779, N'Opuszczone przedszkole', 13, NULL, 52.3757362, 16.9117241, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-przedszkole/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (780, N'Pa³ac Randowshof', 7, NULL, 51.2330742, 17.3992538, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-randowshof/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (781, N'Opuszczony Pa³ac w Œwierznej', 7, NULL, 51.1864, 17.43078, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-w-swierznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (782, N'Opuszczony Pa³ac', 7, NULL, 52.6480637, 17.2114563, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (783, N'Opuszczony pa³ac von der Marwitzów', 7, NULL, 54.29058, 17.4421043, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-von-der-marwitzow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (784, N'Huta szk³a', 13, NULL, 50.29274, 18.6722088, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/huta-szkla-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (785, N'Gospodarstwo', 3, NULL, 50.1979179, 20.8620071, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gospodarstwo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (786, N'Stara Cementownia', 4, NULL, 50.23871, 19.3103447, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-cementownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (787, N'Opuszczony i zdemolowany dom', 3, NULL, 50.2370148, 19.3083019, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-i-zdemolowany-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (788, N'Kot³ownia Rembertów (oddzia³ Energetyki cieplnej)', 4, NULL, 52.2692947, 21.180563, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kotlownia-rembertow-oddzial-energetyki-cieplnej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (789, N'Opuszczona cegielnia', 13, NULL, 51.5465469, 22.3131027, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cegielnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (790, N'Opuszczony dom we wsi Zbójno', 3, NULL, 51.48633, 23.1272068, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-we-wsi-zbojno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (791, N'Opuszczona Kopalnia Soli im. Tadeusza Koœciuszki w Wapnie', 4, NULL, 52.90534, 17.47503, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kopalnia-soli-im-tadeusza-kosciuszki-w-wapnie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (792, N'Opuszczone laboratorium', 13, NULL, 49.73379, 18.6319389, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-laboratorium/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (793, N'Mechaniczny m³yn', 6, NULL, 52.76289, 20.5444336, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mechaniczny-mlyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (794, N'Opuszczona elektrociep³ownia EC2', 4, NULL, 51.74195, 19.4504147, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-elektrocieplownia-ec2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (795, N'Ma³y bunkier lubin', 10, NULL, 51.4266129, 16.1938477, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/maly-bunkier-lubin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (796, N'Opuszczone budynki wojskowe', 10, NULL, 53.50068, 18.7544231, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki-wojskowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (797, N'Oœrodek wypoczynkowy: Cicha Polana.', 2, NULL, 53.7334366, 21.21924, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-cicha-polana-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (798, N'Stacja PKP Rudniki', 1, NULL, 50.87841, 19.2365246, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-pkp-rudniki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (799, N'Plebania (chyba) przy kosciele', 3, NULL, 51.698185, 19.3257828, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/plebania-chyba-przy-kosciele/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (800, N'ZETA fabryka odzie¿owa', 13, NULL, 51.85731, 19.4183559, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zeta-fabryka-odziezowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (801, N'Pa³ac Walentego z XIX wieku', 7, NULL, 51.8000946, 19.2634544, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-walentego-z-xix-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (802, N'Opuszczona plebania', 7, NULL, 51.8985023, 19.3070984, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-plebania/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (803, N'Pa³ac', 7, NULL, 51.9004631, 19.30579, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (804, N'Opuszczony stary dom', 3, NULL, 51.8353539, 19.2392063, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-stary-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (805, N'Opuszczona masarnia', 6, NULL, 51.30856, 20.1464481, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-masarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (806, N'Opuszczona zajezdnia tramwajowa D¹browskiego', 1, NULL, 51.7390823, 19.4785938, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-zajezdnia-tramwajowa-dabrowskiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (807, N'Fabryka wyrobów betonowych.', 4, NULL, 53.84406, 20.70513, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-wyrobow-betonowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (808, N'172 kompania radiotechniczna S³awno', 10, NULL, 51.3830452, 20.1184139, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/172-kompania-radiotechniczna-slawno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (809, N'Opuszczony kryty basen', 13, NULL, 50.6825371, 18.223217, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kryty-basen/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (810, N'Opusczony zespó³ budynków przedwojennych', 13, NULL, 50.85644, 16.31165, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opusczony-zespol-budynkow-przedwojennych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (811, N'Nowoczesna Opuszczona Willa', 3, NULL, 51.74146, 19.3730373, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nowoczesna-opuszczona-willa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (812, N'Opuszczone zak³ady lniarskie &#8220;Orze³&#8221;', 4, NULL, 50.8158073, 15.7817316, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-zaklady-lniarskie-orzel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (813, N'Opuszczony PGR-Polskie Gospodarstwo Rolne z czasów PRL-U', 6, NULL, 50.8546448, 15.7787485, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-polskie-gospodarstwo-rolne-z-czasow-prl-u/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (814, N'Opuszczony Polgal', 9, NULL, 50.8050652, 19.12342, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-polgal/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (815, N'Stary Browar', 4, NULL, 51.6972427, 17.4369984, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-browar-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (816, N'Zak³ady Fermahen', 4, NULL, 51.6003952, 19.523859, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-fermahen/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (817, N'Opuszczona fabryka', 13, NULL, 49.64573, 21.8291588, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (818, N'Oœrodek wypoczynkowy Wie¿yca', 2, NULL, 54.2302437, 18.1229038, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-wiezyca/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (819, N'Dwór i folwark Dzierzbice', 7, NULL, 52.277832, 18.9914932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-i-folwark-dzierzbice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (820, N'Zamek Szyd³owieckiego w Æmielowie', 7, NULL, 50.95064, 21.44085, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-szydlowieckiego-w-cmielowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (821, N'Opuszczona suszarnia', 6, NULL, 52.0762863, 17.3630333, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-suszarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (822, N'Stary warsztat', 4, NULL, 51.7676926, 18.0521889, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-warsztat-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (823, N'Obóz koncentracyjny Blechhammer', 10, NULL, 50.3682556, 18.302557, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/oboz-koncentracyjny-blechhammer/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (824, N'Bocznica kolejowa w Kartuzach', 1, NULL, 54.3413239, 18.2091732, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bocznica-kolejowa-w-kartuzach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (825, N'Opuszczony biurowiec/kamienica  ko³o gimnazjum nr 1', 9, NULL, 50.0035553, 18.4595089, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-biurowiec-kamienica-kolo-gimnazjum-nr-1/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (826, N'Szpital sanatoryjny Iwonicz Zdrój', 11, NULL, 49.5607452, 21.7912941, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital-sanatoryjny-iwonicz-zdroj/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (827, N'Opuszczona kamienica z Hansa Klossa', 3, NULL, 52.5391159, 19.69058, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-z-hansa-klossa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (828, N'Opuszczona przepompownia', 4, NULL, 52.536026, 19.69782, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-przepompownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (829, N'Dworzec PKP Czudec', 9, NULL, 49.9406128, 21.8333683, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworzec-pkp-czudec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (830, N'Masarnia', 6, NULL, 51.31688, 22.8735352, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/masarnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (831, N'Pyskowice budynki kolejowe', 1, NULL, 50.38745, 18.62071, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pyskowice-budynki-kolejowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (832, N'Opuszczona rzeŸnia', 13, NULL, 51.638855, 20.6106529, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-rzeznia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (833, N'Synagoga w S³omnikach', 13, NULL, 50.2385178, 20.07964, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/synagoga-w-slomnikach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (834, N'Fort 43 Pasternik', 10, NULL, 50.10332, 19.8609848, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-43-pasternik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (835, N'Magazyny g³owic atomowych BrzeŸnica Kolonia', 10, NULL, 53.4230881, 16.5978527, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyny-glowic-atomowych-brzeznica-kolonia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (836, N'Pa³ac von Kleist Juchowo', 7, NULL, 53.67489, 16.4928627, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-von-kleist-juchowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (837, N'Opuszczona fabryka', 4, NULL, 51.7701569, 19.4544048, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (838, N'Opuszczona chata i przystanek kolejowy &#8211; Florentyna', 1, NULL, 51.8098, 18.1928024, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-chata-i-przystanek-kolejowy-florentyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (839, N'Fort 51 Rajsko', 10, NULL, 49.99124, 19.9711285, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-51-rajsko/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (840, N'Ligota Dolna', 4, NULL, 50.48247, 18.1569672, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ligota-dolna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (841, N'Opuszczony sierociniec', 13, NULL, 51.80695, 19.3366051, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-sierociniec-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (842, N'Opuszczone Silosy', 9, NULL, 52.6542053, 19.1407585, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-silosy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (843, N'Bytom Bobrek Stacja PKP', 1, NULL, 50.3438873, 18.8773613, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bytom-bobrek-stacja-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (844, N'Ma³y bunkier poniemiecki', 10, NULL, 51.1462975, 17.1472683, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/maly-bunkier-poniemiecki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (845, N'Ruiny Pa³acu w Lim¿y', 7, NULL, 53.6034737, 19.2168617, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-palacu-w-limzy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (846, N'Grobowiec', 13, NULL, 53.0980453, 17.0296669, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/grobowiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (847, N'Hotel Goœciniec', 2, NULL, 50.2422867, 19.1434517, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-gosciniec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (848, N'PKP Zak³ad Taboru Kielce', 1, NULL, 50.8902, 20.581255, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pkp-zaklad-taboru-kielce/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (849, N'Opuszczona lotnicza jednostka wojskowa', 10, NULL, 51.61855, 22.0858879, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-lotnicza-jednostka-wojskowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (850, N'Zak³ady Rolnicze Zacharzyn', 6, NULL, 53.0275879, 17.0257187, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-rolnicze-zacharzyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (851, N'Opuszczona jednostka wojskowa', 10, NULL, 51.2775421, 22.4919319, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-jednostka-wojskowa-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (852, N'Opuszczona gorzelnia w Siedliskach', 4, NULL, 50.6376877, 19.7561054, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-gorzelnia-w-siedliskach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (853, N'Opuszczona Garbarnia', 4, NULL, 52.2517624, 20.9813976, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-garbarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (854, N'Tajna oczyszczalnia œcieków', 10, NULL, 52.12465, 21.0366077, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tajna-oczyszczalnia-sciekow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (855, N'Opuszczona hala dawnej fabryki EDA', 4, NULL, 51.1728363, 22.0632858, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-hala-dawnej-fabryki-eda/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (856, N'Opuszczona hala dawnych zak³adów EDA', 4, NULL, 51.176033, 22.0639381, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-hala-dawnych-zakladow-eda/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (857, N'Zespó³ Pa³acowy K³obukowice', 7, NULL, 50.8421669, 19.3304882, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-palacowy-klobukowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (858, N'City Point', 13, NULL, 50.11095, 18.98856, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/city-point/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (859, N'Bia³y Domek', 3, NULL, 50.12408, 18.9969311, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bialy-domek-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (860, N'Tarka opuszczony oœrodek wypoczynkowy', 2, NULL, 50.14689, 19.2735252, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tarka-opuszczony-osrodek-wypoczynkowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (861, N'Pa³ac w k³odzie Górowskiej', 7, NULL, 51.65781, 16.5904064, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-klodzie-gorowskiej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (862, N'Zniszczone Zak³ady Miêsne (Stara RzeŸnia)', 4, NULL, 50.3012238, 18.94865, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zniszczone-zaklady-miesne-stara-rzeznia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (863, N'Stara Mleczarnia BruSer', 4, NULL, 51.75451, 19.38586, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-mleczarnia-bruser/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (864, N'Fort VII', 10, NULL, 49.7788544, 22.7135029, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-vii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (865, N'Opuszczona chatka', 3, NULL, 51.60118, 19.38189, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-chatka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (866, N'Zak³ad dla Nerwowo i Psychicznie Chorych ¯ydów „Zofiówka”', 11, NULL, 52.12, 21.2915039, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-dla-nerwowo-i-psychicznie-chorych-zydow-zofiowka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (867, N'Zabytkowa kamienica w op³akanym stanie', 3, NULL, 54.3654976, 18.6344757, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabytkowa-kamienica-w-oplakanym-stanie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (868, N'Dwa niewielkie budynki, ruiny i ma³y komin z drabin¹', 13, NULL, 54.3913574, 18.6806145, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwa-niewielkie-budynki-ruiny-i-maly-komin-z-drabina/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (869, N'Opuszczony oœrodek wczasowy Unitra-Dolam', 2, NULL, 51.4894066, 17.1782856, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wczasowy-unitra-dolam/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (870, N'Koœció³ ewangelicki Zrazim', 13, NULL, 52.74959, 17.53418, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-ewangelicki-zrazim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (871, N'Opuszczony Hotel-Restauracja', 2, NULL, 49.9375648, 21.8233, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-hotel-restauracja/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (872, N'Opuszczona Restauracja', 5, NULL, 52.88634, 18.8001385, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-restauracja-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (873, N'Du¿a Restauracja (Zajazd)', 5, NULL, 51.51415, 19.9074841, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/duza-restauracja-zajazd/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (874, N'Port rzeczny silos Czerwonak', 6, NULL, 52.4881058, 16.9743919, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/port-rzeczny-silos-czerwonak/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (875, N'Dawna Szko³a Podstawowa', 13, NULL, 52.8974724, 19.3008327, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-szkola-podstawowa-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (876, N'Sklep Spo¿ywczy &#8220;Euro Smak&#8221;', 4, NULL, 51.50566, 19.8786068, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sklep-spozywczy-euro-smak/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (877, N'Opuszczony oœrodek rekreacyjno &#8211; sportowy', 13, NULL, 50.029, 18.4955368, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-rekreacyjno-sportowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (878, N'Stara Piekarnia', 13, NULL, 50.0957, 20.0510616, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-piekarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (879, N'Rezydencja', 7, NULL, 51.0242348, 17.9791985, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rezydencja/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (880, N'Opuszczony Dwór', 7, NULL, 51.59421, 17.6965675, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dwor-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (881, N'Opuszczony dom', 3, NULL, 51.0619965, 19.4297333, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (882, N'Opuszczony dom', 3, NULL, 51.0620041, 19.4300079, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (883, N'Stara winiarnia Kruszwica', 4, NULL, 52.67135, 18.322073, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-winiarnia-kruszwica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (884, N'Fabryka Mebli', 13, NULL, 51.663353, 19.3515587, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-mebli-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (885, N'Stary drewniak', 3, NULL, 51.6022644, 19.1913128, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-drewniak/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (886, N'Opolskie Zak³ady Przemys³u Lniarskiego Linop³yt', 13, NULL, 51.0117569, 18.0424957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opolskie-zaklady-przemyslu-lniarskiego-linoplyt/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (887, N'Stacja Benzynowa', 4, NULL, 51.504158, 19.8835049, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-benzynowa-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (888, N'Willa Cyganów', 3, NULL, 51.6812859, 19.3333931, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-cyganow-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (889, N'Stary Dworek Szlachecki', 3, NULL, 51.718586, 19.1467667, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-dworek-szlachecki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (890, N'Gospodarstwo domowe', 3, NULL, 52.28841, 19.39376, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gospodarstwo-domowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (891, N'Stara Stacja Benzynowa', 4, NULL, 51.63206, 19.2583, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-stacja-benzynowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (892, N'Opuszczona przychodnia przy KWK Œl¹sk', 11, NULL, 50.2468224, 18.9284344, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-przychodnia-przy-kwk-slask/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (893, N'Stara gazownia', 4, NULL, 53.12173, 18.1174812, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-gazownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (894, N'Opuszczone gospodarstwo domowe.', 3, NULL, 51.6309166, 19.7058735, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gospodarstwo-domowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (895, N'Pa³ac w Mojej Woli', 7, NULL, 51.475502, 17.6050758, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-mojej-woli/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (896, N'Hotel Polonia Dzier¿oniów', 2, NULL, 50.72519, 16.64593, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-polonia-dzierzoniow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (897, N'Pa³ac Kryspinów', 7, NULL, 50.0414658, 19.7973957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-kryspinow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (898, N'opuszczony PGR i folwark', 6, NULL, 51.0329742, 17.3405457, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-i-folwark/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (899, N'Opuszczony Sierociniec', 13, NULL, 52.8073349, 17.2029057, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-sierociniec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (900, N'Poligon doœwiadczalny fabryki Nitrat', 10, NULL, 51.6232452, 19.9546528, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poligon-doswiadczalny-fabryki-nitrat/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (901, N'Pa³ac Jab³onna', 7, NULL, 51.72562, 16.6583214, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-jablonna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (902, N'GORZELNIA', 6, NULL, 51.3571625, 22.7358723, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (903, N'Opuszczona gorzelnia', 13, NULL, 51.0300522, 23.4109211, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-gorzelnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (904, N'Miechów &#8211; Opuszczony m³yn wodny', 13, NULL, 50.3508034, 20.01238, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/miechow-opuszczony-mlyn-wodny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (905, N'Dworek szlachecki z XIX wieku', 7, NULL, 51.7984238, 19.2672729, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-szlachecki-z-xix-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (906, N'Dworek szlachecki', 7, NULL, 51.79748, 19.2674446, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-szlachecki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (907, N'Zabytkowa cegielnia', 4, NULL, 49.91828, 19.1370144, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabytkowa-cegielnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (908, N'Opuszczona fabryka Kleju', 13, NULL, 51.8148766, 15.7094841, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-kleju/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (909, N'Kasyno wojskowe', 13, NULL, 52.2518654, 21.280529, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kasyno-wojskowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (910, N'Opuszczone biurowce Huty', 9, NULL, 49.68652, 21.7661152, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-biurowce-huty/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (911, N'Pa³ac Przylepki', 7, NULL, 52.1334877, 16.9189453, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-przylepki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (912, N'Pa³ac w Pudliszkach', 7, NULL, 51.7739334, 16.9382076, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-pudliszkach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (913, N'Browar £ódzki', 9, NULL, 51.75844, 19.4686852, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/browar-lodzki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (914, N'Kolejowa wie¿a ciœnieñ', 1, NULL, 53.5548553, 15.5293932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kolejowa-wieza-cisnien-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (915, N'Willa Nikity Chruszczowa', 2, NULL, 50.2167778, 18.9492836, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-nikity-chruszczowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (916, N'Dwór szlachecki Falejówka', 7, NULL, 49.63129, 22.1663876, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-szlachecki-falejowka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (917, N'Opuszczony szpital', 11, NULL, 51.0638466, 21.070303, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szpital-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (918, N'Dworek dawniej dom dziecka', 7, NULL, 52.6874733, 18.890564, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-dawniej-dom-dziecka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (919, N'Opuszczony Urz¹d Stanu Cywilnego.', 13, NULL, 51.21828, 22.6927757, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-urzad-stanu-cywilnego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (920, N'Hotel ATLANTIC', 2, NULL, 54.16358, 16.0951252, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-atlantic/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (921, N'Opuszczony Biurowiec', 9, NULL, 51.22891, 22.51675, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-biurowiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (922, N'Stara Szko³a', 13, NULL, 51.04118, 18.7454643, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-szkola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (923, N'Ciep³ownia Oœwiêcim', 13, NULL, 50.0359726, 19.2041016, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cieplownia-oswiecim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (924, N'Nieskoñczony Hotel', 2, NULL, 50.8059349, 19.0942383, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieskonczony-hotel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (925, N'Nie dokoñczony opuszczony blok', 3, NULL, 52.9941635, 17.49281, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nie-dokonczony-opuszczony-blok/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (926, N'Niedokoñczony blok', 3, NULL, 52.993206, 17.4915867, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-blok/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (927, N'Opuszczony szpital w Raciborzu', 11, NULL, 50.0862122, 18.2200718, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szpital-w-raciborzu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (928, N'Koœció³', 13, NULL, 54.0224953, 18.3212471, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (929, N'Dworzec', 1, NULL, 54.2323265, 18.185463, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworzec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (930, N'Opuszczone sk³ady kolejowe Koœcierzyna', 1, NULL, 54.1176224, 18.0012169, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-sklady-kolejowe-koscierzyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (931, N'Jednostka Rakietowa Babidó³', 10, NULL, 54.2988, 18.3218155, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-rakietowa-babidol/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (932, N'Nastawnia Kokoszki', 1, NULL, 54.36182, 18.4914761, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nastawnia-kokoszki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (933, N'Obiekt wojskowy TOPL &#8211; Schron Obrony Cywilnej w Gaæ', 10, NULL, 50.8914375, 17.3511276, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/obiekt-wojskowy-topl-schron-obrony-cywilnej-w-gac/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (934, N'Pa³ac w Stoszycach &#8211; cmentarzysko zabawek', 3, NULL, 51.07534, 16.779829, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-stoszycach-cmentarzysko-zabawek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (935, N'By³y obiekt wojskowy &#8211; schron ochrony cywilnej w Godzikowicach', 10, NULL, 50.90423, 17.321743, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/byly-obiekt-wojskowy-schron-ochrony-cywilnej-w-godzikowicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (936, N'Dworek  w Wytownie', 7, NULL, 54.585392, 16.9793053, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-w-wytownie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (937, N'Oœrodek wypoczynkowy (?)', 2, NULL, 53.2065964, 17.8464317, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (938, N'WARSZTAT NAPRAWY ZWROTNIC &#8211; TRAMWAJE ŒL¥SKIE', 4, NULL, 50.31971, 18.9467812, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/warsztat-naprawy-zwrotnic-tramwaje-slaskie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (939, N'SCHRON POD URZEDEM MIEJSKIM', 10, NULL, 50.31686, 19.01006, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-pod-urzedem-miejskim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (940, N'Pa³ac w sk³adowicach', 7, NULL, 51.4296379, 16.2647438, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-skladowicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (941, N'MUZEUM PRL-U', 13, NULL, 50.2862663, 18.8300514, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/muzeum-prl-u/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (942, N'OGROMNY PODZIEMNY ZBIORNIK WODNY W BYTOMIU', 4, NULL, 50.35792, 18.8609943, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ogromny-podziemny-zbiornik-wodny-w-bytomiu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (943, N'Ma³y Opuszczony domek', 3, NULL, 49.4340439, 20.7143135, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/maly-opuszczony-domek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (944, N'Opuszczona Restauracja', 5, NULL, 49.775383, 21.4555836, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-restauracja/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (945, N'Opuszczona octownia', 11, NULL, 53.46557, 15.0564194, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-octownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (946, N'Pa³ac w Dobrowie', 7, NULL, 53.98574, 16.1153011, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-dobrowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (947, N'Opuszczona gorzelnia Zarzysko / Wszechswiete', 4, NULL, 51.19169, 17.49459, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-gorzelnia-zarzysko-wszechswiete/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (948, N'Pensjonat Kasztelanka', 2, NULL, 54.6988525, 18.676157, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pensjonat-kasztelanka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (949, N'Opuszczony budynek partii', 13, NULL, 50.7124062, 23.265049, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-partii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (950, N'Opuszczone budynki PKP Laskowice Pomorskie', 1, NULL, 53.49103, 18.4583073, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki-pkp-laskowice-pomorskie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (951, N'PZ.W.598 (MRU)', 10, NULL, 52.0999146, 15.3952789, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pz-w-598-mru/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (952, N'Spó³dzielnia Wyrobów Cukierniczych &#8220;Wroc³awianka&#8221;', 4, NULL, 51.15254, 16.7843628, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spoldzielnia-wyrobow-cukierniczych-wroclawianka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (953, N'SZYB KOPALNIANY KRYSTYNA', 4, NULL, 50.308506, 18.8945541, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szyb-kopalniany-krystyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (954, N'Opuszczony PGR', 6, NULL, 51.8854332, 17.05863, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (955, N'Mizar &#8211; cmentarz Tatarski', 13, NULL, 52.0136261, 23.5746117, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mizar-cmentarz-tatarski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (956, N'Stacja Wyszogród', 1, NULL, 52.3752632, 20.2080765, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-wyszogrod/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (957, N'Prochownie Zaj¹czka', 10, NULL, 52.4016342, 20.6429653, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/prochownie-zajaczka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (958, N'Fort VI', 10, NULL, 52.4416046, 16.89703, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-vi/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (959, N'Wojskowy Dom Wypoczynkowy Barka', 13, NULL, 54.2201462, 15.774519, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wojskowy-dom-wypoczynkowy-barka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (960, N'Magazyby g³owic atomowcyh', 10, NULL, 53.43309, 16.5783615, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyby-glowic-atomowcyh/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (961, N'Pa³ac Skrzyñskich &#8211; Zagórzany', 7, NULL, 49.6965675, 21.1903667, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-skrzynskich-zagorzany/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (962, N'Kombinat rolniczy', 4, NULL, 52.4902344, 15.2259054, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kombinat-rolniczy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (963, N'Opuszczona Jednostka Wojskowa', 10, NULL, 53.17186, 18.0050468, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-jednostka-wojskowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (964, N'Pozosta³oœci renesansowego dworu', 3, NULL, 51.17806, 15.3412189, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozostalosci-renesansowego-dworu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (965, N'Fort W-Szcza Odolany', 12, NULL, 52.21514, 20.9353924, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-w-szcza-odolany/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (966, N'Fort V Dêbina', 10, NULL, 52.3896065, 20.7174358, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-v-debina/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (967, N'¯agañska czesalnia welny poltops', 4, NULL, 51.6104164, 15.3142042, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaganska-czesalnia-welny-poltops/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (968, N'Szpital chorób zakaŸnych', 11, NULL, 50.1772423, 19.4748554, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital-chorob-zakaznych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (969, N'Basen na Brochowie', 13, NULL, 51.0581131, 17.0804443, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/basen-na-brochowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (970, N'Opuszczony oœrodek wypoczynkowy Maciejka', 13, NULL, 49.7284737, 18.819, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy-maciejka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (971, N'Szklarnie', 13, NULL, 50.60444, 22.0341129, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szklarnie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (972, N'Pa³ac Sarny', 7, NULL, 50.5483437, 16.4664459, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-sarny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (973, N'Klasztor Magdalenek w NowogrodŸcu', 7, NULL, 51.2001076, 15.39824, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/klasztor-magdalenek-w-nowogrodzcu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (974, N'Zabudowania po PGRze.', 13, NULL, 50.4440041, 22.3464489, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabudowania-po-pgrze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (975, N'Nawiedzona kamienica', 3, NULL, 52.2405052, 21.0911, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nawiedzona-kamienica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (976, N'Cegielnia So³tyków', 4, NULL, 51.14107, 20.6835632, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-soltykow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (977, N'Zak³ady przemys³u bawe³nianego FROTEX', 4, NULL, 50.326458, 17.574255, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-przemyslu-bawelnianego-frotex/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (978, N'Dworek z pierwszej po³owy XIX w.', 3, NULL, 52.0125237, 18.2819939, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-z-pierwszej-polowy-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (979, N'Piska Pozycja Ryglowa &#8211; Johannisburg-Riegel', 10, NULL, 53.63469, 21.78239, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/piska-pozycja-ryglowa-johannisburg-riegel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (980, N'Dwór Korzkwy', 3, NULL, 51.91712, 17.7412186, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-korzkwy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (981, N'Opuszczony blok mieszkalny przy koksowni', 3, NULL, 50.79683, 19.1968269, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-blok-mieszkalny-przy-koksowni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (982, N'Poradziecki blok i bunkry', 3, NULL, 51.3892, 15.8901911, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poradziecki-blok-i-bunkry/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (983, N'Pa³ac Reymonda', 4, NULL, 52.21376, 18.2526245, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-reymonda/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (984, N'Opuszczony HOTEL pracowniczy w Zawidowie', 13, NULL, 51.0251579, 15.0586538, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-hotel-pracowniczy-w-zawidowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (985, N'Dzie³o D-8 Czarnowo', 10, NULL, 52.4768066, 20.7653084, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dzielo-d-8-czarnowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (986, N'Fabryka odzie¿y Cora', 4, NULL, 52.249794, 21.0692024, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-odziezy-cora/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (987, N'Ruiny starej walcowni w Nietulisku', 4, NULL, 50.9795074, 21.2540836, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-starej-walcowni-w-nietulisku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (988, N'Zak³ady Przemys³u Lniarskiego Walim', 4, NULL, 50.69707, 16.4445744, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-przemyslu-lniarskiego-walim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (989, N'Opuszczony Bacutil', 4, NULL, 51.6889458, 17.2730827, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-bacutil/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (990, N'Opuszczona Poniemiecka Fabryka Kruszenia Kamienia', 4, NULL, 54.0020447, 16.7541084, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-poniemiecka-fabryka-kruszenia-kamienia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (991, N'M³yn Englera w Zdrzewnie', 13, NULL, 54.6731873, 17.7150688, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-englera-w-zdrzewnie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (992, N'Opuszczona budowa szpitala', 11, NULL, 54.19613, 16.2252941, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-budowa-szpitala/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (993, N'Zajezdnia PKP', 1, NULL, 52.85376, 19.64198, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zajezdnia-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (994, N'Cegielnia WIDOMIA', 4, NULL, 49.6949577, 20.87468, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-widomia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (995, N'Zbiornik Gilów', 4, NULL, 51.44824, 16.1531334, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zbiornik-gilow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (996, N'Bunkier ochrony kolei', 10, NULL, 53.7261162, 20.22493, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-ochrony-kolei/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (997, N'Kot³ownia AON w Rembertowie', 4, NULL, 52.26907, 21.1801281, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kotlownia-aon-w-rembertowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (998, N'Schron pod Tosem', 12, NULL, 54.5342827, 18.48315, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-pod-tosem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (999, N'INSTYTUT HODOWLI BYD£A', 4, NULL, 52.1438522, 20.7112236, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/instytut-hodowli-bydla/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1000, N'Baseny Skry', 13, NULL, 52.212738, 20.9942513, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baseny-skry/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1001, N'Opuszczone gospodarstwo', 3, NULL, 50.7598228, 19.1761742, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gospodarstwo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1002, N'Wie¿a Artyleryjska 31 Œw.Benedykt', 10, NULL, 50.0426979, 19.95801, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-artyleryjska-31-sw-benedykt/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1003, N'Fort Pi¹tnica', 10, NULL, 53.1881256, 22.1089554, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-piatnica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1004, N'Poligon saperski', 10, NULL, 52.6252556, 14.6538439, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poligon-saperski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1005, N'Fort II Mierzwi¹czka', 7, NULL, 51.57707, 21.8557549, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-ii-mierzwiaczka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1006, N'Kawiarnia Aida', 13, NULL, 49.4268837, 20.4869289, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kawiarnia-aida/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1007, N'Ruina koscio³a ewangelickiego', 13, NULL, 51.3286934, 17.76574, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruina-kosciola-ewangelickiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1008, N'Opuszczony basen Liga', 13, NULL, 50.32566, 18.9570274, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-basen-liga/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1009, N'D.A.G. Fabrik Bromberg', 10, NULL, 53.06515, 18.0395527, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/d-a-g-fabrik-bromberg/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1010, N'Oœrodek wypoczynkowy Bajka', 3, NULL, 53.0619469, 16.459507, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-bajka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1011, N'Dom Oficera', 3, NULL, 53.5863533, 16.5494, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-oficera/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1012, N'Instytut stomatologii', 11, NULL, 51.77537, 19.5089359, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/instytut-stomatologii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1013, N'M³yn wodny', 4, NULL, 54.5049248, 17.0065346, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-wodny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1014, N'Ruiny pa³acu', 7, NULL, 50.24696, 16.6919651, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-palacu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1015, N'Wojskowe gopspodarstwo rolne', 10, NULL, 51.2799568, 22.596817, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wojskowe-gopspodarstwo-rolne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1016, N'Oœrodek Szkoleniowy Wojskowej Akademii Technicznej ¯orlina', 13, NULL, 49.366684, 20.79357, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-szkoleniowy-wojskowej-akademii-technicznej-zorlina/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1017, N'Zajazd POD KACZOREM', 13, NULL, 52.19128, 16.697731, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zajazd-pod-kaczorem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1018, N'Opuszczony biuroiwiec ZATRA', 4, NULL, 51.9685555, 20.1673145, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-biuroiwiec-zatra/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1019, N'Opuszczony Dom Nauczycielki', 3, NULL, 49.34107, 22.2877121, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-nauczycielki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1020, N'Dworek w Kurcewie', 7, NULL, 51.9405136, 17.7022934, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-w-kurcewie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1021, N'Klub X', 13, NULL, 52.0013351, 20.7631016, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/klub-x/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1022, N'Pa³ac w Krzyd³owicach', 7, NULL, 51.5434341, 16.2297039, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-krzydlowicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1023, N'Cerkiew', 13, NULL, 50.0239, 22.9531422, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cerkiew/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1024, N'Niedokoñczony budynek', 3, NULL, 49.657, 19.2299042, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-budynek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1025, N'Fort ¯abice', 10, NULL, 52.507267, 14.6859875, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-zabice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1026, N'Lotnisko poradzieckie', 10, NULL, 52.9424324, 14.4313145, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lotnisko-poradzieckie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1027, N'cegielnia', 4, NULL, 52.07421, 21.0885124, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1028, N'Agencja towarzyska CINDY', 3, NULL, 52.39404, 16.8384342, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/agencja-towarzyska-cindy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1029, N'Pa³ac P¹tnów (ruina) &#8211; Schloß Panthenau', 7, NULL, 51.2340927, 16.0013428, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-patnow-ruina-schlos-panthenau/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1030, N'Kopalnia Kwarcu Stanis³aw', 4, NULL, 50.84985, 15.4440308, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kopalnia-kwarcu-stanislaw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1031, N'Lokomotywownia PKP Grudzi¹dz', 1, NULL, 53.48301, 18.7783089, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lokomotywownia-pkp-grudziadz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1032, N'Pierwoszyno Jednostka', 10, NULL, 54.59171, 18.5231228, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pierwoszyno-jednostka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1033, N'Folwark Amerykan', 13, NULL, 50.42184, 17.882494, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/folwark-amerykan/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1034, N'Opuszczona Pralnia', 13, NULL, 52.16019, 21.0044861, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-pralnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1035, N'Zak³ad w³ókienniczy', 3, NULL, 51.74428, 19.5940742, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-wlokienniczy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1036, N'Oœrodek wczasowy', 13, NULL, 52.45402, 21.0696316, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wczasowy-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1037, N'Wermacht Po³udnie', 10, NULL, 50.3885, 21.71153, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wermacht-poludnie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1038, N'Dworek', 3, NULL, 53.9130363, 19.38366, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1039, N'Obory', 13, NULL, 53.90636, 20.8826065, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/obory/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1040, N'Opuszczony koœció³ ewangelicki', 7, NULL, 51.1880379, 15.6359053, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kosciol-ewangelicki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1041, N'Cmentarz ¿ydowski w Koroonowie', 7, NULL, 53.31307, 17.950983, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-w-koroonowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1042, N'Opuszczony kompleks mieszkalno- produkcyjny', 3, NULL, 50.6747055, 21.8189583, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kompleks-mieszkalno-produkcyjny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1043, N'Ruiny koœció³a p.w. œw. Wawrzyñca', 7, NULL, 51.6812172, 16.03961, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kosciola-p-w-sw-wawrzynca/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1044, N'Podziemia Nowej Huty', 12, NULL, 50.0721245, 20.0373459, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/podziemia-nowej-huty/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1045, N'Opuszczony szyb kopalniany Moszczenica', 13, NULL, 49.9411621, 18.5687962, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szyb-kopalniany-moszczenica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1046, N'Fort 8 &#8211; Kazimierz Wielki', 10, NULL, 53.0233345, 18.5567589, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-8-kazimierz-wielki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1047, N'Zieleñ Miejska', 4, NULL, 50.67219, 17.9081783, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zielen-miejska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1048, N'Dworek w Swaro¿ynie', 3, NULL, 54.03597, 18.6621246, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-w-swarozynie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1049, N'Fort Lebiedziew', 10, NULL, 52.0459442, 23.6187172, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-lebiedziew/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1050, N'Barokowy Pa³ac', 7, NULL, 54.0236053, 15.8522425, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/barokowy-palac/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1051, N'Klasztor Karmelitów Bosych', 7, NULL, 49.50187, 22.2714329, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/klasztor-karmelitow-bosych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1052, N'Gospodarstwo Rolne', 3, NULL, 50.7939644, 19.3311, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gospodarstwo-rolne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1053, N'Fort Koroszczyn', 10, NULL, 52.06452, 23.54971, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-koroszczyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1054, N'dom ¯yda', 3, NULL, 52.14708, 21.2809982, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-zyda/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1055, N'28 dywizjon rakietowy Obrony Powietrznej m. Trzcielin', 10, NULL, 52.3311768, 16.6395817, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/28-dywizjon-rakietowy-obrony-powietrznej-m-trzcielin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1056, N'pa³ac Nie¿ychowskich', 3, NULL, 52.8321724, 17.0758877, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-niezychowskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1057, N'Cmentarz ¯ydowski w Trzebini', 13, NULL, 50.15561, 19.4714088, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-w-trzebini/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1058, N'Sarbinowo Fort', 10, NULL, 52.6223373, 14.6692934, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sarbinowo-fort/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1059, N'Pa³ac Wierzbie', 3, NULL, 52.37336, 18.5666924, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-wierzbie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1060, N'Baseny i stadion Gwardii', 4, NULL, 52.19845, 20.989233, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baseny-i-stadion-gwardii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1061, N'Schron na lotnisku w Pile', 10, NULL, 53.1817436, 16.7209473, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-na-lotnisku-w-pile/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1062, N'Fort 1 Ró¿an', 10, NULL, 52.890995, 21.3887634, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-1-rozan/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1063, N'Poradzieckie lotnisko', 10, NULL, 51.55883, 15.5835619, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poradzieckie-lotnisko/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1064, N'KWK Rozalia', 4, NULL, 50.3412628, 19.0222378, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kwk-rozalia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1065, N'Dworek z XVIII wieku', 3, NULL, 51.95131, 15.1729479, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-z-xviii-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1066, N'Szczelina przeciwlotnicza', 12, NULL, 50.6611862, 17.9296474, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szczelina-przeciwlotnicza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1067, N'13 BAS', 10, NULL, 54.5965843, 18.8128, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/13-bas/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1068, N'Wie¿a nad Blichem', 7, NULL, 52.0589943, 20.43, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-nad-blichem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1069, N'Wojewódzki Szpital PrzeciwgruŸliczy', 11, NULL, 54.42402, 18.5625381, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wojewodzki-szpital-przeciwgruzliczy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1070, N'Opuszczony dom (stra¿nica kolejowa)', 3, NULL, 50.080822, 22.44446, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-straznica-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1071, N'Grobowiec Baronów Lipowskich', 9, NULL, 49.9169121, 20.1224918, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/grobowiec-baronow-lipowskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1072, N'PGR Roszków', 3, NULL, 51.9592934, 17.4462585, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pgr-roszkow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1073, N'Zajezdnia tramwajowa', 13, NULL, 54.4141121, 18.567173, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zajezdnia-tramwajowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1074, N'Fort XI Strubiny', 10, NULL, 52.48035, 20.5823917, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-xi-strubiny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1075, N'£aŸnia Tartaku', 4, NULL, 50.1417046, 18.8443, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/laznia-tartaku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1076, N'Dom wczasowy Górnik Zawoja', 3, NULL, 49.6417274, 19.53954, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-wczasowy-gornik-zawoja/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1077, N'Fort XVII Janówek', 10, NULL, 52.4311066, 20.7963467, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-xvii-janowek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1078, N'Wie¿a Arianka', 7, NULL, 51.0638123, 23.2455254, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-arianka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1079, N'Przepompownia', 4, NULL, 50.99287, 23.1704464, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przepompownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1080, N'Opuszczony basen Budowlani', 13, NULL, 51.80216, 19.4073811, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-basen-budowlani/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1081, N'Spichlerz twierdzy modliñskiej', 10, NULL, 52.4334221, 20.6806259, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spichlerz-twierdzy-modlinskiej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1082, N'Dwór Tarnawieckich', 3, NULL, 49.5390968, 22.25656, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-tarnawieckich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1083, N'Ruina oczyszczalni œcieków', 4, NULL, 51.5336647, 20.0473862, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruina-oczyszczalni-sciekow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1084, N'Pa³ac Tar³ów', 7, NULL, 50.8923149, 20.488472, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-tarlow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1085, N'Bunkier strategicznych agregatów', 10, NULL, 54.3400269, 18.6900768, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-strategicznych-agregatow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1086, N'Most Knybawski', 10, NULL, 54.0509224, 18.8147736, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/most-knybawski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1087, N'Budynek administracyjno-mieszkalny kolei', 3, NULL, 50.36471, 19.2617054, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-administracyjno-mieszkalny-kolei/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1088, N'Willa z lat 20-stych', 3, NULL, 52.3097839, 20.9097767, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-z-lat-20-stych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1089, N'Katakumby', 9, NULL, 52.1728, 21.0449982, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/katakumby/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1090, N'Dwór Czaple Ma³e', 3, NULL, 50.2992363, 19.9556141, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-czaple-male/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1091, N'Rozdzielnia Energetyczna', 4, NULL, 51.15445, 15.0243187, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rozdzielnia-energetyczna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1092, N'Wiadukty kolejowe', 1, NULL, 54.29762, 22.6545811, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wiadukty-kolejowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1093, N'Jednostka wojskowa nr.19 33', 10, NULL, 51.7165451, 19.4611778, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-wojskowa-nr-19-33/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1094, N'Drewniany m³yn', 13, NULL, 52.6095123, 20.5646038, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/drewniany-mlyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1095, N'Opuszczona Kot³ownia Wroc³aw G³ówny (K.W.G.)', 4, NULL, 51.0919075, 17.0464458, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kotlownia-wroclaw-glowny-k-w-g/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1096, N'Gospodarstwo z magazynem i warsztatem', 3, NULL, 51.2021523, 22.58741, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gospodarstwo-z-magazynem-i-warsztatem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1097, N'Ruiny pa³acu w Jakubowie', 7, NULL, 51.6065559, 15.9990978, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-palacu-w-jakubowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1098, N'Pa³ac w Koñczewie', 3, NULL, 54.38551, 16.9611, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-konczewie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1099, N'Zak³ad Ceramiczny', 4, NULL, 50.6059647, 17.7158546, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-ceramiczny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1100, N'Opuszczony silos+ wie¿a ciœnieñ', 9, NULL, 52.38722, 16.9093857, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-silos-wieza-cisnien/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1101, N'Wy¿sza Szko³a Pedagogiczna', 3, NULL, 50.81478, 19.1103535, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wyzsza-szkola-pedagogiczna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1102, N'Zak³ady Przemys³u Lnianego Lech', 4, NULL, 50.3626556, 16.7105484, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-przemyslu-lnianego-lech/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1103, N'Ruiny koœcio³a œw. Antoniego', 13, NULL, 53.0064659, 23.912077, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kosciola-sw-antoniego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1104, N'Fort Pancerny Pomocniczy 45a Bibice', 10, NULL, 50.1250076, 19.9481163, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-pancerny-pomocniczy-45a-bibice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1105, N'Nastawnia PKP Konin-Pt', 13, NULL, 52.30252, 18.26131, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nastawnia-pkp-konin-pt/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1106, N'PGR Wizna', 4, NULL, 53.2065468, 22.44378, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pgr-wizna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1107, N'Ruiny Zamku Niesytno w P³oninie', 7, NULL, 50.90363, 16.0074234, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zamku-niesytno-w-ploninie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1108, N'Zak³ad Produkcji Odzie¿y', 4, NULL, 53.2673645, 15.557169, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-produkcji-odziezy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1109, N'Dawne Zak³ady Chemitex-Wiskord', 4, NULL, 53.3531647, 14.5712614, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawne-zaklady-chemitex-wiskord/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1110, N'Wiatrak holenderski z 1924 roku', 13, NULL, 53.6460838, 23.3521881, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wiatrak-holenderski-z-1924-roku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1111, N'Cementownia Grodziec', 4, NULL, 50.3537254, 19.0865345, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cementownia-grodziec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1112, N'Zespó³ pa³acowo-parkowy z okresu neogotyckiego', 3, NULL, 54.3698158, 19.83467, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-palacowo-parkowy-z-okresu-neogotyckiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1113, N'Schron bojowy nr.4 Obszar Warowny Œl¹sk', 10, NULL, 50.3399353, 18.99657, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-bojowy-nr-4-obszar-warowny-slask/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1114, N'poniemieckie bunkry', 10, NULL, 51.5879478, 20.0033588, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poniemieckie-bunkry/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1115, N'Ruina zboru ewangelickiego w Przec³awiu', 13, NULL, 51.6054039, 15.7574759, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruina-zboru-ewangelickiego-w-przeclawiu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1116, N'Elektrownia J¹drowa ¯arnowiec', 4, NULL, 54.7423744, 18.0895252, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/elektrownia-jadrowa-zarnowiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1117, N'Kopalnia A³unu w Janowcu', 12, NULL, 50.5066223, 16.7656651, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kopalnia-alunu-w-janowcu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1118, N'Szko³a podstawowa z j. litewskim', 13, NULL, 54.2175941, 23.2128582, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkola-podstawowa-z-j-litewskim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1119, N'Dom', 3, NULL, 51.5893364, 19.4825344, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1120, N'Piramida w Rapie z 1811r', 13, NULL, 54.2497826, 22.02999, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/piramida-w-rapie-z-1811r/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1121, N'Fabryka Porcelany Wa³brzych', 4, NULL, 50.78331, 16.2807312, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-porcelany-walbrzych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1122, N'Os³a &#8211; pa³ac', 3, NULL, 51.32118, 15.7550516, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osla-palac/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1123, N'Bunkry', 10, NULL, 54.0000229, 19.0018, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1124, N'Huta szk³a Be³chów', 4, NULL, 52.0179062, 20.04284, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/huta-szkla-belchow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1125, N'Przêdzalnia Bawe³ny', 4, NULL, 51.593956, 14.7507467, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedzalnia-bawelny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1126, N'Koœció³ ewangelicki', 7, NULL, 52.7067375, 16.53009, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-ewangelicki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1127, N'Zambrowski Rejon Umocniony', 10, NULL, 52.8631172, 22.0052719, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zambrowski-rejon-umocniony/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1128, N'Oœrodek wypoczynkowy RUDKA', 13, NULL, 53.6865921, 20.7887936, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-rudka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1129, N'Zabytkowa kamienica', 3, NULL, 52.2329369, 20.9900723, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabytkowa-kamienica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1130, N'Oœrodek wypoczynkowy Towarzystwa Przyjació³ Dzieci', 3, NULL, 51.5887375, 20.3454132, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-towarzystwa-przyjaciol-dzieci/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1131, N'RzeŸnia i klub/dyskoteka', 4, NULL, 50.9652977, 21.3643456, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rzeznia-i-klub-dyskoteka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1132, N'Opuszczona wie¿a lotnicza', 10, NULL, 51.9931755, 23.1793919, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-wieza-lotnicza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1133, N'Czarny most', 1, NULL, 54.3268051, 18.4423656, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/czarny-most/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1134, N'Opuszczone Miasto-Pstr¹¿e', 3, NULL, 51.4377441, 15.5768108, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-miasto-pstraze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1135, N'Spó³dzielnia Inwalidów im. Louisa Braillea', 4, NULL, 50.34787, 18.20438, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spoldzielnia-inwalidow-im-louisa-braillea/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1136, N'Pa³ac neorenesansowy', 3, NULL, 53.63447, 19.1061687, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-neorenesansowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1137, N'Ewangelicki koœció³ œw. Antoniego', 13, NULL, 51.2597, 15.684679, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ewangelicki-kosciol-sw-antoniego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1138, N'Opuszczona jednostka wojskowa (Pu³k Lotniczy)', 10, NULL, 52.16414, 15.84003, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-jednostka-wojskowa-pulk-lotniczy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1139, N'Szpital', 11, NULL, 50.2942657, 18.8185558, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1140, N'Metalplast', 4, NULL, 51.40227, 19.689045, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/metalplast/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1141, N'Opuszczony ZWUT', 4, NULL, 52.3981323, 22.01036, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zwut/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1142, N'Chlewnia', 13, NULL, 50.70854, 17.1567078, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/chlewnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1143, N'Zak³ady PKS', 4, NULL, 51.9645767, 21.52771, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-pks/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1144, N'kamieniczka-bliŸniak', 3, NULL, 52.3071632, 20.91791, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamieniczka-blizniak/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1145, N'Wytwórnia Wód Gazowanych Igloopol', 4, NULL, 49.25196, 22.69472, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wytwornia-wod-gazowanych-igloopol/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1146, N'Mauzoleum Donimirskich', 13, NULL, 53.90508, 19.060606, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mauzoleum-donimirskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1147, N'Stary koœció³', 13, NULL, 51.66095, 19.3481045, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-kosciol/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1148, N'Opuszczony dom grawernika', 3, NULL, 52.3535919, 20.97815, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-grawernika/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1149, N'Bunkry Boles³awiec', 12, NULL, 51.2535973, 15.5679836, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-boleslawiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1150, N'Pa³ac w Pêczkowie', 3, NULL, 51.11619, 16.4800625, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-peczkowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1151, N'Hala NR7 Stilon', 4, NULL, 52.7463722, 15.2594948, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hala-nr7-stilon/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1152, N'Opuszczony dwór/szko³a w Cieœlach', 3, NULL, 52.36449, 16.6211128, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dwor-szkola-w-cieslach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1153, N'Fabryka amunicji', 10, NULL, 52.55593, 14.85928, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-amunicji/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1154, N'Linia obrony StellungA2', 10, NULL, 50.3612022, 19.99188, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/linia-obrony-stellunga2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1155, N'Fort I Salis Soglio', 10, NULL, 49.75776, 22.89628, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-i-salis-soglio/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1156, N'Elektrociep³ownia Szombierki', 4, NULL, 50.34524, 18.8863564, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/elektrocieplownia-szombierki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1157, N'Torpedowania Gdynia Babie Do³y', 10, NULL, 54.58707, 18.5440216, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/torpedowania-gdynia-babie-doly/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1158, N'Dawna stacja PKP', 13, NULL, 51.9739647, 19.2659435, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-stacja-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1159, N'Bunkier Regelbau 514', 10, NULL, 52.0701637, 21.3284, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-regelbau-514/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1160, N'Fort XIV Go³awice', 10, NULL, 52.5089073, 20.7051086, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-xiv-golawice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1161, N'Komin Opuszczonej Mleczarni', 4, NULL, 52.5269279, 19.6598625, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/komin-opuszczonej-mleczarni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1162, N'Zamek w £apalicach', 7, NULL, 54.3466759, 18.12774, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-w-lapalicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1163, N'Zamek (pa³ac) Oppersdorffów', 7, NULL, 50.35572, 17.8611641, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-palac-oppersdorffow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1164, N'Poligon Garnizonowy', 10, NULL, 52.93643, 20.596962, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poligon-garnizonowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1165, N'Dom profilaktyczno-wypoczynkowy Zdrowie', 3, NULL, 54.4825821, 18.5642967, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-profilaktyczno-wypoczynkowy-zdrowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1166, N'Opuszczony szpital', 11, NULL, 52.073513, 21.1184254, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szpital/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1167, N'Niszczej¹ce wagony kolejowe', 1, NULL, 50.08132, 19.934145, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niszczejace-wagony-kolejowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1168, N'Opuszczone Radzieckie Lotnisko', 10, NULL, 51.6266479, 15.405407, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-radzieckie-lotnisko/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1169, N'Wie¿a ciœnieñ Huty 1 Maja', 4, NULL, 50.29738, 18.6840458, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-cisnien-huty-1-maja/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1170, N'Tartak wodny na rzece Wis³ok', 13, NULL, 49.57984, 21.9439678, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tartak-wodny-na-rzece-wislok/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1171, N'Kamienica Matejki', 3, NULL, 52.39614, 16.89778, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamienica-matejki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1172, N'Pa³ac Reiswitzów w Wêdryni', 7, NULL, 50.86686, 18.312664, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-reiswitzow-w-wedryni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1173, N'Pruska wie¿a obserwacyjna III', 10, NULL, 52.5648842, 16.9037933, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pruska-wieza-obserwacyjna-iii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1174, N'Opuszczone Gliwickie Przedsiêbiorstwo Robót In¿ynieryjnych', 4, NULL, 50.2792969, 18.7166367, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gliwickie-przedsiebiorstwo-robot-inzynieryjnych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1175, N'Dzia³obitnia Fortu Œliwickiego', 10, NULL, 52.26553, 21.015955, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dzialobitnia-fortu-sliwickiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1176, N'Stacja PKP R¹binek', 4, NULL, 52.7722473, 18.2328129, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-pkp-rabinek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1177, N'Spalarnia pad³ych zwierz¹t', 13, NULL, 52.626976, 19.57768, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spalarnia-padlych-zwierzat/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1178, N'Dynamit Aktien Gesellschaft Vormals Alfred Nobel &#038; Co.', 4, NULL, 51.7988472, 15.242672, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dynamit-aktien-gesellschaft-vormals-alfred-nobel-co/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1179, N'Cmentarz ¿o³nierzy Austro-Wêgier i Rosji', 10, NULL, 49.51027, 21.49293, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zolnierzy-austro-wegier-i-rosji/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1180, N'Opuszczony zamek w Œwierzawie', 7, NULL, 51.0098877, 15.9006853, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zamek-w-swierzawie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1181, N'Fort 41a Mydlniki', 10, NULL, 50.0848541, 19.8615532, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-41a-mydlniki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1182, N'Kapliczki na Œwiêtej Górze', 13, NULL, 50.7094841, 16.0122643, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kapliczki-na-swietej-gorze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1183, N'Fabryka mebli Diplo', 4, NULL, 51.2654266, 22.4647045, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-mebli-diplo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1184, N'Opuszczona RUSKA szko³a', 3, NULL, 51.3785973, 15.6021738, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-ruska-szkola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1185, N'Maj¹tek Turowice', 7, NULL, 52.0478058, 21.1712341, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/majatek-turowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1186, N'Podziemne Stanowisko Dowodzenia Pó³nocnej Grupy Wojsk Armii Radzieckiej', 10, NULL, 51.46965, 15.8201084, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/podziemne-stanowisko-dowodzenia-polnocnej-grupy-wojsk-armii-radzieckiej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1187, N'Pa³ac Modlibowskich', 3, NULL, 51.7676277, 17.2930813, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-modlibowskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1188, N'Willa W³oska (ruina)', 3, NULL, 51.1733971, 16.1290455, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-wloska-ruina/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1189, N'Hale magazynowe', 4, NULL, 52.2609062, 20.9497585, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hale-magazynowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1190, N'Zrujnowany pa³ac', 3, NULL, 54.1413727, 19.7859688, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zrujnowany-palac/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1191, N'Kamienica Stefanii Esse', 3, NULL, 52.2098045, 18.2541065, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamienica-stefanii-esse/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1192, N'Koœció³ pw. œw. Heleny', 13, NULL, 51.699, 15.9500456, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-pw-sw-heleny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1193, N'171. kompania radiotechniczna', 10, NULL, 51.96734, 19.1607857, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/171-kompania-radiotechniczna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1194, N'Ruiny koscio³a ewangelickiego', 7, NULL, 50.71333, 16.2488041, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kosciola-ewangelickiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1195, N'Opuszczone gospodarstwo badawcze', 13, NULL, 51.7855225, 19.0628052, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gospodarstwo-badawcze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1196, N'Cmentarz ¯ydowski na Bródnie &#8211; Kirkut Praski', 13, NULL, 52.2730751, 21.0357151, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-na-brodnie-kirkut-praski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1197, N'Podwórko w lesie', 3, NULL, 51.8564568, 21.559124, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/podworko-w-lesie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1198, N'Dom na K¹pielowej', 3, NULL, 49.9958229, 20.9569569, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-na-kapielowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1199, N'Szko³a podstawowa', 3, NULL, 53.3492, 19.1434536, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkola-podstawowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1200, N'Garbarnia', 4, NULL, 53.2600021, 23.7801228, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/garbarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1201, N'Silosy', 4, NULL, 54.3841133, 18.7085934, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/silosy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1202, N'Port Miejski', 1, NULL, 51.127903, 17.0183353, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/port-miejski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1203, N'Stanica ZHP Nad Sopotem', 13, NULL, 50.4633026, 23.1732273, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stanica-zhp-nad-sopotem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1204, N'Jednostka rakietowa Nieczajna 2008', 10, NULL, 52.5827141, 16.7584419, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-rakietowa-nieczajna-2008/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1205, N'Cmentarz i zbór mennonitów (XVIII w.)', 13, NULL, 54.0710754, 19.38881, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-i-zbor-mennonitow-xviii-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1206, N'Schron Kolejowy dla poci¹gu sztabowego', 10, NULL, 51.4964523, 20.0536537, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-kolejowy-dla-pociagu-sztabowego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1207, N'Niedokoñczona zajezdnia PKS-u', 13, NULL, 51.1460533, 23.5061722, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczona-zajezdnia-pks-u/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1208, N'Stary hotel (przy tesco)', 3, NULL, 50.81705, 19.1316814, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-hotel-przy-tesco/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1209, N'Ruiny Folwarku Waldhoff', 3, NULL, 50.4597435, 18.1440067, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-folwarku-waldhoff/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1210, N'Budynek kolejowy', 1, NULL, 52.2588272, 20.99718, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1211, N'Fort 47 1/2 Sudó³', 10, NULL, 50.10335, 19.9852467, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-47-1-2-sudol/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1212, N'Hydrofornia zak³adów FUGO', 4, NULL, 52.2549324, 18.2672482, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hydrofornia-zakladow-fugo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1213, N'Hochwald &#8211; BUNKRY niemieckie', 10, NULL, 54.14796, 21.8538666, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hochwald-bunkry-niemieckie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1214, N'Opuszczony Dwór', 3, NULL, 50.2547569, 17.9285, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dwor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1215, N'Zak³ady Tworzyw Sztucznych Pronit', 4, NULL, 51.4626846, 21.43688, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-tworzyw-sztucznych-pronit/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1216, N'Ruiny radiostacji wojskowej w Stanis³awowie', 10, NULL, 51.0725632, 16.0045929, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-radiostacji-wojskowej-w-stanislawowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1217, N'Cementownia Rejowiec', 4, NULL, 51.1212044, 23.22996, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cementownia-rejowiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1218, N'Opuszczony oœrodek wczasowy w Kisielanach-¯michach', 13, NULL, 52.234745, 22.1708965, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wczasowy-w-kisielanach-zmichach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1219, N'Fabryka kosmetyków Pollena-Uroda', 4, NULL, 52.2644157, 21.04326, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-kosmetykow-pollena-uroda/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1220, N'Kopalnia œw. Jerzy', 4, NULL, 50.7930527, 18.97047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kopalnia-sw-jerzy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1221, N'DW Leœnik', 3, NULL, 50.2283325, 16.76351, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dw-lesnik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1222, N'Mauzoleum Lehndorffów', 7, NULL, 54.1235466, 21.67359, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mauzoleum-lehndorffow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1223, N'Willa Alma', 7, NULL, 49.4267273, 20.4876537, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-alma/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1224, N'Malutka hala/budynek #1', 4, NULL, 51.1300621, 16.9408112, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/malutka-hala-budynek-1/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1225, N'Fort VII Cybulice', 10, NULL, 52.3960838, 20.6324959, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-vii-cybulice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1226, N'Stara lokomotywownia Pyskowice', 1, NULL, 50.387146, 18.6130848, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-lokomotywownia-pyskowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1227, N'Zespó³ dworski XIX w.', 3, NULL, 52.25381, 20.2819424, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-dworski-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1228, N'Pa³ac w Brzyskach', 3, NULL, 49.82105, 21.3897724, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-brzyskach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1229, N'JEDNOSTKA WOJSKOWA', 10, NULL, 51.6623344, 16.0839844, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-wojskowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1230, N'Pa³acyk myœliwski Poniatowskich', 3, NULL, 51.2424469, 22.56744, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palacyk-mysliwski-poniatowskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1231, N'Stary poligon chemiczny', 10, NULL, 53.8497925, 20.9408855, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-poligon-chemiczny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1232, N'Nieczynny wiadukt kolejowy', 1, NULL, 53.31448, 17.9494076, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieczynny-wiadukt-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1233, N'Kamienio³om Liban', 10, NULL, 50.0368, 19.9558182, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamieniolom-liban/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1234, N'KWK Mys³owice', 4, NULL, 50.249733, 19.1283913, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kwk-myslowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1235, N'Opuszczony budynek', 3, NULL, 52.2115974, 21.0192814, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1236, N'Niedomickie Zak³ady Celulozy', 4, NULL, 50.10763, 20.89988, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedomickie-zaklady-celulozy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1237, N'Dzie³o D-4 Strubiny', 10, NULL, 52.4828835, 20.59104, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dzielo-d-4-strubiny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1238, N'Cukrownia Jawor', 4, NULL, 51.0770454, 16.1618252, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cukrownia-jawor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1239, N'Zabudowania PKP', 1, NULL, 54.5350647, 18.5025864, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabudowania-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1240, N'Sadowice Wroc³awskie &#8211; Stacja Kolejowa', 1, NULL, 51.05613, 16.8239861, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sadowice-wroclawskie-stacja-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1241, N'Opuszczony SKR', 4, NULL, 51.7822838, 20.0888443, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-skr/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1242, N'Szko³a Podstawowa w Dani³owie', 3, NULL, 52.74691, 22.0344887, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkola-podstawowa-w-danilowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1243, N'Warsztaty Szkolne Zespo³u Szkó³ Zawodowych oraz Oddzia³ Pralniczy Wojewódzkiej Spó³dzielni Pracy/', 13, NULL, 52.2526321, 18.26462, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/warsztaty-szkolne-zespolu-szkol-zawodowych-oraz-oddzial-pralniczy-wojewodzkiej-spoldzielni-pracy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1244, N'Opuszczona Baza Wojskowa', 10, NULL, 52.55121, 16.0261917, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-baza-wojskowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1245, N'Starogardzkie M³yny', 4, NULL, 53.9682045, 18.5383129, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/starogardzkie-mlyny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1246, N'Zak³ad Górka', 4, NULL, 50.17441, 19.4613152, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-gorka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1247, N'Hala Rybacka', 13, NULL, 54.59938, 18.80514, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hala-rybacka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1248, N'Wielki dom z gara¿em', 3, NULL, 52.0870056, 21.083622, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wielki-dom-z-garazem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1249, N'Baza g³owic j¹drowych', 10, NULL, 53.4324455, 16.5842056, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baza-glowic-jadrowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1250, N'Lubuskie Zak³ady Garbarskie', 4, NULL, 51.4766, 15.608633, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lubuskie-zaklady-garbarskie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1251, N'Stary Cmentarz ¯ydowski', 13, NULL, 50.2559662, 19.00768, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-cmentarz-zydowski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1252, N'27 BAS', 10, NULL, 54.59688, 18.8071346, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/27-bas/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1253, N'Budynek P3 Odlewni ¯eliwa St¹porków', 4, NULL, 51.1362038, 20.5731812, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-p3-odlewni-zeliwa-staporkow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1254, N'Stara lokomotywownia', 1, NULL, 50.04438, 22.0064011, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-lokomotywownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1255, N'Dworek Wallachów', 3, NULL, 49.8563843, 21.91321, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-wallachow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1256, N'Opuszczony magazyn', 1, NULL, 50.2022552, 19.15247, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-magazyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1257, N'Stary Warsztat', 13, NULL, 51.74796, 18.0875359, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-warsztat/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1258, N'Browar Legnica', 4, NULL, 51.20799, 16.1651649, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/browar-legnica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1259, N'Fort Bema', 10, NULL, 52.257206, 20.93861, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-bema/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1260, N'Dawna Szko³a Podstawowa', 13, NULL, 52.8047142, 19.3584785, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-szkola-podstawowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1261, N'Pamotex', 4, NULL, 51.6635323, 19.3573322, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pamotex/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1262, N'Osrodek letniskowo-wypoczynkowy', 3, NULL, 51.6131668, 19.4704342, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-letniskowo-wypoczynkowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1263, N'25 BAS', 10, NULL, 54.38833, 18.6965256, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/25-bas/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1264, N'Opuszczona bursa szkolna', 13, NULL, 50.2517662, 19.0851078, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-bursa-szkolna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1265, N'Poniemiecki Cmentarz', 13, NULL, 52.549057, 16.70479, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poniemiecki-cmentarz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1266, N'Stara garbarnia i m³yn', 4, NULL, 50.9239922, 16.1007957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-garbarnia-i-mlyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1267, N'Opuszczony i niedokoñczony Dom', 3, NULL, 52.04787, 20.7224884, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-i-niedokonczony-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1268, N'Pralnio &#8211; Farbiarnia Stolarczyk', 4, NULL, 50.0371056, 20.9716244, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pralnio-farbiarnia-stolarczyk/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1269, N'Cegielnia w Anio³owie', 4, NULL, 51.8507, 19.3528214, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-w-aniolowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1270, N'Budynek przy Pa³acu w Celejowie', 3, NULL, 51.33173, 22.073103, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-przy-palacu-w-celejowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1271, N'Ruiny œwi¹tyni dumania', 7, NULL, 54.08083, 21.60058, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-swiatyni-dumania/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1272, N'Pensjonat Ruczaj', 3, NULL, 49.3651466, 20.7929974, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pensjonat-ruczaj/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1273, N'Fort kolejowy', 10, NULL, 53.0050049, 18.6339417, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1274, N'Szkolne Schronisko M³odzie¿owe', 3, NULL, 50.3087425, 17.3915844, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkolne-schronisko-mlodziezowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1275, N'Za³êska Ha³da &#8211; opuszczona piekarnia PIEKIELNIK', 13, NULL, 50.25023, 18.9840889, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaleska-halda-opuszczona-piekarnia-piekielnik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1276, N'Zajezdnia kolejowa', 1, NULL, 52.23876, 19.300703, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zajezdnia-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1277, N'Dworek D¹bskich', 7, NULL, 50.1461143, 20.68669, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-dabskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1278, N'Niedawno opuszczony SZPITAL w Œwidnicy', 11, NULL, 50.83787, 16.4958858, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedawno-opuszczony-szpital-w-swidnicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1279, N'Jaz Cybiñski', 10, NULL, 52.3959122, 16.99218, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jaz-cybinski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1280, N'Ruiny zamku w Podzamczu', 7, NULL, 50.45194, 19.54808, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zamku-w-podzamczu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1281, N'Kwatera Naczelnego Dowództwa Wojsk L¹dowych BUNKRY', 10, NULL, 54.1883545, 21.6396332, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kwatera-naczelnego-dowodztwa-wojsk-ladowych-bunkry/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1282, N'Zapomniany pa³ac w Rudzie', 3, NULL, 51.19947, 18.6154881, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zapomniany-palac-w-rudzie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1283, N'Nieczynne obiekty obok szpitala Jastrzêbie Zdrój', 11, NULL, 49.94511, 18.5820789, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieczynne-obiekty-obok-szpitala-jastrzebie-zdroj/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1284, N'Pa³ac Wrochemów i Schimonskych', 7, NULL, 50.1588669, 18.1799717, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-wrochemow-i-schimonskych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1285, N'Odlewnia Zremb', 4, NULL, 51.9755173, 22.7539272, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/odlewnia-zremb/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1286, N'Opuszczone gospodarstwo &#8211; dom i stodo³a', 3, NULL, 51.3703957, 23.1289253, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gospodarstwo-dom-i-stodola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1287, N'Grobowiec Steinertów', 13, NULL, 54.2582054, 21.9869022, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/grobowiec-steinertow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1288, N'Wie¿a ciœnieñ', 1, NULL, 52.60542, 16.5828743, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-cisnien/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1289, N'Cmentarz ewangelicko-augsburski', 13, NULL, 51.4156761, 22.0568485, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-ewangelicko-augsburski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1290, N'Gorzelnia przerobiona na spichlerz i ruiny', 13, NULL, 54.2227, 17.1499729, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-przerobiona-na-spichlerz-i-ruiny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1291, N'Pañstwowy Oœrodek Maszynowy &#8211; POM w Goñczycach', 4, NULL, 51.7788658, 21.7147388, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/panstwowy-osrodek-maszynowy-pom-w-gonczycach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1292, N'PKP Brochów #2 &#8211; Drewniana Dy¿urka (WB13)', 1, NULL, 51.0571175, 17.09145, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pkp-brochow-2-drewniana-dyzurka-wb13/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1293, N'Dworek na M³ocinach', 3, NULL, 52.308773, 20.9212837, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-na-mlocinach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1294, N'Stary cmentarz', 13, NULL, 54.22109, 17.1489716, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-cmentarz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1295, N'Park z grobami von Blicherów', 13, NULL, 53.4283638, 19.2758255, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/park-z-grobami-von-blicherow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1296, N'Sala gimnastyczna', 13, NULL, 52.421978, 16.8927631, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sala-gimnastyczna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1297, N'Przêdzalnia Cienkoprzêdna H.Grohmana', 4, NULL, 51.75366, 19.4786034, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedzalnia-cienkoprzedna-h-grohmana/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1298, N'Opuszczony browar dworski', 7, NULL, 50.1295357, 19.68663, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-browar-dworski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1299, N'Opuszczony koœció³ z 1870r.', 13, NULL, 50.2808456, 19.4697723, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kosciol-z-1870r/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1300, N'Bunkry lini mo³otowa', 10, NULL, 52.390686, 22.9813385, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-lini-molotowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1301, N'Pa³ac Boguszyn', 7, NULL, 52.0662727, 17.3349361, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-boguszyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1302, N'Bunkry w Œwidnicy', 10, NULL, 51.8642044, 15.3862791, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-w-swidnicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1303, N'Kopalniane chodniki odwadniaj¹ce', 12, NULL, 50.21416, 19.1642876, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kopalniane-chodniki-odwadniajace/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1304, N'Bocznica przy ul. Wêglowej', 1, NULL, 54.3383026, 18.2091236, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bocznica-przy-ul-weglowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1305, N'Instytut genetyki roœlin', 4, NULL, 52.4217, 16.8798714, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/instytut-genetyki-roslin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1306, N'Kopalnia Porfiru', 4, NULL, 50.158493, 19.6027, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kopalnia-porfiru/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1307, N'Dwór w Osówcu', 3, NULL, 53.1908379, 17.8633556, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-w-osowcu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1308, N'Willa Kazinek', 3, NULL, 52.3890648, 20.9287624, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-kazinek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1309, N'Ruiny w Pielaszkowicach', 7, NULL, 51.0467033, 16.5142441, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-w-pielaszkowicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1310, N'Opuszczona paszarnia', 4, NULL, 51.04153, 17.4388218, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-paszarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1311, N'Stalownik', 11, NULL, 49.7791977, 19.0934219, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stalownik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1312, N'Schron przeciwlotniczy', 10, NULL, 50.2896, 19.149395, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-przeciwlotniczy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1313, N'Huta szk³a', 4, NULL, 50.36749, 19.2715435, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/huta-szkla/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1314, N'Hotel Sudety', 2, NULL, 50.9000435, 15.7626982, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-sudety/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1315, N'Biurowiec PKP', 9, NULL, 50.3204765, 19.3215179, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/biurowiec-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1316, N'Malutka hala/budynek #2', 4, NULL, 51.130558, 16.9505787, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/malutka-hala-budynek-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1317, N'Wie¿a widokowa', 13, NULL, 54.5062828, 18.52767, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-widokowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1318, N'DW Ma³gorzatka', 2, NULL, 49.62627, 18.8771572, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dw-malgorzatka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1319, N'Park dworski w Charzewicach', 3, NULL, 50.6023636, 22.03308, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/park-dworski-w-charzewicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1320, N'Wyci¹g narciarski', 13, NULL, 49.6397324, 19.5405579, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wyciag-narciarski-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1321, N'Koszary 12 DROP', 10, NULL, 50.4421654, 18.29231, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/koszary-12-drop/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1322, N'Bunkry jednostki rakietowej', 10, NULL, 50.45138, 18.2946835, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-jednostki-rakietowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1323, N'Cmentarz ¿ydowski w Milówce', 7, NULL, 49.5606422, 19.0816765, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-w-milowce/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1324, N'Sanatorium', 2, NULL, 54.48227, 18.565424, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sanatorium/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1325, N'Polifarb', 4, NULL, 54.459362, 18.46158, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/polifarb/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1326, N'DW Górnik', 2, NULL, 49.6416245, 19.5415878, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dw-gornik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1327, N'Zak³ad krawiecki', 4, NULL, 50.4025269, 18.7132034, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-krawiecki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1328, N'Opuszczona olejarnia.', 13, NULL, 52.2053032, 18.2530556, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-olejarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1329, N'Radiówek', 10, NULL, 52.1510544, 21.2991447, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/radiowek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1330, N'Opuszczony oœrodek wypoczynkowy Skarpa', 3, NULL, 52.3443642, 18.5709, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy-skarpa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1331, N'Umocnienia wojskowe', 10, NULL, 54.22209, 15.7821178, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/umocnienia-wojskowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1332, N'Camping', 13, NULL, 51.512085, 17.84834, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/camping/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1333, N'Kwatera Göringa Breitenheide / oœrodek naukowo-badawczy Luftwaffe', 10, NULL, 53.6525345, 21.7024612, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kwatera-goringa-breitenheide-osrodek-naukowo-badawczy-luftwaffe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1334, N'Opuszczona Bocznica Kolejowa PKP', 1, NULL, 50.35434, 18.1764641, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-bocznica-kolejowa-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1335, N'Wytwórnia biopaliw', 4, NULL, 51.8776054, 20.397234, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wytwornia-biopaliw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1336, N'Wyci¹g Narciarski Za Puszem', 13, NULL, 49.5557442, 21.8375263, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wyciag-narciarski-za-puszem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1337, N'Opuszczony dom z gospodarstwem', 3, NULL, 51.74623, 19.5874863, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-z-gospodarstwem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1338, N'Kaplica grobowa', 13, NULL, 50.2579346, 18.0056915, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kaplica-grobowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1339, N'Kompleks RIESE', 9, NULL, 50.696785, 16.4429283, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kompleks-riese/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1340, N'Poniemieckie bunkry Chorzyna', 10, NULL, 51.30787, 18.8719158, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poniemieckie-bunkry-chorzyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1341, N'Cegielnia &#8220;Gotyka&#8221;', 4, NULL, 50.97858, 18.1574726, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-gotyka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1342, N'Zlewnia mleka', 13, NULL, 51.3146324, 22.5611649, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zlewnia-mleka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1343, N'willa konsula Lange', 3, NULL, 52.08386, 21.1090717, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-konsula-lange/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1344, N'Baza Rakietowa 10 dywizjon techniczny Obrony Powietrznej', 10, NULL, 52.38398, 21.093998, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baza-rakietowa-10-dywizjon-techniczny-obrony-powietrznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1345, N'PKP Brochów #1 &#8211; Malutka Hala', 1, NULL, 51.0640144, 17.0889225, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pkp-brochow-1-malutka-hala/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1346, N'Huta szk³a Kara', 4, NULL, 51.4188538, 19.6844082, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/huta-szkla-kara/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1347, N'Kolejowe Odolany', 1, NULL, 52.2168236, 20.926897, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kolejowe-odolany/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1348, N'Cegielnia i magazyn rolniczy', 13, NULL, 52.15224, 19.78968, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-i-magazyn-rolniczy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1349, N'Night Club Maxim', 13, NULL, 54.4799728, 18.5627, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/night-club-maxim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1350, N'Opuszczony Dom Ostaszewo 9', 3, NULL, 53.12423, 18.62779, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-ostaszewo-9/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1351, N'P.P Polmozbyt', 4, NULL, 52.20524, 18.2632256, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/p-p-polmozbyt/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1352, N'Wodna przepompownia w Mikolinie', 13, NULL, 50.8011971, 17.675478, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wodna-przepompownia-w-mikolinie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1353, N'Wie¿a', 13, NULL, 54.39825, 18.5608444, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1354, N'Ruiny zak³adu górniczego', 4, NULL, 50.357563, 16.8997841, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zakladu-gorniczego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1355, N'Ruiny póŸnogotyckiego koœcio³a pw. Œciêcia œw. Jana Chrzciciela w Chojnicy', 13, NULL, 52.5275, 16.91517, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-poznogotyckiego-kosciola-pw-sciecia-sw-jana-chrzciciela-w-chojnicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1356, N'Opuszczona fabryka mebli', 4, NULL, 51.0671425, 15.3768682, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-mebli/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1357, N'Elewator Glob Farm', 4, NULL, 50.98851, 22.3332233, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/elewator-glob-farm/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1358, N'Szpital Uzdrowiskowy Gozdawa', 11, NULL, 49.5515747, 21.8495369, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital-uzdrowiskowy-gozdawa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1359, N'Stary Tartak', 4, NULL, 52.9881172, 15.2148409, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-tartak/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1360, N'9 BAS &#8211; Ustka', 10, NULL, 54.5771675, 16.803215, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/9-bas-ustka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1361, N'Siestrzechowice: Pa³ac Biskupów Wroc³awskich', 7, NULL, 50.4345627, 17.27477, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/siestrzechowice-palac-biskupow-wroclawskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1362, N'Fabryka Œl¹ska Celuloza', 4, NULL, 51.2287369, 16.4737625, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-slaska-celuloza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1363, N'Opuszczony dom wczasowy UROCZA I', 3, NULL, 50.7784653, 15.7258987, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-wczasowy-urocza-i/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1364, N'Schron', 10, NULL, 50.3072548, 21.4620152, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1365, N'Budynek administracyjny WSK Mielec', 9, NULL, 50.30579, 21.460928, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-administracyjny-wsk-mielec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1366, N'Remontownia PKP', 1, NULL, 51.9465942, 20.4620361, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/remontownia-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1367, N'Spó³dzielnia Pracy Zaopatrzenia Rolnictwa', 13, NULL, 52.232708, 18.2309265, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spoldzielnia-pracy-zaopatrzenia-rolnictwa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1368, N'Oœrodek Szkoleniowo Wypoczynkowy', 3, NULL, 51.3849068, 23.0217648, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-szkoleniowo-wypoczynkowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1369, N'Elewator zbo¿owy', 13, NULL, 51.65665, 17.80501, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/elewator-zbozowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1370, N'Kamienio³om', 4, NULL, 50.8306732, 15.4561758, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamieniolom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1371, N'Dworek w Lipówcu', 3, NULL, 51.7057037, 17.3214912, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-w-lipowcu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1372, N'Kino Mazur', 7, NULL, 51.6659546, 19.3555927, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kino-mazur/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1373, N'Punkt Przyjêcia i Wyposa¿enia', 11, NULL, 52.120327, 21.2999249, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/punkt-przyjecia-i-wyposazenia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1374, N'Malutka hala/budynek #3', 4, NULL, 51.1494827, 17.12232, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/malutka-hala-budynek-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1375, N'Psiarnia wojskowa i budynek mieszkalny', 10, NULL, 52.2051735, 21.0852413, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/psiarnia-wojskowa-i-budynek-mieszkalny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1376, N'Fort Czarnów', 9, NULL, 52.527092, 14.7619047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-czarnow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1377, N'Fabryka papieru i celulozy', 4, NULL, 50.5601234, 18.8933945, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-papieru-i-celulozy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1378, N'Opuszczona kamienica ul.Wojska Polskiego 24a', 9, NULL, 52.2142868, 18.2541275, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-ul-wojska-polskiego-24a/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1379, N'Fort I Poznañ Staro³êka', 9, NULL, 52.35999, 16.9313622, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-i-poznan-staroleka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1380, N'opuszczona kuchnia/sto³ówka dla kuracjuszy', 13, NULL, 50.8069534, 15.7197828, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kuchnia-stolowka-dla-kuracjuszy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1381, N'Papiernia Skolwin', 4, NULL, 53.51607, 14.6184244, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/papiernia-skolwin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1382, N'O. W. Wilga', 3, NULL, 51.82437, 21.3965816, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/o-w-wilga/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1383, N'Fort XII Janowo', 10, NULL, 52.4935341, 20.6217022, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-xii-janowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1384, N'Pa³ac w Krzywaniu', 3, NULL, 54.4125366, 17.1565247, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-krzywaniu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1385, N'Tabor wagonów towarowych', 1, NULL, 51.2379, 22.6132965, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tabor-wagonow-towarowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1386, N'Willa M.L. Brodacza', 3, NULL, 51.83461, 19.4156532, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-m-l-brodacza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1387, N'Niedokoñczone Magazyny', 4, NULL, 53.1313248, 18.09019, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczone-magazyny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1388, N'Fort 50 Prokocim', 10, NULL, 50.0103874, 19.9971561, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-50-prokocim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1389, N'Dom Wczasowy Smrek', 2, NULL, 49.65196, 18.8718967, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-wczasowy-smrek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1390, N'Dom Wczasowy Górnik', 2, NULL, 49.64122, 19.5417442, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-wczasowy-gornik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1391, N'Night Club Sistars', 5, NULL, 50.5760956, 18.9702969, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/night-club-sistars/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1392, N'Pa³ac Sybilli w Szczodrem', 3, NULL, 51.19547, 17.1927872, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-sybilli-w-szczodrem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1393, N'Wie¿a wiatraka po³owa XIX w.', 7, NULL, 54.27054, 19.4750042, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-wiatraka-polowa-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1394, N'Stara kamienica na Mokotowie', 3, NULL, 52.2009544, 21.0229168, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-kamienica-na-mokotowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1395, N'M³yn Zygmunta Chêciñskiego', 13, NULL, 50.99102, 22.0986252, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-zygmunta-checinskiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1396, N'Oœrodek Wypoczynkowy £ukcze', 3, NULL, 51.3900261, 22.9645576, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-lukcze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1397, N'Szpital Uzdrowiskowy Krystyna', 11, NULL, 49.5426979, 21.84584, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital-uzdrowiskowy-krystyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1398, N'XIX-wieczny dworek', 3, NULL, 50.7576561, 16.2670536, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/xix-wieczny-dworek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1399, N'Magazyn na broñ j¹drow¹ nr. 1', 12, NULL, 51.55029, 15.6129274, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyn-na-bron-jadrowa-nr-1/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1400, N'willa Jezioranka', 3, NULL, 52.0850525, 21.1109543, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-jezioranka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1401, N'Brama kolejowa', 1, NULL, 54.33928, 18.6479511, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/brama-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1402, N'Wie¿a ciœnieñ i parowozownia', 1, NULL, 50.6386757, 17.95417, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-cisnien-i-parowozownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1403, N'Opuszczona fabryka', 4, NULL, 51.7617531, 19.4442081, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1404, N'Wiêzienie w £êczycy', 9, NULL, 52.0608025, 19.2021523, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wiezienie-w-leczycy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1405, N'Kiszarnia eksportowych ogórków do Rosji', 13, NULL, 51.5409431, 21.8101788, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kiszarnia-eksportowych-ogorkow-do-rosji/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1406, N'Zak³ady W³ókiennicze', 4, NULL, 51.7633057, 19.4602737, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-wlokiennicze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1407, N'Przychodnia Przyzak³adowa Cementowni Groszowice', 11, NULL, 50.62553, 17.9662666, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przychodnia-przyzakladowa-cementowni-groszowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1408, N'Zamek biskupi', 7, NULL, 52.6976624, 21.847, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-biskupi/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1409, N'Schron przeciwlotniczy', 12, NULL, 54.5131454, 18.5299263, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-przeciwlotniczy-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1410, N'Radiowy Oœrodek Nadawczy Leszczynka', 4, NULL, 52.0397224, 20.88442, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/radiowy-osrodek-nadawczy-leszczynka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1411, N'Warsztat naprawy lokomotyw i wagonów', 1, NULL, 49.6715736, 20.6637611, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/warsztat-naprawy-lokomotyw-i-wagonow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1412, N'Kino ŒwiteŸ', 13, NULL, 52.3357925, 15.2891092, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kino-switez/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1413, N'Pa³ac Schoenbergów', 3, NULL, 51.079155, 21.0154724, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-schoenbergow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1414, N'Opuszczona stodo³a', 13, NULL, 54.4827423, 18.3827019, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stodola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1415, N'Lager Dêba', 10, NULL, 50.42594, 21.7270641, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lager-deba/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1416, N'Opuszczone stajnie', 13, NULL, 50.41672, 18.7890244, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-stajnie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1417, N'Fort V Borek', 10, NULL, 51.52649, 21.8129463, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-v-borek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1418, N'Zak³ady Naprawcze Taboru Kolejowe Lubañ', 1, NULL, 51.1113358, 15.29181, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-naprawcze-taboru-kolejowe-luban/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1419, N'Biurowiec', 3, NULL, 53.40795, 14.5862751, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/biurowiec-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1420, N'Warsztat', 13, NULL, 53.90404, 21.4713745, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/warsztat/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1421, N'Dawna kopalnia uranu', 12, NULL, 50.7677345, 15.8385086, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-kopalnia-uranu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1422, N'Niedokoñczona niemiecka œluza na kanale Mazurskim', 10, NULL, 54.2097969, 21.591568, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczona-niemiecka-sluza-na-kanale-mazurskim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1423, N'szkolny oœrodek wypoczynkowy', 3, NULL, 54.3537674, 19.6744461, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkolny-osrodek-wypoczynkowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1424, N'Drukarnia', 13, NULL, 49.825222, 19.0384045, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/drukarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1425, N'Opuszczona Mleczarnia', 13, NULL, 54.04064, 17.2049332, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-mleczarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1426, N'Pa³ac z XIX-wieku.', 7, NULL, 54.04823, 14.9874763, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-z-xix-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1427, N'Stary Palac', 7, NULL, 53.9174843, 19.4609928, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-palac/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1428, N'Pa³ac rodziny von Marwitz', 3, NULL, 50.1289558, 18.1797981, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-rodziny-von-marwitz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1429, N'RAWENT (Mostostal)', 4, NULL, 51.9821053, 20.20892, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rawent-mostostal/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1430, N'Opuszczona willa-burdel', 3, NULL, 52.2405, 21.24789, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-willa-burdel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1431, N'Osada Leœna Lesica (PGR Rêdzin)', 3, NULL, 51.18406, 16.937027, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osada-lesna-lesica-pgr-redzin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1432, N'Hotel Verde', 3, NULL, 49.6310921, 18.8776646, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-verde/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1433, N'Stara Cegielnia Zelów', 4, NULL, 51.47296, 19.2144012, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-cegielnia-zelow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1434, N'Miasteczko wojskowych', 3, NULL, 53.4849319, 16.5492725, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/miasteczko-wojskowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1435, N'Koszary artylerii', 10, NULL, 53.7828178, 20.4685383, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/koszary-artylerii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1436, N'Cegielnia Janinów', 4, NULL, 50.52717, 19.9516163, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-janinow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1437, N'Bunkier Regelbau 120a', 10, NULL, 52.4235954, 21.1043072, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-regelbau-120a/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1438, N'M³yn celgany z pocz¹tku XX wieku', 13, NULL, 53.1757927, 19.8536682, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-celgany-z-poczatku-xx-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1439, N'Bunkry Przeciw Lotnicze', 9, NULL, 52.543354, 17.0083733, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-przeciw-lotnicze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1440, N'11 BAS (Bateria Artylerii Sta³ej)', 10, NULL, 54.4957657, 18.56166, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/11-bas-bateria-artylerii-stalej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1441, N'Stara RzeŸnia', 13, NULL, 51.6560745, 17.80625, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-rzeznia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1442, N'Cementownia Wierzbica /PrzyjaŸñ II/', 4, NULL, 51.2444839, 21.01704, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cementownia-wierzbica-przyjazn-ii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1443, N'Fabryka œwietlówek Polon', 4, NULL, 50.36931, 20.04443, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-swietlowek-polon/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1444, N'magazyn', 3, NULL, 53.436, 15.5604172, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1445, N'Stare poci¹gi', 1, NULL, 50.79833, 19.1227989, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stare-pociagi/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1446, N'M³yn Lelitów', 13, NULL, 50.0866241, 20.0374527, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-lelitow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1447, N'Opuszczone centrum kontroli lotów', 3, NULL, 53.5164375, 17.2672176, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-centrum-kontroli-lotow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1448, N'Templewo 3003', 10, NULL, 52.4229164, 15.3211994, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/templewo-3003/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1449, N'Magazyn barwniów', 4, NULL, 51.7570953, 19.5015373, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyn-barwniow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1450, N'Stary cmentarz prawos³awny', 13, NULL, 52.8739548, 18.7044086, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-cmentarz-prawoslawny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1451, N'Zabytkowy fort &#8211; Mewi Szaniec', 10, NULL, 54.4008, 18.68323, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabytkowy-fort-mewi-szaniec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1452, N'Dwór w Szczekarkowie', 3, NULL, 51.25056, 21.8819046, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-w-szczekarkowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1453, N'Stara oczyszczalnia œcieków', 4, NULL, 50.2803459, 18.9437389, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-oczyszczalnia-sciekow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1454, N'Opuszczone zak³ady wapienne', 4, NULL, 50.1116943, 19.4384422, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-zaklady-wapienne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1455, N'Wie¿a Bismarcka', 7, NULL, 53.4771767, 14.6016064, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-bismarcka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1456, N'Ruiny kompleksu wojskowego', 10, NULL, 51.1217079, 23.4954433, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kompleksu-wojskowego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1457, N'Kamienica', 3, NULL, 51.7782555, 19.4673786, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamienica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1458, N'362 kompania radiotechniczna w Mi³kowej', 10, NULL, 49.7164459, 20.7598381, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/362-kompania-radiotechniczna-w-milkowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1459, N'Cmentarzysko pojazdów', 13, NULL, 51.8677025, 19.2421188, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarzysko-pojazdow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1460, N'Pa³ac', 7, NULL, 50.43391, 17.27629, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1461, N'Gorzelnia', 4, NULL, 50.4888725, 17.2540073, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1462, N'S³odownia', 4, NULL, 50.4830971, 17.3306866, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/slodownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1463, N'Hotel &#8220;Leœny&#8221;', 2, NULL, 50.3047066, 17.38434, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-lesny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1464, N'Kasyno oficerskie', 7, NULL, 50.4800148, 17.3330765, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kasyno-oficerskie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1465, N'Dawny folwark', 6, NULL, 50.5520477, 19.2945557, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawny-folwark/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1466, N'Wyci¹g narciarski', 13, NULL, 49.47847, 19.0851841, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wyciag-narciarski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1467, N'opuszczony pa³ac w Mordach', 3, NULL, 52.2084541, 22.517952, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-w-mordach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1468, N'Hotel Koliba', 3, NULL, 49.4349365, 20.71316, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-koliba/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1469, N'Restauracja Europa', 7, NULL, 51.40925, 19.6935387, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/restauracja-europa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1470, N'Pa³ac w Koœcielnikach', 7, NULL, 50.0958328, 20.1790524, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-koscielnikach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1471, N'Stara wie¿a lotnicza', 13, NULL, 50.31712, 21.4480438, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-wieza-lotnicza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1472, N'Huta Ma³apanew', 4, NULL, 50.6708374, 18.2083073, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/huta-malapanew/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1473, N'Opuszczony oœrodek wypoczynkowy Korona', 13, NULL, 53.3060837, 17.9750271, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy-korona/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1474, N'Zak³ady Produkcji Pasz', 4, NULL, 50.8793831, 17.71263, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-produkcji-pasz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1475, N'Opuszczona kot³ownia', 4, NULL, 52.62095, 16.55835, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kotlownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1476, N'Twierdza Modlin', 10, NULL, 52.4377, 20.681591, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/twierdza-modlin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1477, N'Stalownia Praska i Zbrojownia nr 2', 3, NULL, 52.261013, 21.04745, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stalownia-praska-i-zbrojownia-nr-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1478, N'Opuszczone Schrony Przeciwlotnicze', 12, NULL, 54.5802345, 18.5359955, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-schrony-przeciwlotnicze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1479, N'Bunkier JW 2464 BARS 201', 10, NULL, 50.7930832, 18.5383682, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-jw-2464-bars-201/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1480, N'Opuszczony m³yn/paszarnia', 4, NULL, 49.4718132, 22.328825, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-mlyn-paszarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1481, N'Opuszczona hala &#8211; elektrownia?', 4, NULL, 52.5312042, 19.6819363, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-hala-elektrownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1482, N'Opuszczona baza wojskowa mulnik', 10, NULL, 53.88204, 14.2599669, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-baza-wojskowa-mulnik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1483, N'Ruiny dworu w Bolminie', 3, NULL, 50.81155, 20.3548546, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-dworu-w-bolminie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1484, N'Opuszczone obiekty SGGW', 13, NULL, 52.1348038, 20.6926632, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-obiekty-sggw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1485, N'Kasyno wojskowe i szpital wojskowy', 13, NULL, 52.2551346, 21.2394619, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kasyno-wojskowe-i-szpital-wojskowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1486, N'Pozosta³oœci po Bazie Rakietowej', 10, NULL, 50.4465752, 18.3176422, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozostalosci-po-bazie-rakietowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1487, N'Willa Zosinek', 3, NULL, 52.12146, 20.6689529, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-zosinek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1488, N'Stara prochownia', 9, NULL, 50.22857, 19.2826824, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-prochownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1489, N'Sobieskiego 100 Warszawa', 3, NULL, 52.1969872, 21.0403957, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sobieskiego-100-warszawa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1490, N'Ruiny dworu', 3, NULL, 51.7972565, 15.5698586, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-dworu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1491, N'Pozycja Glinno', 10, NULL, 51.74347, 18.6700821, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozycja-glinno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1492, N'Fort Borek Fa³êcki', 10, NULL, 50.0007248, 19.9040623, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-borek-falecki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1493, N'Olejarnia', 13, NULL, 53.4591942, 14.5894365, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/olejarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1494, N'SZPITAL POWIATOWY', 11, NULL, 52.1089439, 20.6307678, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital-powiatowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1495, N'Tuczarnia trzody chlewnej', 13, NULL, 53.3336945, 19.2268333, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tuczarnia-trzody-chlewnej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1496, N'Stanowisko obrony przeciwlotniczej', 10, NULL, 54.46869, 18.5505219, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stanowisko-obrony-przeciwlotniczej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1497, N'Dom z Fiatem 125p.', 3, NULL, 52.2038879, 18.26132, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-z-fiatem-125p/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1498, N'Pa³ac w przylepkach', 7, NULL, 52.1333046, 16.9274445, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-przylepkach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1499, N'Fort IV Janówek', 10, NULL, 52.4285927, 20.78579, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-iv-janowek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1500, N'Pa³ac w Miêdzylesiu', 7, NULL, 51.62393, 15.6380939, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-miedzylesiu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1501, N'Nastawnia kolejowa', 1, NULL, 51.9563065, 21.6667023, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nastawnia-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1502, N'Port Rzeczny', 4, NULL, 52.48789, 16.9743481, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/port-rzeczny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1503, N'INVAC INTERVAC', 3, NULL, 52.15977, 21.2031822, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/invac-intervac/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1504, N'Opuszczona Gorzelnia', 4, NULL, 52.5588341, 16.0871811, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-gorzelnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1505, N'Zespó³ pa³acowo-parkowy M³ociny', 3, NULL, 52.30871, 20.9372826, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-palacowo-parkowy-mlociny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1506, N'Opuszczony Wie¿owiec Foton', 4, NULL, 53.1177254, 17.9817219, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-wiezowiec-foton/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1507, N'Cegielnia', 4, NULL, 49.5717, 22.017374, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1508, N'Mieszalnia pasz', 6, NULL, 49.482708, 22.327158, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mieszalnia-pasz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1509, N'PGR Wola Wy¿na', 6, NULL, 49.39039, 21.8716717, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pgr-wola-wyzna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1510, N'Opuszczony dywizjon rakietowy', 10, NULL, 52.33452, 16.6448021, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dywizjon-rakietowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1511, N'66. Dywizjon rakietowy WOPK (system S-125M)', 10, NULL, 54.5202827, 16.5620174, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/66-dywizjon-rakietowy-wopk-system-s-125m/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1512, N'Baseny Legii', 4, NULL, 52.2205048, 21.0428085, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baseny-legii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1513, N'Pozosta³oœci po oczyszczalni', 13, NULL, 51.8694344, 21.6345615, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozostalosci-po-oczyszczalni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1514, N'Œluza na kanale mazurskim', 10, NULL, 54.20844, 21.5946579, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sluza-na-kanale-mazurskim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1515, N'kompleks PGR', 4, NULL, 51.1964836, 21.1602821, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kompleks-pgr/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1516, N'Zak³ad Taboru', 1, NULL, 50.2955666, 18.7130432, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-taboru/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1517, N'Okr¹glaki', 2, NULL, 52.49616, 19.4238281, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/okraglaki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1518, N'Opuszczony dom/zak³ad', 3, NULL, 54.4630051, 18.4246731, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dom-zaklad/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1519, N'Eko-Mysiad³o', 4, NULL, 52.1023674, 21.0159016, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/eko-mysiadlo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1520, N'Miejskie Przedsiêbiorstwo Zieleni', 4, NULL, 52.4447937, 16.8155327, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/miejskie-przedsiebiorstwo-zieleni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1521, N'Stary m³yn w Sienicznie', 4, NULL, 50.26554, 19.6142578, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-mlyn-w-sienicznie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1522, N'Schron £¹cznoœci Babie Do³y', 10, NULL, 54.5751457, 18.54557, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-lacznosci-babie-doly/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1523, N'Schloss Stockel Kauffung', 7, NULL, 50.9511871, 15.9227648, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schloss-stockel-kauffung/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1524, N'Cmentarz ¯ydowski', 13, NULL, 50.79942, 19.16947, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1525, N'Pa³ac i zabudowania gospodarcze', 3, NULL, 53.7356453, 18.646946, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-i-zabudowania-gospodarcze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1526, N'Bateria Haubic II', 10, NULL, 52.9853745, 18.622921, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bateria-haubic-ii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1527, N'Dworek w Moszczenicy', 3, NULL, 51.4987526, 19.71164, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-w-moszczenicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1528, N'Piekarnia', 13, NULL, 52.2085876, 21.0439072, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/piekarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1529, N'Oœrodek wczasowy Ba³tyk', 3, NULL, 54.54188, 16.5542622, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wczasowy-baltyk/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1530, N'Restauracja Górski Zamek', 3, NULL, 54.46263, 18.559206, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/restauracja-gorski-zamek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1531, N'Wieœ Potoki', 3, NULL, 52.177742, 21.0346565, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wies-potoki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1532, N'Fort II', 9, NULL, 52.372036, 16.9640923, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-ii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1533, N'Zespó³:pa³acowy z 2 po³. XIX w.', 7, NULL, 54.67632, 17.7001476, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespolpalacowy-z-2-pol-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1534, N'Zak³ady Artyku³ów Technicznych i Galanteryjnych POLGAL', 4, NULL, 50.80392, 19.1232433, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-artykulow-technicznych-i-galanteryjnych-polgal/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1535, N'Opuszczony pa³acyk Klein Schwein', 3, NULL, 51.5694275, 16.1501942, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palacyk-klein-schwein/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1536, N'Oœrodek wypoczynkowy POLMO', 3, NULL, 53.311245, 19.4575081, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-polmo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1537, N'Fabryka ¿elatyny', 4, NULL, 50.9061165, 21.8468742, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-zelatyny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1538, N'21 Polowa Techniczna Baza Rakietowa', 10, NULL, 54.116684, 20.1301823, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/21-polowa-techniczna-baza-rakietowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1539, N'Papiernia', 13, NULL, 51.668457, 19.3600578, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/papiernia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1540, N'Koszary', 10, NULL, 53.7905, 20.49536, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/koszary/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1541, N'Fort Owcza Góra', 10, NULL, 50.44406, 16.6633, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-owcza-gora/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1542, N'Fort X Orzechowce', 10, NULL, 49.83987, 22.7457047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-x-orzechowce/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1543, N'Jeden z opuszczonych budynków w by³ych prudnickich koszarach', 10, NULL, 50.3162155, 17.5651569, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jeden-z-opuszczonych-budynkow-w-bylych-prudnickich-koszarach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1544, N'Pa³ac Domachowo', 3, NULL, 54.1864052, 16.5898418, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-domachowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1545, N'Opuszczone domki', 3, NULL, 50.00229, 20.1070347, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-domki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1546, N'112 batalion ³¹cznoœci Wojsk Obrony Wewnêtrznej', 10, NULL, 51.9388733, 21.1903667, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/112-batalion-lacznosci-wojsk-obrony-wewnetrznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1547, N'Nieczynna stacja kolejowa', 1, NULL, 51.7852058, 14.9609756, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieczynna-stacja-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1548, N'Fort 49a D³ubnia', 10, NULL, 50.09814, 20.0413723, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-49a-dlubnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1549, N'Przedsiêbiorstwo Wodoci¹gów i Kanalizacji', 4, NULL, 52.33072, 21.2377777, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedsiebiorstwo-wodociagow-i-kanalizacji/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1550, N'Zak³ad Badawczo-Rozwojowy Polmos Konin', 4, NULL, 52.20512, 18.25535, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-badawczo-rozwojowy-polmos-konin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1551, N'zespó³ pa³acowy i folwarczny', 3, NULL, 51.35935, 18.0282211, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-palacowy-i-folwarczny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1552, N'KoŸle-Port', 13, NULL, 50.3555374, 18.1537056, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kozle-port/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1553, N'Opuszczona kamienica &#8211; ul.wielka', 3, NULL, 52.40851, 16.93804, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-ul-wielka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1554, N'Opuszczone budynki socjalne PKP', 13, NULL, 50.32968, 18.2262325, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki-socjalne-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1555, N'Fabryka DAG Alfred Nobel', 4, NULL, 51.8200836, 15.2045336, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-dag-alfred-nobel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1556, N'Ceglana wie¿a artyleryjska znana jako Fort Malakoff.', 10, NULL, 51.6714172, 16.0865078, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ceglana-wieza-artyleryjska-znana-jako-fort-malakoff/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1557, N'Pierwsza Polska Wytwórnia £añcuchów Rolkowych', 3, NULL, 52.2298164, 20.9789848, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pierwsza-polska-wytwornia-lancuchow-rolkowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1558, N'Cegielnia Zgoda obok dawnej Huty Szczecin', 4, NULL, 53.5018044, 14.6128025, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-zgoda-obok-dawnej-huty-szczecin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1559, N'Opuszczony m³yn', 4, NULL, 52.39978, 17.0190887, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-mlyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1560, N'Twierdza Nysa', 7, NULL, 50.48389, 17.317543, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/twierdza-nysa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1561, N'Basen Ma³omicki', 13, NULL, 51.40272, 16.2332573, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/basen-malomicki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1562, N'Opuszczona Ambasada Rosyjskich Dyplomatów', 3, NULL, 52.1971741, 21.0405827, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-ambasada-rosyjskich-dyplomatow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1563, N'Opuszczony pa³ac w Œwiniarach', 3, NULL, 51.1983, 16.9800053, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-w-swiniarach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1564, N'willa Zorza', 3, NULL, 52.0846062, 21.1239948, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-zorza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1565, N'ZAK£ADY CHEMICZNE Siarkopol TARNOBRZEG sp. z o.o.', 4, NULL, 50.5276146, 21.6321659, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-chemiczne-siarkopol-tarnobrzeg-sp-z-o-o/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1566, N'Kompleks zamkowo-pa³acowy', 7, NULL, 51.63992, 15.1423922, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kompleks-zamkowo-palacowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1567, N'Instytut zootechniki', 13, NULL, 51.8325272, 20.2296925, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/instytut-zootechniki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1568, N'Przêdzalnia Czesankowa ELANEX S.A.', 4, NULL, 50.80092, 19.1255646, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedzalnia-czesankowa-elanex-s-a/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1569, N'Fort San Rideau', 10, NULL, 49.8210945, 22.8594589, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-san-rideau/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1570, N'Fort 1 &#8211; Jan III Sobieski', 10, NULL, 53.0189972, 18.6681442, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-1-jan-iii-sobieski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1571, N'Wagonownia', 1, NULL, 51.6373062, 15.1268225, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wagonownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1572, N'Pruska wie¿a obserwacyjna II', 10, NULL, 52.5538979, 16.8723545, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pruska-wieza-obserwacyjna-ii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1573, N'Cerkiew œw. Paraskewy', 13, NULL, 50.33769, 23.4923458, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cerkiew-sw-paraskewy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1574, N'PIEKARNIA RULIMPEX &#8211; Boles³awiec', 4, NULL, 51.2528572, 15.5572128, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/piekarnia-rulimpex-boleslawiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1575, N'Fort XV Borek', 10, NULL, 49.7715645, 22.8998, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-xv-borek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1576, N'Hotel Polonia', 3, NULL, 50.3078423, 17.3808613, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hotel-polonia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1577, N'Odlewnia ¿eliwa Ursus', 4, NULL, 51.241394, 22.639389, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/odlewnia-zeliwa-ursus/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1578, N'RzeŸnia', 4, NULL, 50.48001, 17.33692, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rzeznia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1579, N'Schron bojowy nr.7 Obszar Warowny Œl¹sk', 10, NULL, 50.3370323, 18.99194, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-bojowy-nr-7-obszar-warowny-slask/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1580, N'Fort II Kosewo', 10, NULL, 52.4675674, 20.6894016, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-ii-kosewo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1581, N'Opuszczony pa³ac w Zawiszy', 3, NULL, 52.1568336, 15.3301258, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-w-zawiszy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1582, N'Zak³ady miêsne', 4, NULL, 54.354454, 18.37841, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-miesne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1583, N'Wojskowa stacja radarowa', 10, NULL, 52.26117, 20.8626938, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wojskowa-stacja-radarowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1584, N'Budynek dworca kolejowego', 1, NULL, 50.33006, 19.1853065, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-dworca-kolejowego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1585, N'Oœrodek Kolonijno &#8211; Wczasowy Gra¿yna', 13, NULL, 49.624897, 19.9730721, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-kolonijno-wczasowy-grazyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1586, N'Tor wyœcigów konnych', 13, NULL, 51.697464, 19.4201851, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tor-wyscigow-konnych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1587, N'Zak³ady Chemiczne Wizów', 4, NULL, 51.2944565, 15.5774679, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-chemiczne-wizow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1588, N'Dworzec kolejowy Baborów', 1, NULL, 50.15633, 17.9777546, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworzec-kolejowy-baborow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1589, N'Fort Lasek Miejski', 10, NULL, 53.4646568, 18.7585258, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-lasek-miejski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1590, N'Kapliczka', 7, NULL, 51.68502, 17.2817783, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kapliczka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1591, N'PGR', 13, NULL, 50.7569046, 17.67727, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pgr/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1592, N'willa Jagiellonka', 3, NULL, 52.082222, 21.1159363, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-jagiellonka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1593, N'OŒRODEK WYPOCZYNKOWY WIS£A', 3, NULL, 52.0321732, 21.0468979, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-wisla/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1594, N'Cerkiew murowana', 13, NULL, 50.1686821, 23.0147762, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cerkiew-murowana/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1595, N'Fort VII im. Tadeusza Koœciuszki', 10, NULL, 53.0340919, 18.5629482, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-vii-im-tadeusza-kosciuszki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1596, N'Chata', 3, NULL, 51.69166, 19.6426678, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/chata/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1597, N'GW Schill', 10, NULL, 52.4373932, 15.4621115, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gw-schill/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1598, N'Domki letniskowe w lesie', 13, NULL, 52.4670944, 21.0704021, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/domki-letniskowe-w-lesie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1599, N'Fabryka Adama Ossera', 4, NULL, 51.7449265, 19.4775143, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-adama-ossera/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1600, N'Umocnienie Du¿e (Fort „Ordon”)', 9, NULL, 52.46537, 21.02191, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/umocnienie-duze-fort-ordon/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1601, N'Parowozownia', 1, NULL, 50.5846252, 21.8173046, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/parowozownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1602, N'Palac w Proœnie', 3, NULL, 54.2360878, 21.0778275, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-prosnie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1603, N'Przedszkole Miejskie nr 36 w Maczkach', 13, NULL, 50.25997, 19.2722816, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedszkole-miejskie-nr-36-w-maczkach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1604, N'Poniemieckie Molo', 10, NULL, 54.586937, 16.8335876, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poniemieckie-molo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1605, N'Kompleks schronów', 10, NULL, 52.46427, 21.089201, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kompleks-schronow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1606, N'Fort Bielany', 10, NULL, 50.0416451, 19.8354721, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-bielany/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1607, N'Folwark Bzionków', 3, NULL, 50.75283, 18.436861, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/folwark-bzionkow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1608, N'Cegielnia £owicz', 13, NULL, 52.1278839, 19.9655056, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-lowicz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1609, N'Ruiny koœcio³a œw. Miko³aja w G³ogowie', 7, NULL, 51.66254, 16.09179, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kosciola-sw-mikolaja-w-glogowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1610, N'Zamek i klasztor w Otyniu', 7, NULL, 51.8462563, 15.7119865, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-i-klasztor-w-otyniu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1611, N'Opuszczone Lotnisko w Krzywej', 10, NULL, 51.3047562, 15.7271, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-lotnisko-w-krzywej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1612, N'Fort XI', 10, NULL, 49.8434067, 22.7741432, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-xi/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1613, N'Oœrodek Wypoczynkowo Rekreacyjny (OWR) Tarka', 3, NULL, 50.14855, 19.2790432, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowo-rekreacyjny-owr-tarka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1614, N'Stare pole kempingowe', 13, NULL, 54.3963737, 18.68268, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stare-pole-kempingowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1615, N'Stadion im. E. Szyca', 13, NULL, 52.39624, 16.929245, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stadion-im-e-szyca/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1616, N'Opuszczone koszary', 10, NULL, 51.97896, 21.2163811, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-koszary/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1617, N'Zabudowania na terenach nieistniej¹cego M³ynu Michla na Pradze', 4, NULL, 52.2573, 21.0626259, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabudowania-na-terenach-nieistniejacego-mlynu-michla-na-pradze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1618, N'Bastion œw. Gertrudy', 12, NULL, 54.34056, 18.6455574, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bastion-sw-gertrudy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1619, N'Pa³ac Sobañskich', 3, NULL, 52.1183128, 20.3308868, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-sobanskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1620, N'MRU Miêdzyrzecki Rejon Umocniony &#8211; odcinek centralny', 12, NULL, 52.4046249, 15.5021944, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mru-miedzyrzecki-rejon-umocniony-odcinek-centralny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1621, N'Opuszczony spo¿ywczak', 13, NULL, 49.79368, 18.7007465, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-spozywczak/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1622, N'Bli¿sza Radiolatarnia Prowadz¹ca (Babice)', 10, NULL, 52.272522, 20.8829823, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/blizsza-radiolatarnia-prowadzaca-babice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1623, N'Budynek Bramy G³ównej By³ej KWK Siersza', 4, NULL, 50.1874657, 19.45428, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-bramy-glownej-bylej-kwk-siersza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1624, N'Opuszczone hale', 13, NULL, 51.4181061, 21.1523476, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-hale/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1625, N'Szpital Uzdrowiskowy Leliwa', 11, NULL, 49.5429344, 21.849596, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital-uzdrowiskowy-leliwa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1626, N'Opuszczony hotel / pensjonat / dom wczasowy', 3, NULL, 50.9632759, 15.6493969, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-hotel-pensjonat-dom-wczasowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1627, N'Stary spichlerz', 13, NULL, 52.1814232, 20.7446289, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-spichlerz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1628, N'Opuszczony Pa³acyk', 3, NULL, 53.121254, 18.1198463, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palacyk/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1629, N'Fort Beniaminów', 10, NULL, 52.438797, 21.0983849, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-beniaminow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1630, N'Amerykañski elewator wêglowy', 4, NULL, 50.4683342, 18.8813477, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/amerykanski-elewator-weglowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1631, N'Cmentarz Wojenny z I Wojny Œwiatowej', 13, NULL, 51.7472343, 19.2488346, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-wojenny-z-i-wojny-swiatowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1632, N'Opuszczona Huta Szk³a', 4, NULL, 50.3671646, 19.2672215, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-huta-szkla/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1633, N'Port Wojenny', 10, NULL, 54.61255, 18.7932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/port-wojenny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1634, N'Opuszczony blok', 3, NULL, 52.2608566, 21.0396633, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-blok/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1635, N'Pa³ac z XVI wieku', 7, NULL, 50.9425621, 15.9245243, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-z-xvi-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1636, N'Zak³ady bawe³niane Gumitex / Sägewerk Ewald Berndt', 4, NULL, 50.85253, 16.0012436, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-bawelniane-gumitex-sagewerk-ewald-berndt/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1637, N'Ruiny pa³acu rodziny Czartoryskich', 3, NULL, 51.6142921, 23.5380936, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-palacu-rodziny-czartoryskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1638, N'Punkt oporu wzg. 310 Bobrowniki Tradytor artyleryjski po³udniowy.', 10, NULL, 50.3786354, 18.9746685, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/punkt-oporu-wzg-310-bobrowniki-tradytor-artyleryjski-poludniowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1639, N'Gorzelnia', 13, NULL, 51.749752, 21.9214134, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1640, N'Zespó³ Pa³acowo-obronny', 7, NULL, 51.66574, 22.62909, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-palacowo-obronny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1641, N'Oœrodek Pomiarów Zewnêtrznych', 13, NULL, 54.7313042, 18.0891819, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-pomiarow-zewnetrznych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1642, N'Spichlerz folwarku O¿arowskich', 3, NULL, 51.6005745, 21.3521442, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spichlerz-folwarku-ozarowskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1643, N'Opuszczona stacja paliw Trójca', 13, NULL, 51.1559868, 15.1120377, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stacja-paliw-trojca/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1644, N'Ruiny hangarów', 13, NULL, 50.08058, 19.9878216, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-hangarow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1645, N'Budynek mieszkalny ul. Karolkowa róg Solidarnoœci', 3, NULL, 52.2362366, 20.9761181, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-mieszkalny-ul-karolkowa-rog-solidarnosci/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1646, N'Opuszczony dworek', 3, NULL, 52.15316, 20.6278076, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1647, N'Willa Zosieñka', 3, NULL, 52.0813522, 21.1166668, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-zosienka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1648, N'Kamienica przy ul. Pró¿nej', 3, NULL, 52.2362175, 21.0041218, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamienica-przy-ul-proznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1649, N'Fabryka cementu', 4, NULL, 53.8748055, 14.425663, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-cementu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1650, N'Zabytkowa rzeŸnia', 13, NULL, 50.30123, 18.94809, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabytkowa-rzeznia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1651, N'Opuszczony Zamek', 7, NULL, 50.3130226, 17.5273132, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zamek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1652, N'Nieukoñczona mleczarnia', 4, NULL, 50.0388756, 20.0537186, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieukonczona-mleczarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1653, N'Kaplica przyszpitalna', 13, NULL, 52.1164131, 21.28747, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kaplica-przyszpitalna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1654, N'Willa Hanna z 1 po³. XXw.', 3, NULL, 50.8463554, 16.4798775, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-hanna-z-1-pol-xxw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1655, N'Magazyny zbo¿owe', 4, NULL, 50.6800232, 17.8712616, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyny-zbozowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1656, N'Strefa przemys³owa Jeziórko', 4, NULL, 50.5487175, 21.7782841, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/strefa-przemyslowa-jeziorko/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1657, N'Ruiny zak³adów fabrycznych', 4, NULL, 50.2772331, 19.1945534, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zakladow-fabrycznych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1658, N'Fort 12 &#8211; W³adys³aw Jagie³³o', 10, NULL, 52.98518, 18.5939236, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-12-wladyslaw-jagiello/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1659, N'Ruina koœcio³a w Z³otniku', 13, NULL, 51.6931038, 15.2024736, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruina-kosciola-w-zlotniku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1660, N'Magazyny Amunicji fabryki Nitrat', 10, NULL, 51.61026, 19.9501839, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyny-amunicji-fabryki-nitrat/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1661, N'Bunkry II Wojny Œwiatowej', 10, NULL, 50.1337852, 18.8552856, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-ii-wojny-swiatowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1662, N'Wêdzarnia Ryb', 4, NULL, 50.19511, 18.9365139, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wedzarnia-ryb/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1663, N'M³yn nr3 w Janinowie', 4, NULL, 50.52764, 19.9518585, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-nr3-w-janinowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1664, N'Fabryka Organika', 4, NULL, 51.3445244, 19.594202, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-organika/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1665, N'Pa³ac biskupów wroc³awskich', 3, NULL, 51.1282349, 17.8357582, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-biskupow-wroclawskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1666, N'Schron kolejowy', 10, NULL, 53.39343, 19.1644554, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1667, N'Opuszczony hotel', 3, NULL, 54.5877953, 16.880022, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-hotel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1668, N'Fort VII Zbar¿', 10, NULL, 52.1706429, 20.9838, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-vii-zbarz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1669, N'Pa³ac rodu von Magnis', 7, NULL, 50.5140953, 16.57603, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-rodu-von-magnis/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1670, N'Zak³ady Produkcyjno &#8211; Naprawcze Taboru Maszyn i Urz¹dzeñ Tabor', 1, NULL, 50.2433624, 19.19932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-produkcyjno-naprawcze-taboru-maszyn-i-urzadzen-tabor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1671, N'Parowozownia Cukrowni Gos³awice', 13, NULL, 52.31366, 18.2820644, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/parowozownia-cukrowni-goslawice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1672, N'Sierociniec Dzie³ Niechcianych (przeniesiony)', 3, NULL, 52.19519, 21.19546, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sierociniec-dziel-niechcianych-przeniesiony/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1673, N'KZ PZPR przy Kombinacie Budowlanym im.Rewolucji PaŸdziernikowej', 4, NULL, 52.2374039, 18.2366638, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kz-pzpr-przy-kombinacie-budowlanym-im-rewolucji-pazdziernikowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1674, N'Dworzec kolei &#8211; Osowa Góra', 1, NULL, 52.2493973, 16.81898, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworzec-kolei-osowa-gora/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1675, N'Pkp', 1, NULL, 50.3298, 17.56372, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1676, N'Ruiny koœcio³a', 7, NULL, 50.8454933, 16.1011086, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kosciola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1677, N'Brutal', 9, NULL, 50.25264, 19.0329113, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/brutal/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1678, N'Dom na Hofmana', 3, NULL, 50.0573044, 19.89942, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-na-hofmana/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1679, N'FUM Porêba', 4, NULL, 50.49036, 19.3436623, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fum-poreba/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1680, N'MG u. Pak 743', 10, NULL, 52.42279, 15.4645147, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mg-u-pak-743/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1681, N'Ruiny Klasztoru Cystersów', 7, NULL, 51.117424, 16.08433, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-klasztoru-cystersow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1682, N'Dwór w Dzier¿nicy', 3, NULL, 52.3326035, 17.3876171, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-w-dzierznicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1683, N'Browar nr 3', 13, NULL, 51.79419, 19.4418774, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/browar-nr-3/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1684, N'Fort X', 10, NULL, 52.9982643, 18.5685825, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-x/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1685, N'Opuszczona kamienica Targowa 76', 3, NULL, 52.25589, 21.034441, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-targowa-76/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1686, N'R116b i Sonderwerk', 10, NULL, 50.2269821, 18.6294785, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/r116b-i-sonderwerk/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1687, N'Lotnisko', 10, NULL, 54.1973953, 15.68264, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lotnisko/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1688, N'Transbud', 13, NULL, 50.45781, 17.3154259, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/transbud/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1689, N'Wie¿a Wêglowa + okolica', 4, NULL, 53.40953, 14.5458984, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-weglowa-okolica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1690, N'Panzerwerk 783', 10, NULL, 52.3719368, 15.5082026, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/panzerwerk-783/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1691, N'Fort 48 Batowice', 10, NULL, 50.09981, 19.9991932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-48-batowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1692, N'Cmentarz rzymsko-katolicki', 13, NULL, 53.2125053, 23.2126, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-rzymsko-katolicki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1693, N'Opuszczony Browar', 4, NULL, 53.13532, 22.7307854, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-browar/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1694, N'Lokomotywownia P³aszów', 1, NULL, 50.0269661, 19.9859047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lokomotywownia-plaszow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1695, N'Stary PGR', 3, NULL, 51.59788, 19.48333, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-pgr/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1696, N'Poradzieckie lotnisko wojskowe', 10, NULL, 53.28184, 14.9690447, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poradzieckie-lotnisko-wojskowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1697, N'Stara d¿emownia kuznocin.', 3, NULL, 52.21187, 20.20373, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-dzemownia-kuznocin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1698, N'Dolnoœl¹ska Faryka Instrumentów Lutniczych DEFIL', 4, NULL, 51.3971024, 16.1963825, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dolnoslaska-faryka-instrumentow-lutniczych-defil/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1699, N'Kot³ownia za szpitalem ¯eromskiego', 4, NULL, 50.06736, 20.0430317, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kotlownia-za-szpitalem-zeromskiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1700, N'Dom dziecka', 3, NULL, 49.75496, 20.9517231, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-dziecka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1701, N'Opuszczon mlyn zbozowy Szynkielew', 13, NULL, 51.6982574, 19.3576527, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczon-mlyn-zbozowy-szynkielew/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1702, N'Koszary 5 Dywizjonu Artylerii Konnej', 10, NULL, 50.0388832, 19.9235, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/koszary-5-dywizjonu-artylerii-konnej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1703, N'Zak³ady Przemys³u Papierniczego', 4, NULL, 50.4863472, 17.946167, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-przemyslu-papierniczego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1704, N'Chemitex &#8211; Anilana', 4, NULL, 51.7626343, 19.5104733, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/chemitex-anilana/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1705, N'Kaplica cmentarna', 13, NULL, 51.1929, 17.1724033, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kaplica-cmentarna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1706, N'Odlewnia', 4, NULL, 50.24918, 18.0500221, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/odlewnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1707, N'Trybuna S³u¿ewiec', 13, NULL, 52.16235, 21.0090351, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/trybuna-sluzewiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1708, N'Pa³ac Durra', 7, NULL, 51.61631, 16.3566685, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-durra/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1709, N'Jednostka Wojskowa 3308 Bolêcin', 10, NULL, 50.121212, 19.4687366, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-wojskowa-3308-bolecin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1710, N'Opuszczony Dworek/Willa z XIX w.', 3, NULL, 52.24594, 19.2552261, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworek-willa-z-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1711, N'Opuszczone Mauzoleum', 13, NULL, 50.76495, 16.297102, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-mauzoleum/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1712, N'Stara Betoniarnia', 13, NULL, 52.2398033, 20.9274025, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-betoniarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1713, N'Schron dla cz³onków SS', 9, NULL, 54.5110245, 18.5515442, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-dla-czlonkow-ss/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1714, N'Myjnia Kolejowa PKP Tarnów', 1, NULL, 50.00411, 20.9779663, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/myjnia-kolejowa-pkp-tarnow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1715, N'Cerkiew pw. Przeniesienia Relikwii œw. Miko³aja w Króliku Wo³oskim', 7, NULL, 49.50249, 21.81198, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cerkiew-pw-przeniesienia-relikwii-sw-mikolaja-w-kroliku-woloskim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1716, N'Stary opuszczony dom', 3, NULL, 52.1216774, 21.2723389, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-opuszczony-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1717, N'31 dywizjon rakietowy Obrony Powietrznej', 10, NULL, 52.25313, 17.0313854, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/31-dywizjon-rakietowy-obrony-powietrznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1718, N'Opuszczone siedlisko', 3, NULL, 52.16586, 20.6954479, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-siedlisko/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1719, N'Cegielnia Kaszewy', 4, NULL, 52.2086372, 19.4609623, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-kaszewy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1720, N'PGR i Blok mieszkalny', 3, NULL, 50.2468758, 17.95432, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pgr-i-blok-mieszkalny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1721, N'WZKR KONIN', 13, NULL, 52.2058258, 18.2448177, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wzkr-konin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1722, N'Opuszczony basen', 13, NULL, 51.1088829, 15.2802658, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-basen/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1723, N'Bocznica kolejowa', 1, NULL, 51.0927162, 17.0498161, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bocznica-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1724, N'Fort IV Hake', 10, NULL, 52.4300728, 16.989584, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-iv-hake/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1725, N'Dwór szlachecki', 3, NULL, 50.41005, 21.23348, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-szlachecki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1726, N'Browar z 1895r', 4, NULL, 53.8620453, 20.95185, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/browar-z-1895r/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1727, N'Kino Uciecha', 13, NULL, 50.31688, 19.0694485, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kino-uciecha/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1728, N'wie¿a ciœnieñ pkp', 1, NULL, 50.7935677, 18.0459881, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-cisnien-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1729, N'Dwór Popielów', 13, NULL, 50.0892258, 20.1467361, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-popielow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1730, N'Fabryka benzyny syntetycznej w Policach', 4, NULL, 53.55887, 14.5476151, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-benzyny-syntetycznej-w-policach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1731, N'cementownia ³azy', 13, NULL, 50.425, 19.3959885, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cementownia-lazy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1732, N'Zak³ady Chemitex', 4, NULL, 52.25841, 20.2768135, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-chemitex/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1733, N'Latarnia Morska Góra Szwedów', 4, NULL, 54.62651, 18.8193436, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/latarnia-morska-gora-szwedow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1734, N'Przedwojenny cmentarz szpitala psychiatrycznego', 13, NULL, 54.60061, 18.2125015, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedwojenny-cmentarz-szpitala-psychiatrycznego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1735, N'Dom kultularny', 3, NULL, 53.83879, 18.49102, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-kultularny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1736, N'Zabytkowa wie¿a Odyniec', 7, NULL, 51.468338, 17.2619686, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabytkowa-wieza-odyniec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1737, N'Pa³ac w Pilicy', 7, NULL, 50.4678574, 19.64879, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-pilicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1738, N'Dwór z 2. po³. XIX w', 3, NULL, 50.7944336, 19.3298645, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-z-2-pol-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1739, N'Opuszczony kompleks budynków.', 13, NULL, 54.16321, 18.1351242, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kompleks-budynkow-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1740, N'Wie¿a Quistorpa', 7, NULL, 53.4643936, 14.5158577, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-quistorpa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1741, N'70 dywizjon rakietowy Obrony Powietrznej', 10, NULL, 53.9099, 14.369173, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/70-dywizjon-rakietowy-obrony-powietrznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1742, N'Dworzec PKP Zgorzelec Miasto', 1, NULL, 51.15338, 15.0199518, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworzec-pkp-zgorzelec-miasto/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1743, N'Zamek w Siedlisku', 7, NULL, 51.766716, 15.8044691, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-w-siedlisku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1744, N'Tartak', 4, NULL, 49.6109467, 21.5242767, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tartak/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1745, N'Stara Cegielnia &#8211; Orzechowce', 4, NULL, 49.8495865, 22.7771187, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-cegielnia-orzechowce/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1746, N'Most kolejowy II', 1, NULL, 53.0021553, 22.9053211, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/most-kolejowy-ii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1747, N'Zespó³ klasztorno-pa³acowy', 3, NULL, 50.90168, 16.5051556, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-klasztorno-palacowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1748, N'Fort 11 &#8211; Stefan Batory', 10, NULL, 52.9859161, 18.5731316, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-11-stefan-batory/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1749, N'Opuszczone wagony kolejowe', 1, NULL, 53.3627167, 14.5885992, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-wagony-kolejowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1750, N'Zapomniane mauzoleum', 7, NULL, 52.93978, 15.3687811, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zapomniane-mauzoleum/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1751, N'Opuszczony dworzec kolejowy', 9, NULL, 52.60013, 16.2851715, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworzec-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1752, N'M³yn Parowy Schneidera i Zimmera', 4, NULL, 51.8452759, 16.5678253, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-parowy-schneidera-i-zimmera/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1753, N'fort IX Brünneck', 9, NULL, 52.3744545, 16.8820953, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-ix-brunneck/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1754, N'Opuszczona Huta Szk³a „Lucyna”', 4, NULL, 51.242897, 15.0435877, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-huta-szkla-lucyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1755, N'Stacja kolejki w¹skotorowej', 1, NULL, 51.3752022, 16.9615517, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-kolejki-waskotorowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1756, N'Pomieszczenia pod stacj¹ kolejow¹', 1, NULL, 54.3813629, 19.8416767, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pomieszczenia-pod-stacja-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1757, N'Karczma Szofera', 13, NULL, 50.22259, 19.7439632, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/karczma-szofera/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1758, N'Opuszczony sklep z lat 80', 13, NULL, 50.9133759, 15.5687876, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-sklep-z-lat-80/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1759, N'Opuszczony m³yn w Jasionie', 13, NULL, 50.3113365, 17.6157379, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-mlyn-w-jasionie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1760, N'Oœrodek wypoczynkowy TP S.A.', 3, NULL, 52.43883, 21.0472641, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-tp-s-a/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1761, N'Chrzanowskie Zak³ady Materia³ów Ogniotrwa³ych', 4, NULL, 50.1181564, 19.4076481, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/chrzanowskie-zaklady-materialow-ogniotrwalych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1762, N'Koœció³ w Janowej Górze', 13, NULL, 50.2628, 16.8321514, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-w-janowej-gorze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1763, N'Cmentarz mennonitów (XIX w.)', 13, NULL, 54.1117477, 19.394989, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-mennonitow-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1764, N'Opuszczony niedokoñczony dom z hal¹.', 3, NULL, 51.67354, 19.4878139, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-niedokonczony-dom-z-hala/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1765, N'Opuszczona radziecka baza paliwowa', 10, NULL, 51.30894, 16.1862946, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-radziecka-baza-paliwowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1766, N'Szko³a/schronisko Zawoja Smyraki', 9, NULL, 49.673275, 19.5499058, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkola-schronisko-zawoja-smyraki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1767, N'Ruiny kamienicy', 3, NULL, 52.23006, 21.0154724, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kamienicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1768, N'Fort £obaczew', 10, NULL, 52.07993, 23.5953712, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-lobaczew/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1769, N'strzelnica wojskowa', 10, NULL, 52.2664223, 20.8955879, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/strzelnica-wojskowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1770, N'stara gorzelnia', 4, NULL, 53.1112938, 15.1076612, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-gorzelnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1771, N'42 Pu³k Zmechanizowany', 10, NULL, 51.6381378, 15.1732912, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/42-pulk-zmechanizowany/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1772, N'Str¹czno &#8211; schrony', 13, NULL, 53.2487068, 16.3725033, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/straczno-schrony/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1773, N'willa Helena', 3, NULL, 52.0814972, 21.12459, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-helena/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1774, N'Rezydencja rodu von Hauenschild', 3, NULL, 50.168232, 18.046299, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rezydencja-rodu-von-hauenschild/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1775, N'36. dywizjon rakietowy OP', 10, NULL, 53.4754753, 14.40959, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/36-dywizjon-rakietowy-op/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1776, N'Opuszczony Elewator zbo¿owy', 4, NULL, 51.13183, 17.0472755, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-elewator-zbozowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1777, N'KKS Gedania', 13, NULL, 54.3869476, 18.6128674, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kks-gedania/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1778, N'Schron', 10, NULL, 50.30599, 21.4612885, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1779, N'Cukrownia Rejowiec', 4, NULL, 51.0906754, 23.2973175, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cukrownia-rejowiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1780, N'Stara Fabryka Drutu Gliwice ul. Dubois', 3, NULL, 50.30586, 18.6669483, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-fabryka-drutu-gliwice-ul-dubois/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1781, N'Wie¿a kontroli lotów', 3, NULL, 52.25628, 20.9286, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-kontroli-lotow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1782, N'Opuszczony pa³ac w Kêpicy', 3, NULL, 53.9391136, 14.9889565, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac-w-kepicy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1783, N'Zespó³ dworski Wandzin z koñca XIX w.', 3, NULL, 53.55238, 23.4684467, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-dworski-wandzin-z-konca-xix-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1784, N'Cmentarz ewangelicki w Robaczynie', 13, NULL, 51.9900665, 16.5616875, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-ewangelicki-w-robaczynie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1785, N'Gorzelnia-Miêdzyrzec Podlaski', 4, NULL, 51.9796638, 22.7701073, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-miedzyrzec-podlaski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1786, N'Bunkry w okolicy fabryki w Za³omiu', 12, NULL, 53.42982, 14.7367134, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-w-okolicy-fabryki-w-zalomiu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1787, N'Pa³ac rodziny Schaffgotsch', 7, NULL, 50.6472168, 17.451107, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-rodziny-schaffgotsch/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1788, N'Ruiny gorzelni.', 3, NULL, 50.5396729, 17.9307575, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-gorzelni/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1789, N'Kamping PTTK', 13, NULL, 53.6570625, 20.7967224, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamping-pttk/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1790, N'Du¿a kamienica', 3, NULL, 52.2398262, 20.9885464, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/duza-kamienica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1791, N'Fort 53 Bodzów', 10, NULL, 50.03476, 19.8658237, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-53-bodzow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1792, N'Gliwickie Zak³ady Chemiczne Carbochem', 4, NULL, 50.27368, 18.6963253, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gliwickie-zaklady-chemiczne-carbochem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1793, N'Schrony &#8211; Lager Kruszyna', 10, NULL, 51.55908, 21.2288265, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schrony-lager-kruszyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1794, N'Konstilana', 4, NULL, 51.7473869, 19.3007259, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/konstilana/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1795, N'Korytarz Ksi¹¿êcy', 9, NULL, 52.2295074, 21.025, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/korytarz-ksiazecy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1796, N'Dwór Bojarów', 3, NULL, 52.1092377, 21.2305431, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-bojarow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1797, N'Cementownia Kana³ek ¯erañski', 4, NULL, 52.3370667, 21.0336323, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cementownia-kanalek-zeranski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1798, N'Fabryka kas pancernychh', 4, NULL, 52.2620544, 21.04243, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-kas-pancernychh/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1799, N'Stanica ZHP', 13, NULL, 50.4597664, 23.166853, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stanica-zhp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1800, N'Ruiny koœcio³a w Wroniñcu', 7, NULL, 51.6824074, 16.4412575, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kosciola-w-wronincu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1801, N'Schronisko i wie¿a widokowa na Przedniej Kopie', 13, NULL, 50.301075, 17.3658962, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schronisko-i-wieza-widokowa-na-przedniej-kopie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1802, N'opuszczony dworek w Jarczewie', 3, NULL, 51.8187027, 21.9877338, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dworek-w-jarczewie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1803, N'Opuszczona elektrocieplownia Trzebinia', 4, NULL, 50.1506157, 19.4552555, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-elektrocieplownia-trzebinia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1804, N'Nieczynna wie¿a ciœnieñ', 4, NULL, 52.3037148, 16.1352062, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieczynna-wieza-cisnien/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1805, N'Fabryka s³odu Vetterów', 4, NULL, 51.2432, 22.5707912, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-slodu-vetterow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1806, N'Gorzelnia w Dobrej Szcz.', 13, NULL, 53.4829636, 14.3838272, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gorzelnia-w-dobrej-szcz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1807, N'Opuszczone gospodarstwo. Radojewo', 3, NULL, 52.4886131, 16.9654789, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-gospodarstwo-radojewo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1808, N'Cegielnia z 1905 roku', 4, NULL, 53.26048, 19.85086, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-z-1905-roku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1809, N'Emilii Plater 7', 3, NULL, 52.22368, 21.0079174, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/emilii-plater-7/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1810, N'Zak³ady W³ókien Chemicznych Chemitex-Celwiskoza', 4, NULL, 50.8961029, 15.7214355, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-wlokien-chemicznych-chemitex-celwiskoza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1811, N'Oddzia³ chorób wewnêtrznych', 11, NULL, 50.6658249, 18.68152, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/oddzial-chorob-wewnetrznych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1812, N'Ruiny fabryki &#8211; Gumieñce', 4, NULL, 53.4000931, 14.4880066, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-fabryki-gumience/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1813, N'Stara Spó³dzielnia Inwalidów', 3, NULL, 50.25914, 19.578537, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-spoldzielnia-inwalidow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1814, N'Poniemieckie perony kolejowe', 1, NULL, 51.0969467, 17.04709, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poniemieckie-perony-kolejowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1815, N'Cegielnia w Psurzu k. Kutna', 4, NULL, 52.2150536, 19.4447823, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-w-psurzu-k-kutna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1816, N'opuszczony Zak³ad Przyrodoleczniczy', 9, NULL, 49.42711, 20.4865189, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-zaklad-przyrodoleczniczy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1817, N'Zak³ad przemys³owy', 4, NULL, 51.79891, 15.2384367, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-przemyslowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1818, N'Zespó³ Pa³acowo-Rezydencjonalny', 7, NULL, 50.5900536, 16.8847866, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-palacowo-rezydencjonalny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1819, N'Fort 50a Lasówka', 10, NULL, 50.04323, 20.0155334, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-50a-lasowka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1820, N'Baza Wojskowa Kompani Radiotechnicznej.', 10, NULL, 51.7519073, 16.0300312, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baza-wojskowa-kompani-radiotechnicznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1821, N'Dom na Lubostroniu', 3, NULL, 50.01462, 19.8981857, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-na-lubostroniu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1822, N'Muszaki pozosta³oœci po poligonie', 10, NULL, 53.3841476, 20.7288837, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/muszaki-pozostalosci-po-poligonie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1823, N'pa³ac w Kruszewie', 3, NULL, 52.9747925, 16.6578045, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-kruszewie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1824, N'Hale produkcyjne', 4, NULL, 51.9729767, 19.2799263, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/hale-produkcyjne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1825, N'Wagony Kolejowe PKP Kraków Bie¿anów', 1, NULL, 50.02445, 20.0242748, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wagony-kolejowe-pkp-krakow-biezanow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1826, N'szpital nr 2 oddzia³ kardiologii', 11, NULL, 52.1132278, 21.2738552, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szpital-nr-2-oddzial-kardiologii/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1827, N'MRU Grupa Warowna schill', 10, NULL, 52.4368629, 15.46154, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mru-grupa-warowna-schill/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1828, N'Baza nawierzchniowa PKP', 1, NULL, 51.9755478, 20.1842289, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baza-nawierzchniowa-pkp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1829, N'Opuszczony budynek &#8211; kot³ownia', 13, NULL, 52.19738, 17.11027, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-budynek-kotlownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1830, N'Cukrownia Pruszcz', 4, NULL, 54.26239, 18.6439285, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cukrownia-pruszcz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1831, N'Magazyny Odzie¿y JW Babie Do³y', 9, NULL, 54.5855675, 18.53784, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyny-odziezy-jw-babie-doly/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1832, N'Grand Senior &#8211; dom spokojnej staroœci', 11, NULL, 51.52253, 15.7850924, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/grand-senior-dom-spokojnej-starosci/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1833, N'Zamek w Krupem', 7, NULL, 51.03406, 23.2394753, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-w-krupem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1834, N'Iguana Disco Club', 3, NULL, 52.13304, 20.980814, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/iguana-disco-club/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1835, N'¯ukowice &#8211; wymieraj¹ca wieœ', 3, NULL, 51.6722374, 15.9778118, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zukowice-wymierajaca-wies/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1836, N'Tartak Ruciane', 4, NULL, 53.65054, 21.5665054, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/tartak-ruciane/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1837, N'Kowary Zak³ad R1', 4, NULL, 50.77205, 15.85454, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kowary-zaklad-r1/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1838, N'Stare wodoci¹gi', 9, NULL, 51.6580963, 17.4333, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stare-wodociagi/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1839, N'Blok produkcyjny Zak³adów Maszyn OFAMA', 4, NULL, 50.66083, 17.8851013, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/blok-produkcyjny-zakladow-maszyn-ofama/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1840, N'Stacja kontroli pojazdów', 4, NULL, 52.20119, 21.0347843, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-kontroli-pojazdow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1841, N'Fort V Waldersee I', 10, NULL, 52.4442978, 16.9348812, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-v-waldersee-i/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1842, N'Magazyn zbo¿owy i opuszczony dom', 13, NULL, 51.67452, 15.8819313, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyn-zbozowy-i-opuszczony-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1843, N'Opuszczony Wojskowy Dom Wypoczynkowy Rybitwa', 13, NULL, 53.6010933, 18.2787743, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-wojskowy-dom-wypoczynkowy-rybitwa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1844, N'Pensjonat Greczynka', 3, NULL, 52.076458, 21.1034184, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pensjonat-greczynka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1845, N'Poligon Waffen SS Heidelager', 10, NULL, 50.139595, 21.5906582, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/poligon-waffen-ss-heidelager/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1846, N'Dawna masarnia', 4, NULL, 52.50398, 20.0241642, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-masarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1847, N'Opuszczony Szpital Stoczniowy', 11, NULL, 54.36223, 18.6466713, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szpital-stoczniowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1848, N'Opuszczona Elektrownia w Ludwikowicach K³odzkich', 13, NULL, 50.62929, 16.4970932, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-elektrownia-w-ludwikowicach-klodzkich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1849, N'Opuszczony Oœrodek Wypoczynkowy Monkolo', 3, NULL, 52.3466148, 18.5660782, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy-monkolo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1850, N'Rudunek', 3, NULL, 52.3960953, 17.9152451, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rudunek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1851, N'Lokal &#8211; Strzeszyñska 36', 3, NULL, 52.44733, 16.8983, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lokal-strzeszynska-36/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1852, N'Wie¿a ³¹cznoœci &#8211; opuszczona', 10, NULL, 54.449398, 18.5365963, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wieza-lacznosci-opuszczona/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1853, N'Stary cmentarz ewangelicki w Bielsku &#8211; Bia³ej', 13, NULL, 49.8244133, 19.0395126, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-cmentarz-ewangelicki-w-bielsku-bialej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1854, N'Bunkier powojenny', 10, NULL, 50.2339439, 19.1443157, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-powojenny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1855, N'Baza rakietowa', 10, NULL, 52.2720947, 21.4247112, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baza-rakietowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1856, N'Kolejowa wie¿a ciœnieñ', 1, NULL, 52.214138, 20.23481, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kolejowa-wieza-cisnien/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1857, N'Opuszcony Koœció³ z cmentarzyskiem', 13, NULL, 51.2105942, 15.6214237, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszcony-kosciol-z-cmentarzyskiem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1858, N'Oleski kirkut', 13, NULL, 50.8763657, 18.40589, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/oleski-kirkut/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1859, N'Przedszkole', 13, NULL, 52.2081833, 21.0435829, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedszkole/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1860, N'Opuszczone domy', 3, NULL, 50.562603, 16.50228, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-domy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1861, N'Ruiny Zamku Klaudyny Potockiej', 7, NULL, 52.2672653, 16.7894268, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zamku-klaudyny-potockiej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1862, N'S³odownia EB Nowy Staw', 4, NULL, 54.1347237, 19.0052319, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/slodownia-eb-nowy-staw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1863, N'Cegielnia Przywary', 4, NULL, 50.7801552, 18.5388985, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-przywary/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1864, N'Zamek w stanie surowym', 7, NULL, 51.6581879, 17.1497154, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-w-stanie-surowym/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1865, N'Dawna sowiecka brygada rakietowa', 10, NULL, 51.38648, 15.6026592, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-sowiecka-brygada-rakietowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1866, N'M³yn', 4, NULL, 53.488903, 19.26998, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1867, N'Opuszczony oœrodek wypoczynkowy Uroczysko', 3, NULL, 51.0980034, 18.7248363, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy-uroczysko/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1868, N'Podziemia zamku Ksi¹¿', 12, NULL, 50.8446, 16.2972012, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/podziemia-zamku-ksiaz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1869, N'szamotownia rogoŸnik', 4, NULL, 50.39454, 19.0192966, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szamotownia-rogoznik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1870, N'Sanatorium Wedel', 9, NULL, 52.12345, 21.2430115, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sanatorium-wedel/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1871, N'Niedokoñczony dom', 3, NULL, 51.6710663, 19.6875858, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/niedokonczony-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1872, N'Motel i stacja benzynowa', 3, NULL, 54.24812, 18.982811, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/motel-i-stacja-benzynowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1873, N'Ruski szpital', 11, NULL, 51.7981529, 15.703166, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruski-szpital/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1874, N'S³odownia', 4, NULL, 50.4836578, 17.3306561, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/slodownia-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1875, N'Ruiny budynku', 3, NULL, 54.0155373, 19.80659, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-budynku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1876, N'Baza kierowców', 13, NULL, 51.5759277, 19.0148239, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baza-kierowcow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1877, N'Schron przeciwlotniczy wielokondygnacyjny', 10, NULL, 54.54946, 18.5459232, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-przeciwlotniczy-wielokondygnacyjny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1878, N'Opuszczony posterunek policji', 4, NULL, 50.2120628, 18.6135864, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-posterunek-policji/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1879, N'Opuszczona jednostka wojskowa JW 1479', 10, NULL, 54.4945145, 18.5560074, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-jednostka-wojskowa-jw-1479/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1880, N'Ruiny pa³acyku z 1595r', 3, NULL, 53.32606, 17.4522686, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-palacyku-z-1595r/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1881, N'Ciep³ownia', 4, NULL, 50.03376, 19.19557, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cieplownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1882, N'Opuszczona kamienica &#8211; £azienna', 3, NULL, 52.40702, 16.9403915, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-lazienna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1883, N'Cytadela Warszawska', 12, NULL, 52.2574272, 20.9988632, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cytadela-warszawska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1884, N'Opuszczona fabryka domów', 4, NULL, 52.3114967, 20.9648743, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-fabryka-domow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1885, N'Zak³ad Olejarski w Sieniawie', 13, NULL, 50.1714859, 22.6017952, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-olejarski-w-sieniawie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1886, N'Koœció³ w Mi³kowie', 13, NULL, 50.8103828, 15.7618618, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-w-milkowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1887, N'Europark Oœrodek Wypoczynkowy', 3, NULL, 53.6443062, 18.5930939, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/europark-osrodek-wypoczynkowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1888, N'Zamek Œwiny', 7, NULL, 50.93875, 16.11228, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-swiny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1889, N'Dworzec kolejowy', 1, NULL, 50.4233932, 18.1885529, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworzec-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1890, N'Zak³ad Taboru Gliwice', 1, NULL, 50.2959824, 18.7100735, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-taboru-gliwice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1891, N'Cmentarz wojenny/cmentarz wojskowy', 13, NULL, 53.57885, 16.5668678, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-wojenny-cmentarz-wojskowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1892, N'zak³ad dziewiarski WANDA', 13, NULL, 50.2729759, 19.152195, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-dziewiarski-wanda/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1893, N'28 Bateria Altylerii Sta³ej', 10, NULL, 54.55089, 18.5589123, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/28-bateria-altylerii-stalej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1894, N'Dworek ziemiañski', 3, NULL, 52.72922, 15.1455975, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-ziemianski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1895, N'Szlak Umocnieñ Przedmoœcia Bydgoskiego', 10, NULL, 53.15336, 17.8064346, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szlak-umocnien-przedmoscia-bydgoskiego/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1896, N'Opuszczona willa', 3, NULL, 52.1828, 20.7484741, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-willa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1897, N'Sztolnia rycerska Dzikowiec', 9, NULL, 50.7247543, 16.2140751, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sztolnia-rycerska-dzikowiec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1898, N'5. Dywizjon Rakietowy Obrony Powietrznej', 10, NULL, 52.3800545, 21.18317, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/5-dywizjon-rakietowy-obrony-powietrznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1899, N'Willa Julia', 3, NULL, 52.10806, 21.2658825, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-julia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1900, N'Mleczarnia i hale', 4, NULL, 53.38697, 23.4666042, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mleczarnia-i-hale/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1901, N'Miejsca by³ego 9 dywizjonu ogniowego artylerii rakietowej OP Teresin', 10, NULL, 52.2036629, 20.36642, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/miejsca-bylego-9-dywizjonu-ogniowego-artylerii-rakietowej-op-teresin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1902, N'Garbarnia Temler i Szwede', 13, NULL, 52.2519226, 20.9817848, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/garbarnia-temler-i-szwede/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1903, N'Kwatera SS BUNKRY hitlerowskie', 10, NULL, 54.13227, 21.55449, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kwatera-ss-bunkry-hitlerowskie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1904, N'PKP Brochów #3 &#8211; Kot³ownia', 1, NULL, 51.0592041, 17.0894051, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pkp-brochow-3-kotlownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1905, N'Paszarnia', 4, NULL, 50.3967552, 19.94351, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/paszarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1906, N'zabudowania kolejowe K³odzko G³owne', 1, NULL, 50.45389, 16.6556149, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zabudowania-kolejowe-klodzko-glowne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1907, N'Ba³y (Most 4)', 1, NULL, 50.3925629, 18.6045856, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/baly-most-4/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1908, N'Pozosta³oœci fabryki amunicji Deutsche Sprengchemie w Bro¿ku', 4, NULL, 51.71512, 14.6955862, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozostalosci-fabryki-amunicji-deutsche-sprengchemie-w-brozku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1909, N'Kaplica w lesie', 7, NULL, 54.1619568, 19.9058743, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kaplica-w-lesie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1910, N'Zak³ady Chemiczne Zachem', 13, NULL, 53.08327, 18.1132717, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-chemiczne-zachem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1911, N'Dwór w Olesznie', 3, NULL, 50.93917, 20.0397835, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-w-olesznie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1912, N'Stary Browar w Myœlêcinku', 7, NULL, 53.1656075, 18.04161, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-browar-w-myslecinku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1913, N'Opuszczony most kolejowy dawnej linii Wronki &#8211; Poznañ', 1, NULL, 52.7026024, 16.6056633, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-most-kolejowy-dawnej-linii-wronki-poznan/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1914, N'Opuszczony Dwór z XVIII wieku', 3, NULL, 54.58828, 16.9759369, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dwor-z-xviii-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1915, N'Dawne zak³ady WIZAMET', 4, NULL, 51.8589439, 19.415823, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawne-zaklady-wizamet/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1916, N'Fort XIII B³ogos³awie', 10, NULL, 52.5042572, 20.6333752, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-xiii-blogoslawie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1917, N'Willa Zbyszek', 3, NULL, 52.0818253, 21.1239185, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-zbyszek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1918, N'Opuszczona kamienica ul.Zofii Urbanowskiej', 13, NULL, 52.2124634, 18.25224, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-ul-zofii-urbanowskiej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1919, N'Wilczy Szaniec', 10, NULL, 54.08074, 21.48943, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wilczy-szaniec/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1920, N'Zak³ad Przetwórstwa Owocowo &#8211; Warzywnego Owintar', 4, NULL, 50.0073051, 20.97933, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-przetworstwa-owocowo-warzywnego-owintar/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1921, N'ZNTK', 4, NULL, 52.39671, 16.911478, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zntk/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1922, N'Stary dwór', 3, NULL, 54.1864738, 21.157093, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-dwor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1923, N'Most nad Odr¹', 13, NULL, 52.1375961, 14.6825409, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/most-nad-odra/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1924, N'cmentarz w Gumnowicach', 13, NULL, 53.1873169, 17.6890831, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-w-gumnowicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1925, N'¯ydowski Cmentarz', 7, NULL, 49.68029, 19.1744461, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zydowski-cmentarz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1926, N'Grobowiec von Tesmar', 13, NULL, 54.7115021, 17.783968, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/grobowiec-von-tesmar/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1927, N'Sanatorium neuropsychiatrii dzieciêcej', 11, NULL, 53.2104568, 14.4738531, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sanatorium-neuropsychiatrii-dzieciecej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1928, N'Ruiny negotyckiej bramy', 7, NULL, 52.1653, 21.1016445, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-negotyckiej-bramy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1929, N'Kulochwyty do badañ poprodukcyjnych sprzêtu uzbrojenia w HSW Stalowa Wola', 10, NULL, 50.5347061, 22.0342827, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kulochwyty-do-badan-poprodukcyjnych-sprzetu-uzbrojenia-w-hsw-stalowa-wola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1930, N'Opuszczona huta szk³a „Julia”', 4, NULL, 50.825634, 15.52252, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-huta-szkla-julia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1931, N'Dwór', 3, NULL, 54.33746, 17.063076, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1932, N'opuszczony PGR', 13, NULL, 52.25912, 16.7674541, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-pgr/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1933, N'Opuszczona oczyszczalnia œcieków', 4, NULL, 51.27658, 19.5499344, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-oczyszczalnia-sciekow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1934, N'Basen solankowy', 11, NULL, 52.88705, 18.7823315, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/basen-solankowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1935, N'Zajezdnia tramwajowa KWISKA', 1, NULL, 51.1262856, 16.982975, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zajezdnia-tramwajowa-kwiska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1936, N'Kolonie w Justynowie', 3, NULL, 51.7180176, 19.6741962, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kolonie-w-justynowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1937, N'Bunkier Wilkocin', 9, NULL, 51.47732, 15.8069668, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkier-wilkocin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1938, N'zak³ady koksownicze', 13, NULL, 50.7581024, 16.2645435, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-koksownicze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1939, N'Opuszczony WIELKI SZPITAL rosyjski', 11, NULL, 51.1963959, 16.129818, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-wielki-szpital-rosyjski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1940, N'21 Bateria Przeciwlotnicza', 10, NULL, 54.6025238, 18.81692, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/21-bateria-przeciwlotnicza/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1941, N'Bunkry Wojskowe', 10, NULL, 52.2404938, 21.14761, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-wojskowe/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1942, N'Twierdza Przemyœl &#8211; Fort V Grochowce', 10, NULL, 49.7358055, 22.7613258, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/twierdza-przemysl-fort-v-grochowce/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1943, N'Opuszczone budynki WinPolu', 4, NULL, 52.01847, 23.1171665, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki-winpolu/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1944, N'Kot³ownia', 4, NULL, 52.1599922, 20.6158657, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kotlownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1945, N'Zak³ady Wyrobów Azbestowo-Cementowych w Wierzbicy (ZWAC)', 4, NULL, 51.24715, 21.0350132, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklady-wyrobow-azbestowo-cementowych-w-wierzbicy-zwac/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1946, N'Wojewódzka Dyrekcja Inwestycji Woj.Koniñskiego &#8211; Oddzia³ 2', 13, NULL, 52.193573, 18.23786, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wojewodzka-dyrekcja-inwestycji-woj-koninskiego-oddzial-2/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1947, N'Cerkiew Moszczanica', 13, NULL, 50.28229, 22.9020748, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cerkiew-moszczanica/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1948, N'Cmentarz ¿ydowski i dom pogrzebowy', 13, NULL, 50.39296, 18.63489, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-zydowski-i-dom-pogrzebowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1949, N'Koœció³ na wyspie', 13, NULL, 51.1026039, 22.1411953, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kosciol-na-wyspie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1950, N'40 dywizjon rakietowy Obrony Powietrznej', 10, NULL, 53.98752, 14.6175365, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/40-dywizjon-rakietowy-obrony-powietrznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1951, N'Bastion Zbawiciela', 12, NULL, 54.34107, 18.6385975, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bastion-zbawiciela/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1952, N'Schrony przy lotnisku', 12, NULL, 51.56219, 15.6105986, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schrony-przy-lotnisku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1953, N'M³yn Su³kowice', 4, NULL, 51.1408, 17.08065, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mlyn-sulkowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1954, N'Magazyn meblowy', 3, NULL, 51.22751, 16.4746571, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyn-meblowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1955, N'Wiatrak', 13, NULL, 53.7240562, 17.9047451, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wiatrak/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1956, N'Stary Poligon &#8211; Krzekowo', 10, NULL, 53.4591827, 14.4768906, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-poligon-krzekowo/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1957, N'Stary m³yn i opuszczony dom', 3, NULL, 52.11947, 19.8099079, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-mlyn-i-opuszczony-dom/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1958, N'Dawna radziecka baza wojsk ³¹cznoœci dalekosiê¿nej', 10, NULL, 52.4075356, 15.4658747, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawna-radziecka-baza-wojsk-lacznosci-dalekosieznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1959, N'Cmentarz mennonitów (XVIII w.)', 13, NULL, 54.06342, 18.9763947, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-mennonitow-xviii-w/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1960, N'Krochmalnia', 4, NULL, 52.4713326, 18.99197, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/krochmalnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1961, N'Opuszczona Hala Przemys³owa', 4, NULL, 50.0107155, 20.9455872, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-hala-przemyslowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1962, N'Stary most kolejowy', 1, NULL, 52.31883, 21.0216274, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-most-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1963, N'Fort III Blizne', 10, NULL, 52.246933, 20.8935928, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-iii-blizne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1964, N'Opuszczony pa³ac', 3, NULL, 51.8709526, 16.3837051, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-palac/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1965, N'Opuszczona kamienica (stare gimnazjum)', 3, NULL, 52.2498665, 21.03283, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-kamienica-stare-gimnazjum/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1966, N'Cegielnia w Strykowie', 4, NULL, 51.89557, 19.59507, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-w-strykowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1967, N'Mostostal Konin', 13, NULL, 52.3130455, 18.156538, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mostostal-konin/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1968, N'Stara masarnia', 3, NULL, 52.199585, 21.0250854, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-masarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1969, N'Szko³a w Szczepanowicach', 13, NULL, 50.1958656, 20.1089859, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/szkola-w-szczepanowicach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1970, N'Kot³ownia szpitalna', 4, NULL, 53.8673325, 20.95582, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kotlownia-szpitalna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1971, N'Przêdzalnia czesankowa We³nopol', 4, NULL, 50.79663, 19.1195488, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/przedzalnia-czesankowa-welnopol/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1972, N'Ruiny koœcio³a i cmentarz', 13, NULL, 50.28402, 16.7895126, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-kosciola-i-cmentarz/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1973, N'Opuszczone Zak³ady W³ókiennicze Bewelana w Bielsku-Bia³ej', 4, NULL, 49.7935181, 19.06005, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-zaklady-wlokiennicze-bewelana-w-bielsku-bialej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1974, N'Oœrodek Wypoczynkowy Cicha Polana', 13, NULL, 53.5955544, 21.0616837, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/osrodek-wypoczynkowy-cicha-polana/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1975, N'by³e podziemne stanowisko dowodzenia', 10, NULL, 52.51791, 16.8531361, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/byle-podziemne-stanowisko-dowodzenia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1976, N'Jednostka £¹cznoœci Troposferycznej BARS 202', 10, NULL, 51.42072, 15.84747, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-lacznosci-troposferycznej-bars-202/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1977, N'Opuszczony cmentarz ¯ydowski', 13, NULL, 54.6062775, 18.18469, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-cmentarz-zydowski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1978, N'Zespó³ dworski / dwór', 3, NULL, 52.2738571, 17.4951363, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zespol-dworski-dwor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1979, N'Opuszczona hala FSO', 4, NULL, 52.2928619, 21.00656, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-hala-fso/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1980, N'Opuszczona cegielnia w S³onawach', 4, NULL, 52.65888, 16.771328, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-cegielnia-w-slonawach/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1981, N'Zamek rycerski', 7, NULL, 50.505928, 16.45519, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-rycerski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1982, N'piêtrowy bunkier- wa³ pomorski', 10, NULL, 53.47744, 16.4891472, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pietrowy-bunkier-wal-pomorski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1983, N'Dawny wêzê³ kolejowy', 1, NULL, 54.5720634, 17.0961018, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawny-wezel-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1984, N'Kamienica na SzmulowiŸnie', 3, NULL, 52.2602272, 21.0552521, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamienica-na-szmulowiznie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1985, N'Jednostka Wojskowa 2828', 10, NULL, 50.11594, 19.9640179, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-wojskowa-2828/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1986, N'Opuszczony grobowiec/kapilca w Szpêgawsku', 7, NULL, 54.0015068, 18.586895, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-grobowiec-kapilca-w-szpegawsku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1987, N'Opuszczona jednostka wojskowa. Gdynia Grabówek', 10, NULL, 54.5223961, 18.4857845, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-jednostka-wojskowa-gdynia-grabowek/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1988, N'30 dywizjon rakietowy Obrony Powietrznej', 10, NULL, 52.53791, 17.03128, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/30-dywizjon-rakietowy-obrony-powietrznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1989, N'Neogotycki szpital z XIX wieku', 11, NULL, 50.8512573, 16.3710022, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/neogotycki-szpital-z-xix-wieku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1990, N'Dwór w Maliñcu k. Konina', 3, NULL, 52.2573433, 18.2680035, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dwor-w-malincu-k-konina/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1991, N'Opuszczona stacja radiolokacyjna', 10, NULL, 53.1942825, 17.8274632, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczona-stacja-radiolokacyjna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1992, N'Fabryka braci Briggs', 4, NULL, 52.32129, 21.1065845, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-braci-briggs/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1993, N'Opuszczony poniemiecki cmentarz ewangelicki', 13, NULL, 54.7557564, 17.7070618, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-poniemiecki-cmentarz-ewangelicki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1994, N'Opuszczony Cmentarz ewangelicko-augsburski', 13, NULL, 50.67314, 17.90911, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-cmentarz-ewangelicko-augsburski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1995, N'Uniontex', 4, NULL, 51.74988, 19.4716778, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/uniontex/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1996, N'Stara Cegielnia', 13, NULL, 50.31631, 18.1669235, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-cegielnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1997, N'Opuszczony Oœrodek Wypoczynkowy', 3, NULL, 51.82496, 21.4011955, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-osrodek-wypoczynkowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1998, N'PGR w Wi¹czemin Polski', 4, NULL, 52.44308, 19.8854828, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pgr-w-wiaczemin-polski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (1999, N'Ruiny Zamku', 7, NULL, 53.3450165, 18.05088, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-zamku/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2000, N'Stacja kolejowa', 1, NULL, 50.02115, 20.03123, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stacja-kolejowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2001, N'Pa³ac w Tomaszowie Boles³awieckim', 3, NULL, 51.2702942, 15.68161, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-w-tomaszowie-boleslawieckim/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2002, N'Huta Józef', 4, NULL, 50.9912033, 20.6141911, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/huta-jozef/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2003, N'Okolice nieu¿ywanego powojskowego lotniska', 10, NULL, 51.21925, 17.4372768, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/okolice-nieuzywanego-powojskowego-lotniska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2004, N'Opuszczony Kurort Wypoczynkowy Kozubnik', 3, NULL, 49.79961, 19.2285843, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-kurort-wypoczynkowy-kozubnik/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2005, N'Wie¿ Wodoci¹gowa', 7, NULL, 50.15822, 18.8762817, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/wiez-wodociagowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2006, N'Bateria Dobrzyñska', 10, NULL, 53.0153465, 18.61611, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bateria-dobrzynska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2007, N'Dawne szczeciñskie rzeŸnie miejskie (£asztownia)', 13, NULL, 53.4255867, 14.57076, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dawne-szczecinskie-rzeznie-miejskie-lasztownia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2008, N'Bunkry Æwiczebne WP', 10, NULL, 52.26847, 21.18902, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/bunkry-cwiczebne-wp/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2009, N'Stary m³yn wodny', 4, NULL, 51.63653, 19.71443, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stary-mlyn-wodny/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2010, N'3 BAS Hel-Bór', 10, NULL, 54.6407623, 18.7970924, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/3-bas-hel-bor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2011, N'huta metali nie¿elaznych', 13, NULL, 50.2586479, 19.1056976, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/huta-metali-niezelaznych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2012, N'Jednostka wojskowa 3 kompani radiotechnicznej', 10, NULL, 51.33919, 22.64969, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-wojskowa-3-kompani-radiotechnicznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2013, N'Fabryka opakowañ', 13, NULL, 52.1061, 20.62387, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fabryka-opakowan/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2014, N'Silosy Spo¿ywcze', 4, NULL, 52.6545525, 19.1114616, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/silosy-spozywcze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2015, N'Opuszczony cmentarz niemiecki', 13, NULL, 50.89607, 16.6138515, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-cmentarz-niemiecki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2016, N'Opuszczony tunel kolejowy', 9, NULL, 50.7620354, 15.8736134, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-tunel-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2017, N'Sanatorium Œwierki', 11, NULL, 49.4262352, 20.4875412, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/sanatorium-swierki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2018, N'Cmentarz ewangelicki', 13, NULL, 52.33528, 15.2911692, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cmentarz-ewangelicki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2019, N'Cegielnia Ostrowieczno k. Dolska', 4, NULL, 51.9816551, 17.0866165, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/cegielnia-ostrowieczno-k-dolska/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2020, N'Fort IIA', 10, NULL, 52.38498, 16.98336, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-iia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2021, N'Mleczarnia', 4, NULL, 51.80228, 16.3226929, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/mleczarnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2022, N'Kamienica przy ul. ¯elaznej', 3, NULL, 52.228447, 20.9951363, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kamienica-przy-ul-zelaznej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2023, N'Pa³ac samobójców', 3, NULL, 51.7079926, 16.52404, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palac-samobojcow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2024, N'Domiszcze', 3, NULL, 52.59502, 16.6975021, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/domiszcze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2025, N'Magazyn paliw wraz ze schronem', 4, NULL, 52.1683655, 20.9915047, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/magazyn-paliw-wraz-ze-schronem/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2026, N'XIX-wieczny dwór', 3, NULL, 51.5239944, 21.1998615, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/xix-wieczny-dwor/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2027, N'Ruiny letniego pa³acu Poniatowskich', 7, NULL, 52.4525566, 20.7763462, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/ruiny-letniego-palacu-poniatowskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2028, N'Fort Szcza Szczêœliwice', 10, NULL, 52.2064476, 20.9492531, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-szcza-szczesliwice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2029, N'Kaplica rodzinna Koernerów', 13, NULL, 52.9362526, 17.45197, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/kaplica-rodzinna-koernerow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2030, N'SCHRON KOLEJOWY STÊPINA &#8211; CIESZYNA', 10, NULL, 49.87202, 21.5892639, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/schron-kolejowy-stepina-cieszyna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2031, N'Opuszczony dwór w Wilkowej', 7, NULL, 51.34531, 16.910162, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-dwor-w-wilkowej/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2032, N'Pralnia Szpitalna', 11, NULL, 51.6014938, 19.4926643, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pralnia-szpitalna/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2033, N'Fort Tarpno', 10, NULL, 53.510025, 18.8006535, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-tarpno/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2034, N'Investment £ódzki SA &#8211; fabryka materia³ów budowlanych.', 4, NULL, 51.825985, 19.4077473, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/investment-lodzki-sa-fabryka-materialow-budowlanych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2035, N'Lokomotywownia G¹dów', 4, NULL, 51.12184, 16.9501019, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/lokomotywownia-gadow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2036, N'Opuszczony Wojskowy Dom Wypoczynkowy Karkonosze', 3, NULL, 54.09438, 15.1314917, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-wojskowy-dom-wypoczynkowy-karkonosze/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2037, N'Pozosta³oœci KWK 1 Maja', 4, NULL, 49.97791, 18.49717, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozostalosci-kwk-1-maja/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2038, N'Fort IV Chrzanów', 10, NULL, 52.22049, 20.8914471, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-iv-chrzanow/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2039, N'Dom £ady', 3, NULL, 51.3067474, 20.2366562, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dom-lady/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2040, N'Budynek i kilka ma³ych hal', 4, NULL, 53.69151, 23.30874, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-i-kilka-malych-hal/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2041, N'Stara D¹browa by³a gorzelnia &#8211; Trzebaw', 13, NULL, 52.2811356, 16.7600861, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/stara-dabrowa-byla-gorzelnia-trzebaw/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2042, N'Laboratorium i Wytwórnia Koncentratów GS Konin oddzia³ w Golinie.', 4, NULL, 52.2426262, 18.0899868, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/laboratorium-i-wytwornia-koncentratow-gs-konin-oddzial-w-golinie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2043, N'Opuszczone budynki fabryczne', 4, NULL, 53.5796127, 16.5276432, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczone-budynki-fabryczne/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2044, N'GS Drzewce', 4, NULL, 51.3191338, 22.2056866, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/gs-drzewce/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2045, N'Nieczynna gorzelnia', 4, NULL, 51.6158257, 16.35939, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/nieczynna-gorzelnia/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2046, N'Zak³ad P³yt Pilœniowych i Wiórowych', 4, NULL, 53.63441, 21.5350914, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zaklad-plyt-pilsniowych-i-wiorowych/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2047, N'Budynek stoczniowy', 13, NULL, 54.36401, 18.6437244, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/budynek-stoczniowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2048, N'Opuszczony most kolejowy', 1, NULL, 52.60078, 15.4836845, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-most-kolejowy/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2049, N'Grupa warowna Ludendorff', 10, NULL, 52.5751038, 15.4292383, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/grupa-warowna-ludendorff/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2050, N'Fort pancerny 48a Mistrzejowice', 10, NULL, 50.1012573, 20.0171757, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-pancerny-48a-mistrzejowice/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2051, N'Fort Kobylany', 10, NULL, 52.0432, 23.5535717, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/fort-kobylany/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2052, N'Jednostka rakietowa', 10, NULL, 54.71292, 17.2172928, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/jednostka-rakietowa/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2053, N'zamek ksi¹¿¹t oleœnickich', 7, NULL, 51.53176, 17.26922, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zamek-ksiazat-olesnickich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2054, N'Pa³acyk Œleszyñskich', 7, NULL, 52.2236443, 21.0238, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/palacyk-sleszynskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2055, N'Dworek Myœliwski', 3, NULL, 50.5010529, 17.8966351, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/dworek-mysliwski/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2056, N'Spalona szko³a', 13, NULL, 51.8686867, 19.32631, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/spalona-szkola/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2057, N'Willa Górskich', 3, NULL, 51.2841568, 22.20984, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/willa-gorskich/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2058, N'Rolnicza Spó³dzielnia Wytwórcza Srebrna D¹brówka (Klub ARKA)', 3, NULL, 51.8967133, 19.4222984, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/rolnicza-spoldzielnia-wytworcza-srebrna-dabrowka-klub-arka/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2059, N'Pozosta³oœci cmentarza w Cyprianowie', 13, NULL, 51.9209, 19.4559059, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/pozostalosci-cmentarza-w-cyprianowie/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2060, N'Opuszczony szpital wirecki', 11, NULL, 50.2717247, 18.8630676, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/opuszczony-szpital-wirecki/', NULL)
GO
INSERT [dbo].[Miejsce] ([Id], [Nazwa], [Miejsce_KategoriaId], [Adres], [WspolrzedneLAT], [WspolrzedneLNG], [ZdjecieId], [Trudnosc], [Doswiadczenie], [Link], [UzytkownikId]) VALUES (2061, N'Zbombardowany most kolejowy', 1, NULL, 53.4051971, 16.8628559, NULL, NULL, NULL, N'https://urbexy.pl/miejsce/zbombardowany-most-kolejowy/', NULL)
GO
SET IDENTITY_INSERT [dbo].[Miejsce] OFF
GO
