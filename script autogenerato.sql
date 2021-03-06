USE [AlbumBand]
GO
SET IDENTITY_INSERT [dbo].[Band] ON 

INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (1, N'883', 5)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (2, N'LunaPop', 5)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (3, N'TokyoHotel', 3)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (4, N'Celentano', 2)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (5, N'De Andre', 4)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (6, N'Ezio Bosso', 2)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (7, N'Jax', 3)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (8, N'Maneskin', 4)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (9, N'Jon Lennon', 1)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (10, N'The Giornalisti', 3)
INSERT [dbo].[Band] ([IDBand], [Nome], [NumeroComponenti]) VALUES (11, N'Money', 1)
SET IDENTITY_INSERT [dbo].[Band] OFF
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (1, N'Il meglio 883', 1980, N'Cool Planet', N'Pop', N'CD', 1)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (2, N'Remake', 1981, N'Cool Planet', N'Pop', N'CD', 1)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (3, N'Ricordi degli 883', 1988, N'Cool Planet', N'Pop', N'CD', 1)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (4, N'VivaAnni90', 2000, N'Cool Planet', N'Pop', N'CD', 1)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (5, N'Remake Lunapop', 1999, N'Capitol Music', N'Pop', N'Vinile', 2)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (6, N'Il meglio dei Lunapop', 2000, N'Capitol Music', N'Pop', N'Vinile', 2)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (7, N'Il meglio TokyoHotel', 2000, N'Sony Music', N'Rock', N'CD', 3)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (8, N'Tecadisk', 2000, N'Sony Music', N'Classico', N'CD', 4)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (9, N'Lament of the Junkie', 1970, N'Sony Music', N'Classico', N'CD', 5)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (10, N'Grazie Claudio', 2020, N'Sony Music', N'Classico', N'CD', 6)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (11, N'Reale', 2020, N'Sony Music', N'Classico', N'streaming', 7)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (12, N'Chosen', 2017, N'Capitol Records', N'Rock', N'streaming', 8)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (13, N'Il Ballo della Vita', 2018, N'Capitol Records', N'Rock', N'streaming', 8)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (14, N'Teatro D''ira', 2021, N'Capitol Records', N'Rock', N'streaming', 8)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (15, N'Revival Jhon Lennon', 1971, N'Capitol Records', N'Classico', N'Vinile', 9)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (16, N'Revival', 1975, N'Capitol Records', N'Classico', N'Vinile', 9)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (17, N'History', 1972, N'Capitol Records', N'Classico', N'Vinile', 9)
INSERT [dbo].[Album] ([IDAlbum], [Titolo], [AnnoNascita], [CasaDiscografica], [Genere], [SupportoDistribuzione], [IDBand]) VALUES (18, N'Love', 2018, N'Capitol Records', N'Pop', N'Streaming', 10)
SET IDENTITY_INSERT [dbo].[Album] OFF
GO
SET IDENTITY_INSERT [dbo].[Brano] ON 

INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (1, N'Chosen', 125)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (2, N'Marlena', 140)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (3, N'Ballo delle incertezze', 110)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (4, N'Morirò da re', 180)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (5, N'Zitti e Buoni', 200)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (6, N'Imagine', 130)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (7, N'Completamente', 130)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (8, N'Vecchio', 180)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (9, N'FuoriCampo', 210)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (10, N'NewYork', 150)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (11, N'Come Mai', 190)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (12, N'NordSudOvestEst', 140)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (13, N'Hanno ucciso l''uomoragno', 200)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (14, N'Gli Anni', 185)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (15, N'Sei un mito', 200)
INSERT [dbo].[Brano] ([IDBrano], [Titolo], [Durata]) VALUES (16, N'La regina delle celebrità', 200)
SET IDENTITY_INSERT [dbo].[Brano] OFF
GO
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (1, 11)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (2, 12)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (3, 13)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (4, 14)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (4, 15)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (12, 1)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (12, 4)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (13, 2)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (13, 3)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (14, 5)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (15, 6)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (16, 6)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (17, 6)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (18, 7)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (18, 8)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (18, 9)
INSERT [dbo].[BranoAlbum] ([IDAlbum], [IDBrano]) VALUES (18, 10)
GO
