INSERT INTO Klassen
(klas_code, slb_code, cohort, opleiding_code)
VALUES("lo9e-amo1", "vlt03", 2019, "amo")
("lo9e-amo2", "rs001", 2019, "amo")
("lo9e-amo3", "bkr02", 2019, "amo");

INSERT INTO Studenten
(ov_nummer, achternaam, tussenvoegsel, leeftijd)
VALUES(99499, "dam", "van der", 19)
(93459, "rooi", "van", 19)
(93422, "graaf", "de", 20)
(93422, "zoutelande", "van", 18);

INSERT INTO klassen_studenten
(ov_nummer, klas_code)
VALUES(99499, "lo8e-amo1")
(93459, "lo8e-amo2")
(93422, "lo8e_amo3")
(93422, "lo8e-amo4");

UPDATE Studenten
SET geboortedatum = "4-2-2000"
WHERE ov_nummer = 93422;

UPDATE Studenten
SET studenten = "inactief"
WHERE inschrijvings_datum < "1-1-2017";


SELECT ov_nummer, voornaam, tussenvoegsel, achternaam, klas_code, cohort, slb_code
FROM studenten
WHERE inschrijvings_datum > "1-1-2017"
ORDER BY klas_code, achternaam;