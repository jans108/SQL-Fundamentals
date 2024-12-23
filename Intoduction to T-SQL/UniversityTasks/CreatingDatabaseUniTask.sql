CREATE DATABASE KienciFaktury

ALTER DATABASE KienciFaktury
MODIFY NAME = KlienciFaktury

USE KlienciFaktury


CREATE TABLE Produkty(
	IdProduktu int IDENTITY PRIMARY KEY,
	NazwaProduktu varchar(50) NOT NULL UNIQUE,
	LiczbaProduktow int,
	JednostkaMiary varchar(20),
	CenaJednostkowa int,
	StawkaVAT tinyint
)

ALTER TABLE Produkty
ALTER COLUMN CenaJednostkowa decimal(7,2)

ALTER TABLE Produkty
ALTER COLUMN StawkaVAT tinyint

SELECT * FROM Produkty

CREATE TABLE Klienci(
	IdKlienta int IDENTITY PRIMARY KEY,
	NazwaKlienta varchar(50) NOT NULL,
	Ulica varchar(50),
	KodPocztowy varchar(10),
	Miejscowosc varchar(50)
)

CREATE TABLE Faktury(
	IdFaktury int IDENTITY PRIMARY KEY,
	DataWystawienia date,
	IdKlienta int
	CONSTRAINT fk_klienci_faktury FOREIGN KEY (IdKlienta) REFERENCES Klienci(IdKlienta)
	ON DELETE cascade
)

CREATE TABLE FakturyProdukty(
	IdFaktury int,
	IdProduktu int,
	LiczbaProduktow int NOT NULL,
	CenaJednostkowa decimal(7,2),
	StawkaVAT tinyint
	CONSTRAINT pk_faktury_produkty PRIMARY KEY (IdFaktury, IdProduktu)
)


ALTER TABLE FakturyProdukty
ADD CONSTRAINT fk_fakturyprodukty_produkty FOREIGN KEY (IdProduktu) REFERENCES Produkty(IdProduktu)

ALTER TABLE FakturyProdukty
ADD CONSTRAINT fk_fakturyprodukty_faktury FOREIGN KEY (IdFaktury) REFERENCES Faktury(IdFaktury)
