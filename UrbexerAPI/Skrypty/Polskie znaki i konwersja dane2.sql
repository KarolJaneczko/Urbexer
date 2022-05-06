
DELETE FROM [dbo].[Miejsce];
GO

SET IDENTITY_INSERT [dbo].[Miejsce] ON 
GO

/****** Script for SelectTopNRows command from SSMS  ******/
Insert into Miejsce (Id, Nazwa, Miejsce_KategoriaId, Adres, WspolrzedneLAT, WspolrzedneLNG, DataDodania, Miasto,  WojewodztwoId, Opis)
SELECT [id],
	REPLACE(
		REPLACE(
			REPLACE([title], '&#8211;', '-')
		, '&#8220;', '"')
	  , '&#8221;', '"')
	  
	  as [Nazwa]
	  , (select Id from Miejsce_kategoria mk where Replace(dane2.category,'wybierz','Inne') = mk.Nazwa) as Miejsce_KategoriaId
      ,[address] as Adres
      ,Convert(real, Replace([lat],',','.')) as WspolrzedneLAT
      ,Convert(real, Replace([lng],',','.')) as WspolrzedneLNG
      ,[date] as [DataDodania]
      ,[town] as [Miasto]
      , (select Id from Miejsce_wojewodztwa mw where mw.Nazwa = dane2.[voivodeship]) as [WojewodztwoId] 
      , 
	  Replace(
		Replace(
			Replace(
				Replace(
					Replace(
						Replace(
							Replace(
								Replace(
									Replace(
										Replace(
											Replace(
												Replace(
													Replace(
														Replace(
															Replace(
																Replace(
																	Replace(
																		Replace(
																			Replace(
																				Replace(
																					Replace(
																						Replace(
																							Replace(
																								Replace(
																									Replace([desc], '<p>', ''),
																								'\n', ''),
																							'\u201d', '"'),
																						'\u201e', '"'),
																					'<br />', ''),
																				'\xf3', 'Û'),
																			'</p>', ''),
																		'\u0105', 'π'),
																	'\u0107', 'Ê'),
																'\u0119', 'Í'),
															'\u0142', '≥'),
														'\u0144', 'Ò'),
													'\u00f3', 'Û'),
												'\u015b', 'ú'),
											'\u017a', 'ü'),
										'\u017c', 'ø'),
									'\u0104', '•'),
								'\u0106', '∆'),
							'\u0118', ' '),
						'\u0141', '£'),
					'\u0143', '—'),
				'\u00d3', '”'),
			'\u015a', 'å'),
		'\u0179', 'è'),
	  '\u017b', 'Ø')
	  

	  as Opis
  FROM [dbo].[dane2]

GO

SET IDENTITY_INSERT [dbo].[Miejsce] OFF 
GO