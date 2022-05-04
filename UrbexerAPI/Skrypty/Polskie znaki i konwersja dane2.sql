
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
																				'\xf3', '�'),
																			'</p>', ''),
																		'\u0105', '�'),
																	'\u0107', '�'),
																'\u0119', '�'),
															'\u0142', '�'),
														'\u0144', '�'),
													'\u00f3', '�'),
												'\u015b', '�'),
											'\u017a', '�'),
										'\u017c', '�'),
									'\u0104', '�'),
								'\u0106', '�'),
							'\u0118', '�'),
						'\u0141', '�'),
					'\u0143', '�'),
				'\u00d3', '�'),
			'\u015a', '�'),
		'\u0179', '�'),
	  '\u017b', '�')
	  

	  as Opis
  FROM [dbo].[dane2]

GO

SET IDENTITY_INSERT [dbo].[Miejsce] OFF 
GO