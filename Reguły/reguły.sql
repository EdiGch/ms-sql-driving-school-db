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