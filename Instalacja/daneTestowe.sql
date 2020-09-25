
/*######################################################
Dodawanie danych
*/
Insert into Aktywnosci(Nazwa)
values
('Aktywny'),
('Nieaktywny')
go

Insert into Realizacji(Nazwa)
values
('Czeka na realizacje'),
('W trakcie realizacji'),
('Zrealizowano'),
('Przekroczył Liczbę Godz Kursu')
go


Insert into Stanowiska(NazwaStanowiska)
values
('Instruktor'),
('Pracownik Biura'),
('Mechanik')
go
　
INSERT INTO Pracownicy( Imie,Nazwisko,Pesel, Telefon, IdStanowiska, CzyKobieta, DataUrodzenia, DataZatrudnia)
values
('Marian', 'Kocur', '95070738863', '789456123',1, 'M' , '1995-07-07', '2009-05-20'),
('Anna','Kowalska','97052732379','741852963',1, 'K', '1997-05-27', '2009-08-01'),
('Maciek','Szczęsny','93102821891','874258369',1 , 'M' , '1993-10-28', '2010-03-10'),
('Edyta','Marciniak','79123031398','520147369',2 , 'K', '1973-12-30', '2011-08-15'),
('Tomasz','Katalski','90121249819',DEFAULT, 3, 'M', '1990-12-12', '2010-01-05')
go


Insert Into Samochody(Marka,Model,Numer_rej,Rok_produkcji)
values
('Hyundai','i20','KW12365',2016),
('Hyundai','i20','KA14256',2015),
('Hyundai','i20','KF74136',2014)
go


Insert into Naprawy (Nazwa_naprawy,Cena,Data,IdSamochodu,IdRealizacji)
values
('Sprzęgło',1200.7 ,'2014-08-20',3,3),
('Hamulce',420.9 ,'2014-09-15',3,3),
('Wycieraczki',250.1 ,'2016-10-25',3,3)
go


Insert into Kursanci(Imie,Nazwisko,Pesel,DataUrodzenia,CzyKobieta)
values
('Anna','Kozak','79121412256','1979-12-14', 'K'),
('Katarzyna','Król','98062451883','1998-06-24', 'K'),
('Mateusz','Wiśniewski','92030365828','1992-03-03', 'M'),
('Wiesław','Malinowski','75032122585','1975-03-21', 'M'),
('Adrianna','Stankiewicz','93111071663','1993-11-10', 'K'),
('Barbara','Lichoń','96022272352','1996-02-22', 'K'),
('Maciek','Stawczyk','73121074324','1973-12-10', 'M'),
('Wojtek','Wojas','74012427933','1974-01-24', 'M'),
('Kamila','Napieralska','85011144215','1985-01-11', 'K'),
('Ewelina','Kurzawa','94041454535','1985-01-11', 'K'),
('Tomasz','Zdun','75011265142','1975-01-12', 'M'),
('Grzegorz','Krychowiak','89022046539','1989-02-20', 'M')
go

Insert into Pakiet(Nazwa, LiczbaGodz)
values
('10 - Godzin', 10),
('16 - Godzin',16),
('20 - Godzin', 20)
go
　
Insert into Kategorie(Nazwa, LiczbaGodz)
values
('Kategoria B', 30),
('Kategoria C', 30),
('Kategoria D', 60),
('Kategoria A', 20)
go


Insert into MiejsceSprzedazy(Nazwa_miejsca)
values
('Biuro'),
('Grupon'),
('Własna Strona www')
go


Insert into Sprzedaz(IdKategorii,IdKursanta,IdMiejscaSprzedazy,dataSprzdazy,cenaSprzedazy,IdPakiet,IdRealizacji)
values
(1,1,1,'2017-01-20',1500.98,NULL,DEFAULT),
(1,2,1,'2017-01-22',1500.98,1,DEFAULT),
(1,3,1,'2017-02-15',1500.98,1,DEFAULT),
(1,4,2,'2017-02-20',1500.98,NULL,DEFAULT),
(1,5,2,'2017-03-02',1500.98,NULL,DEFAULT),
(1,6,2,'2017-03-15',1500.98,NULL,DEFAULT),
(1,7,2,'2017-04-05',1500.98,NULL,DEFAULT),
(2,8,3,'2017-04-10',4500.98,NULL,DEFAULT),
(3,9,3,'2017-05-10',5500.98,NULL,DEFAULT),
(4,10,3,'2017-05-20',2000.98,NULL,DEFAULT),
(4,11,1,'2017-06-08',2000.98,2,DEFAULT),
(4,12,1,'2017-06-12',2000.98,2,DEFAULT)
go


Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,DEFAULT,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,DEFAULT,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,DEFAULT,'2017-07-10')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,DEFAULT,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,DEFAULT,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-11')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-12')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-14')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,DEFAULT,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-16')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-17')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-18')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-19')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-20')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-21')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-22')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-23')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-24')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-25')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(1,1,1,1,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(2,2,1,1,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(3,3,1,1,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(4,4,1,2,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(5,5,2,2,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(6,6,2,2,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(7,7,2,2,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(8,8,3,3,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(9,9,3,3,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(10,10,3,3,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(11,11,3,3,2,'2017-07-26')
go
Insert into Jazdy(IdSprzedazy,IdKursanta,IdPracownika,IdSamochodu,IleCzasuH,DataZajec)
values
(12,12,3,3,2,'2017-07-26')
go