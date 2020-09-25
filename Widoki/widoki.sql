IF EXISTS (select * from dbo.sysobjects where id = object_id(N'PlecKategorie'))
BEGIN
        PRINT 'Bład! Widok PlecKategorie ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! Tworze Widok PlecKategorie'
exec sp_executesql N'CREATE VIEW PlecKategorie
AS
select kat.Nazwa, (case k.CzyKobieta when ''K'' then ''Kobieta'' else ''Menszczyzna'' end) as plec, count(k.IdKursanta) as liczba 
from 
Sprzedaz as s
join Kursanci as k 
on s.IdKursanta = k.IdKursanta
join Kategorie as kat 
on s.IdKategorii = kat.IdKategorii
group by kat.Nazwa, k.CzyKobieta
'
end
Go




IF EXISTS (select * from dbo.sysobjects where id = object_id(N'WidokSprzedaz'))
BEGIN
        PRINT 'Bład! Widok WidokSprzedaz ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! Tworze Widok WidokSprzedaz'
exec sp_executesql N'CREATE VIEW WidokSprzedaz
AS
Select s.IdSprzedazy, s.dataSprzdazy, k.Imie + '' '' + k.Nazwisko as Kursant, kat.Nazwa as nazwa_kat, 
			ISNULL(p.Nazwa,''Brak'') as nazwa_pak, 
			s.cenaSprzedazy, ms.Nazwa_miejsca, IleCzasuHJuz, r.Nazwa as StatusK, ISNULL(kat.LiczbaGodz,0) as katLiczbaGodz, ISNULL(p.LiczbaGodz, 0) as pakietLiczbaGodz  
			FROM
				Sprzedaz as s join Kursanci as k
				on s.IdKursanta = k.IdKursanta
				join Kategorie as kat 
				on s.IdKategorii = kat.IdKategorii
				left join Pakiet as p 
				on s.IdPakiet = p.IdPakiet
				join MiejsceSprzedazy as ms
				on s.IdMiejscaSprzedazy = ms.IdMiejsca
				join Realizacji as r
				on s.IdRealizacji = r.IdRealizacji
				Order BY s.IdSprzedazy DESC OFFSET 0 ROWS
'
end
Go






IF EXISTS (select * from dbo.sysobjects where id = object_id(N'WidokJazdy'))
BEGIN
        PRINT 'Bład! Widok WidokJazdy ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! Tworze Widok WidokJazdy'
exec sp_executesql N'CREATE VIEW WidokJazdy
AS
select j.IdJazd, k.Imie + '' '' + k.Nazwisko as dane_kursanta, p.Imie + '' '' + p.Nazwisko as dane_instruktora, s.Model + '' '' + s.Numer_rej as dane_samochodu, j.DataZajec, j.IleCzasuH  
			from Jazdy as j join Kursanci as k 
			on j.IdKursanta = k.IdKursanta 
			join Pracownicy as p 
			on j.IdPracownika = p.IdPracownika 
			join Samochody as s 
			on j.IdSamochodu = s.IdSamochodu 
			Order by j.IdJazd DESC OFFSET 0 ROWS
'
end
Go






/*select * from PlecKategorie*/

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'KategoreiLiczbaGodziWartoscSprzedazy'))
BEGIN
        PRINT 'Bład! Widok KategoreiLiczbaGodziWartoscSprzedazy ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! Tworze Widok KategoreiLiczbaGodziWartoscSprzedazy'
exec sp_executesql N'CREATE VIEW KategoreiLiczbaGodziWartoscSprzedazy
AS
Select k.Nazwa, sum(p.LiczbaGodz) as LiczbaSprzedanychGodz, sum(s.cenaSprzedazy) as WartoscSprzedazy
from
Sprzedaz as s join 
Kategorie as k 
on s.IdKategorii = k.IdKategorii join
Pakiet as p on
s.IdPakiet = p.IdPakiet
group by k.Nazwa 
'
end
Go

/*select * from KategoreiLiczbaGodziWartoscSprzedazy*/

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Miejsce_sprzedazy'))
BEGIN
        PRINT 'Bład! Widok Miejsce_sprzedazy ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! Tworze Widok Miejsce_sprzedazy'
exec sp_executesql N'CREATE VIEW Miejsce_sprzedazy
AS
SELECT m.Nazwa_miejsca, Count(s.IdSprzedazy) as IloscSprzedazyKursow
from
Sprzedaz as s join
MiejsceSprzedazy as m 
on s.IdMiejscaSprzedazy = m.IdMiejsca
group by m.Nazwa_miejsca
'
end
Go
/*SELECT * FROM Miejsce_sprzedazy*/

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Kategorie_sprzedaz'))
BEGIN
        PRINT 'Bład! Widok Kategorie_sprzedaz ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! Tworze Widok Kategorie_sprzedaz'
exec sp_executesql N'CREATE VIEW Kategorie_sprzedaz
AS
select k.Nazwa, count(s.IdSprzedazy) as IloscSprzedazyKursow
from
Sprzedaz as s join
Kategorie as k 
on s.IdKategorii = k.IdKategorii
group by k.Nazwa
'
end
Go
/*SELECT * FROM Kategorie_sprzedaz*/

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'IloscPluci'))
BEGIN
        PRINT 'Bład! Widok IloscPluci ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! Tworze Widok IloscPluci'
exec sp_executesql N'CREATE VIEW IloscPluci
AS
select Kursanci.CzyKobieta, count(Kursanci.IdKursanta) as Ilość
from 
Kursanci
group by Kursanci.CzyKobieta
'
end
Go

/*SELECT * FROM IloscPluci*/


IF EXISTS (select * from dbo.sysobjects where id = object_id(N'KategorieSumaSprzedazy'))
BEGIN
        PRINT 'Bład! Widok KategorieSumaSprzedazy ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! Tworze Widok KategorieSumaSprzedazy'
exec sp_executesql N'CREATE VIEW KategorieSumaSprzedazy
AS
Select kat.Nazwa, Sum(s.cenaSprzedazy) as SumaSprzedanychKursów, Count(s.IdSprzedazy) as IloścSprzedanych 
from 
Kursanci as k join 
Sprzedaz as s 
on k.IdKursanta = s.IdKursanta join 
Kategorie as kat 
on s.IdKategorii = kat.IdKategorii
group by kat.Nazwa
'
end
Go

/*SELECT * FROM KategorieSumaSprzedazy*/

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'SumaGodzinSamochodu'))
BEGIN
        PRINT 'Bład! Widok SumaGodzinSamochodu ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! Tworze Widok SumaGodzinSamochodu'
exec sp_executesql N'CREATE VIEW SumaGodzinSamochodu
AS
Select s.Marka, s.Model,s.Numer_rej, sum(j.IleCzasuHJuz) as SumaGodzinSamochodu
from 
Jazdy as j join
Samochody as s 
on j.IdSamochodu = s.IdSamochodu 
group by s.Marka, s.Model,s.Numer_rej
'end
Go
/*SELECT * FROM SumaGodzinSamochodu*/