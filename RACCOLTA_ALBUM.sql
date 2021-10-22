
--create database AlbumBand

create table Band (
IDBand int IDENTITY(1,1) constraint PK_IDBand primary key,
Nome nvarchar(20),
NumeroComponenti int NOT NULL,
);

create table Album (
IDAlbum int IDENTITY(1,1) constraint PK_IDAlbum primary key,
Titolo nvarchar(30),
AnnoNascita int not null,
CasaDiscografica nvarchar(20),
Genere nvarchar(10), constraint CHK_Genere check (Genere='Classico' or Genere='Jazz' or Genere='Pop' or Genere='Rock' or Genere='Metal'),
SupportoDistribuzione nvarchar(10), constraint CHK_SD check (SupportoDistribuzione='CD' or SupportoDistribuzione='Vinile' or SupportoDistribuzione='Streaming'),
IDBand int not null,
constraint FK_IDBand FOREIGN KEY (IDBand) REFERENCES Band(IDBand),
UNIQUE (Titolo, AnnoNascita, CasaDiscografica, Genere, SupportoDistribuzione),
);

create table Brano (
IDBrano int IDENTITY(1,1) constraint PK_IDBrano primary key,
Titolo nvarchar(30),
Durata int,
);

create table BranoAlbum (
IDAlbum int not null constraint FK_IDAlbum FOREIGN KEY REFERENCES Album(IDAlbum),
IDBrano int not null constraint FK_IDBrano FOREIGN KEY REFERENCES Brano(IDBrano),
constraint PK_BRANOALBUM PRIMARY KEY(IDAlbum,IDBrano),
);

--1) Scrivere una query che restituisca i titoli degli album degli “883” in ordine alfabetico;

insert Band values ('883',5);
insert Album values ('Il meglio 883',1980,'Cool Planet','Pop','CD',1);
insert Album values ('Remake',1981,'Cool Planet','Pop','CD',1);
insert Album values ('Ricordi degli 883',1988,'Cool Planet','Pop','CD',1);
insert Album values ('VivaAnni90',2000,'Cool Planet','Pop','CD',1);
insert Band values ('LunaPop',5);
insert Album values ('Remake Lunapop', 1999, 'Capitol Music', 'Pop','Vinile',2);
insert Album values ('Il meglio dei Lunapop', 2000, 'Capitol Music', 'Pop','Vinile',2);

select a.Titolo
from Album a join Band b on a.IDBand=b.IDBand
where b.Nome='883'
order by b.Nome

--2) Selezionare tutti gli album della casa discografica “Sony Music” relativi all’anno 2020;
insert Band values ('TokyoHotel',3);
insert Album values ('Il meglio TokyoHotel',2000,'Sony Music','Rock','CD',3);

insert Band values ('Celentano',2);
insert Album values ('Tecadisk',2000,'Sony Music','Classico','CD',4);

insert Band values ('De Andre',4);
insert Album values ('Lament of the Junkie',1970,'Sony Music','Classico','CD',5);

insert Band values ('Ezio Bosso',2);
insert Album values ('Grazie Claudio',2020,'Sony Music','Classico','CD',6);

insert Band values ('Jax',3);
insert Album values ('Reale',2020,'Sony Music','Classico','streaming',7);

select *
from Album a
where a.CasaDiscografica='Sony Music' AND a.AnnoNascita=2020

--3) Scrivere una query che restituisca tutti i titoli delle canzoni dei “Maneskin” 
--appartenenti ad album pubblicati prima del 2019;

insert Band values ('Maneskin',4);
insert Album values ('Chosen',2017,'Capitol Records','Rock','streaming',8);
insert Album values ('Il Ballo della Vita',2018,'Capitol Records','Rock','streaming',8);
insert Album values ('Teatro D''ira',2021,'Capitol Records','Rock','streaming',8);

insert Brano values ('Chosen',125);
insert Brano values ('Marlena',140);
insert Brano values ('Ballo delle incertezze',110)
insert Brano values ('Morirò da re',180);
insert Brano values ('Zitti e Buoni',200)


insert BranoAlbum values (12,1)
insert BranoAlbum values (12,4)
insert BranoAlbum values (13,2)
insert BranoAlbum values (13,3)
insert BranoAlbum values (14,5)

