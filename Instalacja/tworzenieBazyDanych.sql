create database Kursanci
go
use Kursanci
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Stanowiska'))
begin
Print 'Błąd - Tabela Stanowiska już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Stanowiska'
Create Table Stanowiska (
IdStanowiska int primary key identity(1,1),
NazwaStanowiska varchar(50) not null,
IdAktywnosci int not null, 
)
end
go
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Pracownicy'))
begin
Print 'Błąd - Tabela Pracownicy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Pracownicy'
Create Table Pracownicy (
IdPracownika int primary key identity(1,1),
IdStanowiska int not null,
Imie varchar(50)  not null,
Nazwisko varchar(50) not null,
Pesel varchar(11) not null,
CzyKobieta char(1) not null,
DataUrodzenia date,
DataZatrudnia date not null,
Telefon char(13),
IdAktywnosci int not null, 
)
end
go
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'LiczbaGodzPracownikow'))
begin
Print 'Błąd - Tabela LiczbaGodzPracownikow już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli LiczbaGodzPracownikow'
Create Table LiczbaGodzPracownikow (
IdLiczbaGodzPracownikow int primary key identity(1,1),
IdPracownika int not null,
Miesiac int not null,
Rok int not null,
IleGodz int not null,
IdAktywnosci int, 
)
end
go
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Samochody'))
begin
Print 'Błąd - Tabela Samochody już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Samochody'
Create Table Samochody (
IdSamochodu int primary key identity(1,1),
Marka varchar(50)  not null,
Model varchar(50)  not null,
Rok_produkcji int  not null,
Numer_rej varchar(50)  not null,
IdAktywnosci int not null, 
)
end
go
　
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Naprawy'))
begin
Print 'Błąd - Tabela Naprawy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Naprawy'
Create Table Naprawy (
IdNaprawy int primary key identity(1,1),
Nazwa_naprawy varchar(50) not null,
Cena decimal(6,2) not null,
Data date not null,
IdSamochodu int not null,
IdRealizacji int not null,
IdAktywnosci int not null, 
)
end
go
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Kursanci'))
begin
Print 'Błąd - Tabela Kursanci już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Kursanci'
Create Table Kursanci (
IdKursanta int primary key identity(1,1),
Imie varchar(50) not null,
Nazwisko varchar(50) not null,
Pesel varchar(11) not null,
CzyKobieta char(1) not null,
DataUrodzenia date,
IdAktywnosci int not null, 
)
end
go
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Pakiet'))
begin
Print 'Błąd - Tabela Pakiet już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Pakiet'
Create Table Pakiet (
IdPakiet int primary key identity(1,1),
Nazwa varchar(50) not null,
LiczbaGodz int not null,
IdAktywnosci int not null,
)
end
go
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Kategorie'))
begin
Print 'Błąd - Tabela Kategorie już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Kategorie'
Create Table Kategorie (
IdKategorii int primary key identity(1,1),
Nazwa varchar(50) not null,
LiczbaGodz int not null,
IdAktywnosci int not null,
)
end
go
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'MiejsceSprzedazy'))
begin
Print 'Błąd - Tabela MiejsceSprzedazy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli MiejsceSprzedazy'
Create Table MiejsceSprzedazy (
IdMiejsca int primary key identity(1,1),
Nazwa_miejsca varchar(50) not null,
IdAktywnosci int not null,
)
end 
go
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Sprzedaz'))
begin
Print 'Błąd - Tabela Sprzedazy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Sprzedazy'
Create Table Sprzedaz (
IdSprzedazy int primary key identity(1,1),
dataSprzdazy date ,
IdKursanta int not null,
IdKategorii int,
IdPakiet int NULL,
cenaSprzedazy decimal(6,2) ,
IdMiejscaSprzedazy int not null,
IleCzasuHJuz int,
IdRealizacji int not null,
IdAktywnosci int not null,
)
end
go

　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Jazdy'))
begin
Print 'Błąd - Tabela Jazdy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Jazdy'
Create Table Jazdy (
IdJazd int primary key identity(1,1),
IdSprzedazy int not null,
IdKursanta int not null,
IdPracownika int not null,
IdSamochodu int not null,
IleCzasuH int not null,
DataZajec date not null,
IdRealizacji int not null,
IdAktywnosci int not null,
)
end
go

 
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Aktywnosci'))
begin
Print 'Błąd - Tabela Aktywnosci już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Aktywnosci'
Create Table Aktywnosci (
IdAktywnosci int primary key identity(1,1),
Nazwa varchar(50) not null,
)
end
go

