INSERT INTO Pracownicy 
VALUES(
'Nowak', 'Joanna','19950323', '20240519', 8000
)

INSERT INTO Pracownicy 
VALUES(
'Malinowski', 'Jan','19970923', '20240520', 8000
)

INSERT INTO Pracownicy 
VALUES(
'Kwiatkowska', 'Maria','19950323', '20240519', 8000
)


INSERT INTO Poziomy
VALUES ('biegle'), ('bardzo dobrze'), ('dobrze'), ('s�abo')

INSERT INTO JezykiObce
VALUES ('hiszpa�ski'), ('niemiecki'), ('angielski'), ('chi�ski'), ('w�oski')


INSERT INTO PracownicyJezykiObce (IdPracownika, JezykObcy)
VALUES (1,'niemiecki')

INSERT INTO PracownicyJezykiObce (IdPracownika, JezykObcy, Poziom)
VALUES (1,'hiszpa�ski', 's�abo')

INSERT INTO PracownicyJezykiObce
VALUES (2,'chi�ski', 'dobrze')

INSERT INTO PracownicyJezykiObce
VALUES (3,'hiszpa�ski', 'dobrze')

UPDATE PracownicyJezykiObce
SET Poziom = 'dobrze'
WHERE IdPracownika = 1
AND JezykObcy = 'hiszpa�ski'


UPDATE Pracownicy
SET Nazwisko = 'Lisowska', StawkaMiesieczna = 12500
WHERE IdPracownika = 3

UPDATE JezykiObce
SET JezykObcy = 'Spanish'
WHERE JezykObcy = 'hiszpa�ski'

DELETE FROM JezykiObce
WHERE JezykObcy = 'angielski'

DELETE FROM Pracownicy
WHERE DataZatrudnienia<'20240520'