select br.Titolo
from Band b join Album a on b.IDBand=a.IDBand 
            join BranoAlbum ba on a.IDAlbum=ba.IDAlbum
			join Brano br on ba.IDBrano=br.IDBrano
where b.Nome='Maneskin' AND a.AnnoNascita<2019


--4) Individuare tutti gli album in cui è contenuta la canzone “Imagine”;
insert Brano values ('Imagine',130);
insert Band values ('Jon Lennon',1);
insert Album values ('Revival Jhon Lennon',1971,'Capitol Records','Classico','Vinile',9);
insert Album values ('Revival',1975,'Capitol Records','Classico','Vinile',9);
insert Album values ('History',1972,'Capitol Records','Classico','Vinile',9);
insert BranoAlbum values (15,6)
insert BranoAlbum values (16,6)
insert BranoAlbum values (17,6)

select a.*
from BranoAlbum ba join brano b on ba.IDBrano=b.IDBrano
                   join Album a on a.IDAlbum=ba.IDAlbum
where b.Titolo='Imagine'

--5)Restituire il numero totale di canzoni eseguite dalla band “The Giornalisti”;

insert Band values ('The Giornalisti',3);
insert Album values ('Love',2018,'Capitol Records','Pop','Streaming',10);
insert Brano values ('Completamente',130);
insert Brano values ('Vecchio',180);
insert Brano values ('FuoriCampo',210);
insert Brano values ('NewYork',150);
insert BranoAlbum values (18,7)
insert BranoAlbum values (18,8)
insert BranoAlbum values (18,9)
insert BranoAlbum values (18,10)

select *
from Band

select *
from Album

select b.Nome, count(br.IDBrano) as NumeroBrani
from Band b join Album a on b.IDBand=a.IDBand
            join BranoAlbum ba on a.IDAlbum=ba.IDAlbum
			join brano br on ba.IDBrano=br.IDBrano
where b.Nome='The Giornalisti'
group by b.Nome

--6)Contare per ogni album, la “durata totale” cioè la somma dei secondi dei suoi brani

select a.Titolo, sum(b.Durata)
from  Album a join BranoAlbum ba on a.IDAlbum=ba.IDAlbum
              join Brano b on b.IDBrano=ba.IDBrano
group by a.Titolo

--7) Mostrare i brani (distinti) degli “883” che durano più di 3 minuti (in alternativa usare i secondi quindi 180 s).
insert Brano values ('Come Mai',190);
insert Brano values ('NordSudOvestEst',140);
insert Brano values ('Hanno ucciso l''uomoragno',200)
insert Brano values ('Gli Anni',185);
insert Brano values ('Sei un mito',200)

select *
from Brano

insert BranoAlbum values (1,11)
insert BranoAlbum values (2,12)
insert BranoAlbum values (3,13)
insert BranoAlbum values (4,14)
insert BranoAlbum values (4,15)

select distinct br.Titolo
from Band b join Album a on b.IDBand=a.IDBand
            join BranoAlbum ba on a.IDAlbum=ba.IDAlbum
			join brano br on ba.IDBrano=br.IDBrano
where br.Durata>180 AND b.Nome='883'

--8) Mostrare tutte le Band il cui nome inizia per “M” e finisce per “n”.

insert Band values ('Money',1);

select b.Nome
from Band b
where Nome like 'M%' 
and Nome like '%n'

--9) Mostrare il titolo dell’Album e di fianco un’etichetta che stabilisce che si tratta di un Album:
--‘Very Old’ se il suo anno di uscita è precedente al 1980,
--‘New Entry’ se l’anno di uscita è il 2021,
--‘Recente’ se il suo anno di uscita è compreso tra il 2010 e 2020,
--‘Old’ altrimenti.

select a.Titolo,
CASE
WHEN a.AnnoNascita < 1980 THEN  'Very Old Album'
WHEN a.AnnoNascita =2021 THEN 'New Entry Album'
WHEN a.AnnoNascita between 2010 and 2020 THEN 'Recent Album'
ELSE 'Old'
END AS TipologiaAlbum
FROM Album a

--10) Mostrare i brani non contenuti in nessun album.
insert Brano values ('La regina delle celebrità',200)

select br.Titolo
from Brano br 
where br.Titolo not in (select br.Titolo
                        from Brano br join BranoAlbum ba on br.IDBrano=ba.IDBrano
                        join album a on a.IDAlbum=ba.IDAlbum)