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
VALUES ('biegle'), ('bardzo dobrze'), ('dobrze'), ('s³abo')

INSERT INTO JezykiObce
VALUES ('hiszpañski'), ('niemiecki'), ('angielski'), ('chiñski'), ('w³oski')


INSERT INTO PracownicyJezykiObce (IdPracownika, JezykObcy)
VALUES (1,'niemiecki')

INSERT INTO PracownicyJezykiObce (IdPracownika, JezykObcy, Poziom)
VALUES (1,'hiszpañski', 's³abo')

INSERT INTO PracownicyJezykiObce
VALUES (2,'chiñski', 'dobrze')

INSERT INTO PracownicyJezykiObce
VALUES (3,'hiszpañski', 'dobrze')

UPDATE PracownicyJezykiObce
SET Poziom = 'dobrze'
WHERE IdPracownika = 1
AND JezykObcy = 'hiszpañski'


UPDATE Pracownicy
SET Nazwisko = 'Lisowska', StawkaMiesieczna = 12500
WHERE IdPracownika = 3

UPDATE JezykiObce
SET JezykObcy = 'Spanish'
WHERE JezykObcy = 'hiszpañski'

DELETE FROM JezykiObce
WHERE JezykObcy = 'angielski'

DELETE FROM Pracownicy
WHERE DataZatrudnienia<'20240520'


