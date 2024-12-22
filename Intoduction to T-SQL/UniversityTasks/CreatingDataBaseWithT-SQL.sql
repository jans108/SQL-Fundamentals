CREATE DATABASE pracownicy_jezykiobce

USE pracownicy_jezykiobce

CREATE TABLE Pracownicy(
IdPracownika int identity PRIMARY KEY,
Nazwisko varchar(50) NOT NULL,
Imie varchar(50) NOT NULL,
DataUrodzenia date,
DataZatrudnienia date,
StawkaMiesieczna decimal(10,2)
)

CREATE TABLE JezykiObce(
JezykObcy varchar(30) PRIMARY KEY
)


CREATE TABLE PracownicyJezykiObce(
IdPracownika int,
JezykObcy varchar(30) REFERENCES JezykiObce(JezykObcy) ON DELETE no action ON UPDATE cascade,
CONSTRAINT kppjo PRIMARY KEY(IdPracownika, JezykObcy),
Poziom varchar(30),
CONSTRAINT rpjop FOREIGN KEY(IdPracownika) REFERENCES Pracownicy(IdPracownika)
ON DELETE cascade ON UPDATE no action
)


CREATE TABLE Poziomy(
Poziom varchar(30) PRIMARY KEY
)

ALTER TABLE PracownicyJezykiObce ADD
CONSTRAINT rjopp FOREIGN KEY(Poziom) REFERENCES Poziomy(Poziom)
ON DELETE no action ON UPDATE cascade