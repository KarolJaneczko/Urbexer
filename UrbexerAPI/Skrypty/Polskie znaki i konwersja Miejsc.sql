
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
  FROM [dbo].[TempMiejsca]

GO

SET IDENTITY_INSERT [dbo].[Miejsce] OFF 
GO