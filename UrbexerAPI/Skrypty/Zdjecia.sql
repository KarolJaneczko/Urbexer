
DELETE FROM [dbo].[Zdjecie];
GO

INSERT INTO Zdjecie (MiejsceId, NumerKolejny, Rozmiar, Link, Wysokosc, Szerokosc )
SELECT
       [Id] as MiejsceId
      ,[media_nr] as NumerKolejny
	  ,CASE [size]  
         WHEN 'baza-wiedzy-featured-image' THEN 1  
         WHEN 'large' THEN 2
         WHEN 'places-list-thumb' THEN 3
         WHEN '2048x2048' THEN 4
         WHEN 'medium_large' THEN 5
         WHEN 'full' THEN 6
         WHEN 'mailpoet_newsletter_max' THEN 7
         WHEN 'medium' THEN 8
         WHEN '1536x1536' THEN 9
         WHEN 'thumbnail' THEN 10
      END as Rozmiar
	  ,[source_url] as Link
      ,[width] as Szerokosc
      ,[height] as Wysokosc
  FROM [dbo].[dane4]
  WHERE Exists (select 1 from Miejsce where Miejsce.id = dane4.id)

  select * from miejsce where not exists (select id from dane4 where Miejsce.id = dbo.dane4.id)

  select * from [dbo].[dane4] where not exists (select id from Miejsce where Miejsce.id = dbo.dane4.id)



  

--  select distinct size from dane4