--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Realizacji'))
begin
Print 'Błąd - Tabela Realizacji już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Realizacji'
Create Table Realizacji (
IdRealizacji int primary key identity(1,1),
Nazwa varchar(50) not null,
)
end
go
　

　
/*################################################
POWIAZANIA
################################################*/
IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Naprawy_Samochody'))
begin
print 'Sukces! Dodaje powiazania Gch_Naprawy_Samochody do bazy danych'
Alter table Naprawy add
Constraint[Gch_Naprawy_Samochody]Foreign Key
(IdSamochodu) References Samochody(IdSamochodu)
end
else
print 'Uwaga powiazanie Gch_Naprawy_Samochody juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_MiejsceSprzedazy'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_MiejsceSprzedazy do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_MiejsceSprzedazy]Foreign Key
(IdMiejscaSprzedazy) References MiejsceSprzedazy(IdMiejsca)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_MiejsceSprzedazy juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Kategorie'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Kategorie do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Kategorie]Foreign Key
(IdKategorii) References Kategorie(IdKategorii)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Kategorie juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Pakiet'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Pakiet do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Pakiet]Foreign Key
(IdPakiet) References Pakiet(IdPakiet)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Pakiet juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Kursanci'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Kursanci do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Kursanci]Foreign Key
(IdKursanta) References Kursanci(IdKursanta)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Kursanci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Aktywnosci do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Aktywnosci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Realizacji '))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Realizacji  do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Realizacji ]Foreign Key
(IdRealizacji ) References Realizacji(IdRealizacji)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Realizacji  juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Pracownik_Satnowisko'))
begin
print 'Sukces! Dodaje powiazania Gch_Pracownik_Satnowisko do bazy danych'
Alter table Pracownicy add
Constraint[Gch_Pracownik_Satnowisko]Foreign Key
(IdStanowiska) References Stanowiska(IdStanowiska)
end
else
print 'Uwaga powiazanie Gch_Pracownik_Satnowisko juz istnieje'
go



IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Kursant'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Kursant do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Kursant]Foreign Key
(IdKursanta) References Kursanci(IdKursanta)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Kursant juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Pracownicy'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Pracownicy do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Pracownicy]Foreign Key
(IdPracownika) References Pracownicy(IdPracownika)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Pracownicy juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Sprzedaz'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Sprzedaz do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Sprzedaz]Foreign Key
(IdSprzedazy) References Sprzedaz(IdSprzedazy)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Sprzedaz juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Aktywnosci do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Aktywnosci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Realizacja'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Realizacja do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Realizacja]Foreign Key
(IdRealizacji) References Realizacji(IdRealizacji)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Realizacja juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Kategorie_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Kategorie_Aktywnosci do bazy danych'
Alter table Kategorie add
Constraint[Gch_Kategorie_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Kategorie_Aktywnosci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Kursanci_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Kursanci_Aktywnosci do bazy danych'
Alter table Kursanci add
Constraint[Gch_Kursanci_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Kursancia_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_MiejsceSprzedazy_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_MiejsceSprzedazy_Aktywnosci do bazy danych'
Alter table MiejsceSprzedazy add
Constraint[Gch_MiejsceSprzedazy_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_MiejsceSprzedazy_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Pakiet_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Pakiet_Aktywnosci do bazy danych'
Alter table Pakiet add
Constraint[Gch_Pakiet_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Pakiety_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Pracownicy_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Pracownicy_Aktywnosci do bazy danych'
Alter table Pracownicy add
Constraint[Gch_Pracownicy_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Pracownicy_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Samochody_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Samochody_Aktywnosci do bazy danych'
Alter table Samochody add
Constraint[Gch_Samochody_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Samochody_Aktywnosci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Stanowiska_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Stanowiska_Aktywnosci do bazy danych'
Alter table Stanowiska add
Constraint[Gch_Stanowiska_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Stanowiska_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Naprawy_Realizacji'))
begin
print 'Sukces! Dodaje powiazania Gch_Naprawy_Realizacji do bazy danych'
Alter table Naprawy add
Constraint[Gch_Naprawy_Realizacji]Foreign Key
(IdRealizacji) References Realizacji(IdRealizacji)
end
else
print 'Uwaga powiazanie Gch_Naprawy_Realizacji juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Naprawy_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Naprawy_Aktywnosci do bazy danych'
Alter table Naprawy add
Constraint[Gch_Naprawy_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Naprawy_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_LiczbaGodzPracownikow_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_LiczbaGodzPracownikow_Aktywnosci do bazy danych'
Alter table LiczbaGodzPracownikow add
Constraint[Gch_LiczbaGodzPracownikow_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_LiczbaGodzPracownikow_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_LiczbaGodzPracownikow_Pracownicy'))
begin
print 'Sukces! Dodaje powiazania Gch_LiczbaGodzPracownikow_Pracownicy do bazy danych'
Alter table LiczbaGodzPracownikow add
Constraint[Gch_LiczbaGodzPracownikow_Pracownicy]Foreign Key
(IdPracownika) References Pracownicy(IdPracownika)
end
else
print 'Uwaga powiazanie Gch_LiczbaGodzPracownikow_Pracownicy juz istnieje'
go







/*##########################################################
		Ograniczenia
############################################################*/
Alter table Jazdy add
CHECK (IleCzasuH IN (0,2,4,6))

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Plec'))
BEGIN
        PRINT 'Bład! ROLA Plec ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! TWORZE Plec'
exec sp_executesql N'CREATE RULE Plec as @X IN (''K'',''M'')'
print 'Dowiazanie roli do tabel'
EXEC SP_BINDRULE Plec,'Pracownicy.CzyKobieta'
EXEC SP_BINDRULE Plec,'Kursanci.CzyKobieta'
END
GO


/*Default (wartość domyślna)*/
IF EXISTS (select * from dbo.sysobjects where id = object_id(N'BRAK_Tel'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje BRAK_Tel '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna BRAK_Tel dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT BRAK_Tel AS ''Brak telefonu'' '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT BRAK_Tel,'Pracownicy.Telefon'
END
GO

/*Default (wartość domyślna)*/
/*Default (wartość domyślna)*/
IF EXISTS (select * from dbo.sysobjects where id = object_id(N'IleCzasuH'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje IleCzasuH '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna IleCzasuH dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT IleCzasuH AS 2 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT IleCzasuH,'Jazdy.IleCzasuH'
END
GO


/*Default (wartość domyślna)*/
IF EXISTS (select * from dbo.sysobjects where id = object_id(N'JazdyIleCzasuJUZ'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje JazdyIleCzasuJUZ '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna JazdyIleCzasuJUZ dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT JazdyIleCzasuJUZ AS 0 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT JazdyIleCzasuJUZ,'Sprzedaz.IleCzasuHJuz'
END
GO



IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Status_realizacji_Jazdy'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje Status_realizacji_Jazdy '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna Status_realizacji_Jazdy dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT Status_realizacji_Jazdy AS 3 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT Status_realizacji_Jazdy,'Jazdy.IdRealizacji'
END
GO

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Status_realizacji_naprawy'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje Status_realizacji_naprawy '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna Status_realizacji_naprawy dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT Status_realizacji_naprawy AS 3 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT Status_realizacji_naprawy,'Jazdy.IdRealizacji'
END
GO


IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Status_realizacji'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje Status_realizacji '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna Status_realizacji dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT Status_realizacji AS 1 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT Status_realizacji,'Sprzedaz.IdRealizacji'
END
GO

/*Default (wartość domyślna)*/
IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Status_Aktywnosci_Aktywny'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje Status_Aktywnosci_Aktywny '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna Status_Aktywnosci_Aktywny dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT Status_Aktywnosci_Aktywny AS ''1'' '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Stanowiska.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'LiczbaGodzPracownikow.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Pracownicy.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Jazdy.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Samochody.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Naprawy.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Kursanci.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Pakiet.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Sprzedaz.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Kategorie.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'MiejsceSprzedazy.IdAktywnosci'
END
GO


/*###############################
			TRIGERY
###############################*/
Create Trigger Update_Status_Update_IleCzasuHJuz on Jazdy
after Insert
as
begin 
Declare @idKursanta int;
Declare @idSprzedazy int;
Declare @DataZajec date;
Declare @Status varchar(50);
Declare @Godz int;
Declare @GodzKursu int;

Select @idKursanta = jazdy.idKursanta from inserted Jazdy;
Select @idSprzedazy = jazdy.IdSprzedazy from inserted Jazdy;
Select @DataZajec = jazdy.DataZajec from inserted Jazdy;
Select @Godz =  SUM(Jazdy.IleCzasuH) from Jazdy where IdKursanta = @idKursanta and IdSprzedazy = @idSprzedazy;
Select @GodzKursu = Sum( ISNULL(p.LiczbaGodz, 0 ) + ISNULL(k.LiczbaGodz, 0 ) ) from Sprzedaz as s left join Pakiet as p 
on s.IdPakiet = p.IdPakiet left join Kategorie as k on s.IdKategorii = k.IdKategorii where s.IdSprzedazy = @idSprzedazy;
if @Godz < @GodzKursu
    Select @Status = 2
if @Godz = @GodzKursu
    Select @Status = 3;
if @Godz > @GodzKursu
    Select @Status = 4;
Update Sprzedaz 
SET IdRealizacji = @Status, IleCzasuHJuz = @Godz
Where IdKursanta = @idKursanta and IdSprzedazy = @idSprzedazy
end 
go

/*
('Czeka na realizacje'),
('W trakcie realizacji'),
('Zrealizowano'),
('Przekroczył Liczbę Godz Kursu'),
*/


Create Trigger Godziny_Pracownikow on Jazdy
after Insert
as
begin
Declare @idPracownika int;
Declare @DataMiesiac int;
Declare @DataRok int;
Declare @GodzPracy int;
Declare @idPracownikaTab int;
Declare @RokTab int;
Declare @MiesiacTab int;
Declare @IdTab int;
Select @idPracownika = jazdy.idPracownika from inserted Jazdy;
SELECT TOP 1 @DataMiesiac = MONTH(Jazdy.DataZajec) 
from jazdy join Pracownicy on Jazdy.IdPracownika = Pracownicy.IdPracownika
where Pracownicy.IdPracownika = @idPracownika
ORDER BY Jazdy.IdJazd DESC
Select @DataRok = YEAR(Jazdy.DataZajec) from jazdy join Pracownicy on Jazdy.IdPracownika = Pracownicy.IdPracownika
where Pracownicy.IdPracownika = @idPracownika;
Select @GodzPracy = sum(Jazdy.IleCzasuH) from Sprzedaz join  Jazdy on Sprzedaz.IdKursanta = Jazdy.IdKursanta 
join Pracownicy on jazdy.IdPracownika = Pracownicy.IdPracownika
where Pracownicy.IdPracownika = @idPracownika And MONTH(Jazdy.DataZajec) = @DataMiesiac And YEAR(Jazdy.DataZajec) = @DataRok;
select @idPracownikaTab = LiczbaGodzPracownikow.IdPracownika
from LiczbaGodzPracownikow where LiczbaGodzPracownikow.IdPracownika = @idPracownika;
select @RokTab = LiczbaGodzPracownikow.Rok
from LiczbaGodzPracownikow where LiczbaGodzPracownikow.IdPracownika = @idPracownika;
select @MiesiacTab = LiczbaGodzPracownikow.Miesiac
from LiczbaGodzPracownikow where LiczbaGodzPracownikow.IdPracownika = @idPracownika 
And LiczbaGodzPracownikow.Rok = @RokTab ;
select @IdTab = LiczbaGodzPracownikow.IdLiczbaGodzPracownikow
from LiczbaGodzPracownikow where LiczbaGodzPracownikow.IdPracownika = @idPracownika 
And LiczbaGodzPracownikow.Rok = @RokTab ;

if @idPracownikaTab > 0
        begin
                if @RokTab != @DataRok 
                        begin
                                Insert into LiczbaGodzPracownikow(IdPracownika,IleGodz,Miesiac, Rok)
                                values(@idPracownika,@GodzPracy,@DataMiesiac,@DataRok)
                        end
                else
                        begin
                                if @MiesiacTab != @DataMiesiac
                                        begin
                                                Insert into LiczbaGodzPracownikow(IdPracownika,IleGodz,Miesiac, Rok)
                                                values(@idPracownika,@GodzPracy,@DataMiesiac,@DataRok)
                                        end
                                else
                                        begin
                                               Update LiczbaGodzPracownikow
                                                SET IdPracownika = @idPracownika, IleGodz = @GodzPracy, Rok = @DataRok , Miesiac = @DataMiesiac
                                                Where IdPracownika = @idPracownika and Rok = @DataRok and Miesiac = @DataMiesiac
                                                and IdLiczbaGodzPracownikow = @IdTab 
                                        end 

                        end
        end
else
        begin
                Insert into LiczbaGodzPracownikow(IdPracownika,IleGodz,Miesiac, Rok)
                values(@idPracownika,@GodzPracy,@DataMiesiac,@DataRok)
        end

end


go


create database Kursanci
go
use Kursanci
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Stanowiska'))
begin
Print 'Błąd - Tabela Stanowiska już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Stanowiska'
Create Table Stanowiska (
IdStanowiska int primary key identity(1,1),
NazwaStanowiska varchar(50) not null,
IdAktywnosci int not null, 
)
end
go
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Pracownicy'))
begin
Print 'Błąd - Tabela Pracownicy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Pracownicy'
Create Table Pracownicy (
IdPracownika int primary key identity(1,1),
IdStanowiska int not null,
Imie varchar(50)  not null,
Nazwisko varchar(50) not null,
Pesel varchar(11) not null,
CzyKobieta char(1) not null,
DataUrodzenia date,
DataZatrudnia date not null,
Telefon char(13),
IdAktywnosci int not null, 
)
end
go
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'LiczbaGodzPracownikow'))
begin
Print 'Błąd - Tabela LiczbaGodzPracownikow już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli LiczbaGodzPracownikow'
Create Table LiczbaGodzPracownikow (
IdLiczbaGodzPracownikow int primary key identity(1,1),
IdPracownika int not null,
Miesiac int not null,
Rok int not null,
IleGodz int not null,
IdAktywnosci int, 
)
end
go
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Samochody'))
begin
Print 'Błąd - Tabela Samochody już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Samochody'
Create Table Samochody (
IdSamochodu int primary key identity(1,1),
Marka varchar(50)  not null,
Model varchar(50)  not null,
Rok_produkcji int  not null,
Numer_rej varchar(50)  not null,
IdAktywnosci int not null, 
)
end
go
　
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Naprawy'))
begin
Print 'Błąd - Tabela Naprawy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Naprawy'
Create Table Naprawy (
IdNaprawy int primary key identity(1,1),
Nazwa_naprawy varchar(50) not null,
Cena decimal(6,2) not null,
Data date not null,
IdSamochodu int not null,
IdRealizacji int not null,
IdAktywnosci int not null, 
)
end
go
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Kursanci'))
begin
Print 'Błąd - Tabela Kursanci już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Kursanci'
Create Table Kursanci (
IdKursanta int primary key identity(1,1),
Imie varchar(50) not null,
Nazwisko varchar(50) not null,
Pesel varchar(11) not null,
CzyKobieta char(1) not null,
DataUrodzenia date,
IdAktywnosci int not null, 
)
end
go
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Pakiet'))
begin
Print 'Błąd - Tabela Pakiet już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Pakiet'
Create Table Pakiet (
IdPakiet int primary key identity(1,1),
Nazwa varchar(50) not null,
LiczbaGodz int not null,
IdAktywnosci int not null,
)
end
go
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Kategorie'))
begin
Print 'Błąd - Tabela Kategorie już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Kategorie'
Create Table Kategorie (
IdKategorii int primary key identity(1,1),
Nazwa varchar(50) not null,
LiczbaGodz int not null,
IdAktywnosci int not null,
)
end
go
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'MiejsceSprzedazy'))
begin
Print 'Błąd - Tabela MiejsceSprzedazy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli MiejsceSprzedazy'
Create Table MiejsceSprzedazy (
IdMiejsca int primary key identity(1,1),
Nazwa_miejsca varchar(50) not null,
IdAktywnosci int not null,
)
end 
go
　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Sprzedaz'))
begin
Print 'Błąd - Tabela Sprzedazy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Sprzedazy'
Create Table Sprzedaz (
IdSprzedazy int primary key identity(1,1),
dataSprzdazy date ,
IdKursanta int not null,
IdKategorii int,
IdPakiet int NULL,
cenaSprzedazy decimal(6,2) ,
IdMiejscaSprzedazy int not null,
IleCzasuHJuz int,
IdRealizacji int not null,
IdAktywnosci int not null,
)
end
go

　
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Jazdy'))
begin
Print 'Błąd - Tabela Jazdy już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Jazdy'
Create Table Jazdy (
IdJazd int primary key identity(1,1),
IdSprzedazy int not null,
IdKursanta int not null,
IdPracownika int not null,
IdSamochodu int not null,
IleCzasuH int not null,
DataZajec date not null,
IdRealizacji int not null,
IdAktywnosci int not null,
)
end
go

 
--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Aktywnosci'))
begin
Print 'Błąd - Tabela Aktywnosci już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Aktywnosci'
Create Table Aktywnosci (
IdAktywnosci int primary key identity(1,1),
Nazwa varchar(50) not null,
)
end
go

--Sprawdzenie czy tabela istnieje
if exists( select * from dbo.sysobjects where id = object_id(N'Realizacji'))
begin
Print 'Błąd - Tabela Realizacji już istnieje'
end
else
begin
Print 'Sukces! Tworzenie tabeli Realizacji'
Create Table Realizacji (
IdRealizacji int primary key identity(1,1),
Nazwa varchar(50) not null,
)
end
go
　

　
/*################################################
POWIAZANIA
################################################*/
IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Naprawy_Samochody'))
begin
print 'Sukces! Dodaje powiazania Gch_Naprawy_Samochody do bazy danych'
Alter table Naprawy add
Constraint[Gch_Naprawy_Samochody]Foreign Key
(IdSamochodu) References Samochody(IdSamochodu)
end
else
print 'Uwaga powiazanie Gch_Naprawy_Samochody juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_MiejsceSprzedazy'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_MiejsceSprzedazy do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_MiejsceSprzedazy]Foreign Key
(IdMiejscaSprzedazy) References MiejsceSprzedazy(IdMiejsca)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_MiejsceSprzedazy juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Kategorie'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Kategorie do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Kategorie]Foreign Key
(IdKategorii) References Kategorie(IdKategorii)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Kategorie juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Pakiet'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Pakiet do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Pakiet]Foreign Key
(IdPakiet) References Pakiet(IdPakiet)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Pakiet juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Kursanci'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Kursanci do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Kursanci]Foreign Key
(IdKursanta) References Kursanci(IdKursanta)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Kursanci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Aktywnosci do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Aktywnosci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Sprzedaz_Realizacji '))
begin
print 'Sukces! Dodaje powiazania Gch_Sprzedaz_Realizacji  do bazy danych'
Alter table Sprzedaz add
Constraint[Gch_Sprzedaz_Realizacji ]Foreign Key
(IdRealizacji ) References Realizacji(IdRealizacji)
end
else
print 'Uwaga powiazanie Gch_Sprzedaz_Realizacji  juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Pracownik_Satnowisko'))
begin
print 'Sukces! Dodaje powiazania Gch_Pracownik_Satnowisko do bazy danych'
Alter table Pracownicy add
Constraint[Gch_Pracownik_Satnowisko]Foreign Key
(IdStanowiska) References Stanowiska(IdStanowiska)
end
else
print 'Uwaga powiazanie Gch_Pracownik_Satnowisko juz istnieje'
go



IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Kursant'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Kursant do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Kursant]Foreign Key
(IdKursanta) References Kursanci(IdKursanta)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Kursant juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Pracownicy'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Pracownicy do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Pracownicy]Foreign Key
(IdPracownika) References Pracownicy(IdPracownika)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Pracownicy juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Sprzedaz'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Sprzedaz do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Sprzedaz]Foreign Key
(IdSprzedazy) References Sprzedaz(IdSprzedazy)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Sprzedaz juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Aktywnosci do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Aktywnosci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Jazdy_Realizacja'))
begin
print 'Sukces! Dodaje powiazania Gch_Jazdy_Realizacja do bazy danych'
Alter table Jazdy add
Constraint[Gch_Jazdy_Realizacja]Foreign Key
(IdRealizacji) References Realizacji(IdRealizacji)
end
else
print 'Uwaga powiazanie Gch_Jazdy_Realizacja juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Kategorie_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Kategorie_Aktywnosci do bazy danych'
Alter table Kategorie add
Constraint[Gch_Kategorie_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Kategorie_Aktywnosci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Kursanci_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Kursanci_Aktywnosci do bazy danych'
Alter table Kursanci add
Constraint[Gch_Kursanci_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Kursancia_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_MiejsceSprzedazy_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_MiejsceSprzedazy_Aktywnosci do bazy danych'
Alter table MiejsceSprzedazy add
Constraint[Gch_MiejsceSprzedazy_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_MiejsceSprzedazy_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Pakiet_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Pakiet_Aktywnosci do bazy danych'
Alter table Pakiet add
Constraint[Gch_Pakiet_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Pakiety_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Pracownicy_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Pracownicy_Aktywnosci do bazy danych'
Alter table Pracownicy add
Constraint[Gch_Pracownicy_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Pracownicy_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Samochody_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Samochody_Aktywnosci do bazy danych'
Alter table Samochody add
Constraint[Gch_Samochody_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Samochody_Aktywnosci juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Stanowiska_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Stanowiska_Aktywnosci do bazy danych'
Alter table Stanowiska add
Constraint[Gch_Stanowiska_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Stanowiska_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Naprawy_Realizacji'))
begin
print 'Sukces! Dodaje powiazania Gch_Naprawy_Realizacji do bazy danych'
Alter table Naprawy add
Constraint[Gch_Naprawy_Realizacji]Foreign Key
(IdRealizacji) References Realizacji(IdRealizacji)
end
else
print 'Uwaga powiazanie Gch_Naprawy_Realizacji juz istnieje'
go

IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_Naprawy_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_Naprawy_Aktywnosci do bazy danych'
Alter table Naprawy add
Constraint[Gch_Naprawy_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_Naprawy_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_LiczbaGodzPracownikow_Aktywnosci'))
begin
print 'Sukces! Dodaje powiazania Gch_LiczbaGodzPracownikow_Aktywnosci do bazy danych'
Alter table LiczbaGodzPracownikow add
Constraint[Gch_LiczbaGodzPracownikow_Aktywnosci]Foreign Key
(IdAktywnosci) References Aktywnosci(IdAktywnosci)
end
else
print 'Uwaga powiazanie Gch_LiczbaGodzPracownikow_Aktywnosci juz istnieje'
go


IF not exists (select * from dbo.sysobjects where id = object_id(N'Gch_LiczbaGodzPracownikow_Pracownicy'))
begin
print 'Sukces! Dodaje powiazania Gch_LiczbaGodzPracownikow_Pracownicy do bazy danych'
Alter table LiczbaGodzPracownikow add
Constraint[Gch_LiczbaGodzPracownikow_Pracownicy]Foreign Key
(IdPracownika) References Pracownicy(IdPracownika)
end
else
print 'Uwaga powiazanie Gch_LiczbaGodzPracownikow_Pracownicy juz istnieje'
go







/*##########################################################
		Ograniczenia
############################################################*/
Alter table Jazdy add
CHECK (IleCzasuH IN (0,2,4,6))

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Plec'))
BEGIN
        PRINT 'Bład! ROLA Plec ISNIEJE '
END
ELSE
BEGIN
        PRINT 'Sukces! TWORZE Plec'
exec sp_executesql N'CREATE RULE Plec as @X IN (''K'',''M'')'
print 'Dowiazanie roli do tabel'
EXEC SP_BINDRULE Plec,'Pracownicy.CzyKobieta'
EXEC SP_BINDRULE Plec,'Kursanci.CzyKobieta'
END
GO


/*Default (wartość domyślna)*/
IF EXISTS (select * from dbo.sysobjects where id = object_id(N'BRAK_Tel'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje BRAK_Tel '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna BRAK_Tel dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT BRAK_Tel AS ''Brak telefonu'' '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT BRAK_Tel,'Pracownicy.Telefon'
END
GO

/*Default (wartość domyślna)*/
/*Default (wartość domyślna)*/
IF EXISTS (select * from dbo.sysobjects where id = object_id(N'IleCzasuH'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje IleCzasuH '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna IleCzasuH dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT IleCzasuH AS 2 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT IleCzasuH,'Jazdy.IleCzasuH'
END
GO


/*Default (wartość domyślna)*/
IF EXISTS (select * from dbo.sysobjects where id = object_id(N'JazdyIleCzasuJUZ'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje JazdyIleCzasuJUZ '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna JazdyIleCzasuJUZ dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT JazdyIleCzasuJUZ AS 0 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT JazdyIleCzasuJUZ,'Sprzedaz.IleCzasuHJuz'
END
GO



IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Status_realizacji_Jazdy'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje Status_realizacji_Jazdy '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna Status_realizacji_Jazdy dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT Status_realizacji_Jazdy AS 3 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT Status_realizacji_Jazdy,'Jazdy.IdRealizacji'
END
GO

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Status_realizacji_naprawy'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje Status_realizacji_naprawy '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna Status_realizacji_naprawy dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT Status_realizacji_naprawy AS 3 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT Status_realizacji_naprawy,'Jazdy.IdRealizacji'
END
GO


IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Status_realizacji'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje Status_realizacji '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna Status_realizacji dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT Status_realizacji AS 1 '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT Status_realizacji,'Sprzedaz.IdRealizacji'
END
GO

/*Default (wartość domyślna)*/
IF EXISTS (select * from dbo.sysobjects where id = object_id(N'Status_Aktywnosci_Aktywny'))
BEGIN
        PRINT 'Bład! Zmienna dobyslna już istnieje Status_Aktywnosci_Aktywny '
END
ELSE
BEGIN
        PRINT 'Sukces! Zmienna dobyslna Status_Aktywnosci_Aktywny dodana poprawnie'
exec sp_executesql N'CREATE DEFAULT Status_Aktywnosci_Aktywny AS ''1'' '
print 'Dowiazanie zmiennej domyslnej do tabeli i kolumny'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Stanowiska.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'LiczbaGodzPracownikow.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Pracownicy.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Jazdy.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Samochody.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Naprawy.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Kursanci.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Pakiet.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Sprzedaz.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'Kategorie.IdAktywnosci'
EXEC SP_BINDEFAULT Status_Aktywnosci_Aktywny,'MiejsceSprzedazy.IdAktywnosci'
END
GO


/*###############################
			TRIGERY
###############################*/
Create Trigger Update_Status_Update_IleCzasuHJuz on Jazdy
after Insert
as
begin 
Declare @idKursanta int;
Declare @idSprzedazy int;
Declare @DataZajec date;
Declare @Status varchar(50);
Declare @Godz int;
Declare @GodzKursu int;

Select @idKursanta = jazdy.idKursanta from inserted Jazdy;
Select @idSprzedazy = jazdy.IdSprzedazy from inserted Jazdy;
Select @DataZajec = jazdy.DataZajec from inserted Jazdy;
Select @Godz =  SUM(Jazdy.IleCzasuH) from Jazdy where IdKursanta = @idKursanta and IdSprzedazy = @idSprzedazy;
Select @GodzKursu = Sum( ISNULL(p.LiczbaGodz, 0 ) + ISNULL(k.LiczbaGodz, 0 ) ) from Sprzedaz as s left join Pakiet as p 
on s.IdPakiet = p.IdPakiet left join Kategorie as k on s.IdKategorii = k.IdKategorii where s.IdSprzedazy = @idSprzedazy;
if @Godz < @GodzKursu
    Select @Status = 2
if @Godz = @GodzKursu
    Select @Status = 3;
if @Godz > @GodzKursu
    Select @Status = 4;
Update Sprzedaz 
SET IdRealizacji = @Status, IleCzasuHJuz = @Godz
Where IdKursanta = @idKursanta and IdSprzedazy = @idSprzedazy
end 
go

/*
('Czeka na realizacje'),
('W trakcie realizacji'),
('Zrealizowano'),
('Przekroczył Liczbę Godz Kursu'),
*/


Create Trigger Godziny_Pracownikow on Jazdy
after Insert
as
begin
Declare @idPracownika int;
Declare @DataMiesiac int;
Declare @DataRok int;
Declare @GodzPracy int;
Declare @idPracownikaTab int;
Declare @RokTab int;
Declare @MiesiacTab int;
Declare @IdTab int;
Select @idPracownika = jazdy.idPracownika from inserted Jazdy;
SELECT TOP 1 @DataMiesiac = MONTH(Jazdy.DataZajec) 
from jazdy join Pracownicy on Jazdy.IdPracownika = Pracownicy.IdPracownika
where Pracownicy.IdPracownika = @idPracownika
ORDER BY Jazdy.IdJazd DESC
Select @DataRok = YEAR(Jazdy.DataZajec) from jazdy join Pracownicy on Jazdy.IdPracownika = Pracownicy.IdPracownika
where Pracownicy.IdPracownika = @idPracownika;
Select @GodzPracy = sum(Jazdy.IleCzasuH) from Sprzedaz join  Jazdy on Sprzedaz.IdKursanta = Jazdy.IdKursanta 
join Pracownicy on jazdy.IdPracownika = Pracownicy.IdPracownika
where Pracownicy.IdPracownika = @idPracownika And MONTH(Jazdy.DataZajec) = @DataMiesiac And YEAR(Jazdy.DataZajec) = @DataRok;
select @idPracownikaTab = LiczbaGodzPracownikow.IdPracownika
from LiczbaGodzPracownikow where LiczbaGodzPracownikow.IdPracownika = @idPracownika;
select @RokTab = LiczbaGodzPracownikow.Rok
from LiczbaGodzPracownikow where LiczbaGodzPracownikow.IdPracownika = @idPracownika;
select @MiesiacTab = LiczbaGodzPracownikow.Miesiac
from LiczbaGodzPracownikow where LiczbaGodzPracownikow.IdPracownika = @idPracownika 
And LiczbaGodzPracownikow.Rok = @RokTab ;
select @IdTab = LiczbaGodzPracownikow.IdLiczbaGodzPracownikow
from LiczbaGodzPracownikow where LiczbaGodzPracownikow.IdPracownika = @idPracownika 
And LiczbaGodzPracownikow.Rok = @RokTab ;

if @idPracownikaTab > 0
        begin
                if @RokTab != @DataRok 
                        begin
                                Insert into LiczbaGodzPracownikow(IdPracownika,IleGodz,Miesiac, Rok)
                                values(@idPracownika,@GodzPracy,@DataMiesiac,@DataRok)
                        end
                else
                        begin
                                if @MiesiacTab != @DataMiesiac
                                        begin
                                                Insert into LiczbaGodzPracownikow(IdPracownika,IleGodz,Miesiac, Rok)
                                                values(@idPracownika,@GodzPracy,@DataMiesiac,@DataRok)
                                        end
                                else
                                        begin
                                               Update LiczbaGodzPracownikow
                                                SET IdPracownika = @idPracownika, IleGodz = @GodzPracy, Rok = @DataRok , Miesiac = @DataMiesiac
                                                Where IdPracownika = @idPracownika and Rok = @DataRok and Miesiac = @DataMiesiac
                                                and IdLiczbaGodzPracownikow = @IdTab 
                                        end 

                        end
        end
else
        begin
                Insert into LiczbaGodzPracownikow(IdPracownika,IleGodz,Miesiac, Rok)
                values(@idPracownika,@GodzPracy,@DataMiesiac,@DataRok)
        end

end


go
