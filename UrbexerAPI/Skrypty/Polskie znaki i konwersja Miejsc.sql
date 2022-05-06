
SET IDENTITY_INSERT [dbo].[Miejsce] ON 
GO

/****** Script for SelectTopNRows command from SSMS  ******/
Insert into Miejsce (Id, Nazwa, Miejsce_KategoriaId, Adres, WspolrzedneLAT, WspolrzedneLNG, DataDodania, Miasto,  WojewodztwoId, Opis)
SELECT TOP (100) [id]
      ,[Nazwa]
      ,[Miejsce_Kategoria] as Miejsce_KategoriaId
      ,[Adres]
      ,Convert(real, Replace([WspolrzedneLAT],',','.')) as WspolrzedneLAT
      ,Convert(real, Replace([WspolrzedneLNG],',','.')) as WspolrzedneLNG
      ,[DataDodania]
      ,[Miasto]
      ,[WojewodztwoId]
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
																									Replace([Opis], '<p>', ''),
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
  FROM [dbo].[TempMiejsca]

GO

SET IDENTITY_INSERT [dbo].[Miejsce] OFF 
GO