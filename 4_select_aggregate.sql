SELECT COUNT(*) AS total_tari FROM tara;
SELECT SUM(suprafata) AS suprafata_totala FROM tara;

SELECT AVG(suprafata) AS suprafata_medie from judet;
SELECT COUNT(*) AS total_judete from judet;

SELECT COUNT(*) AS total_uat FROM uat;
SELECT MAX(suprafata) as suprafata_maxima from uat;

SELECT COUNT(*) AS total_sali FROM sala_fitness;
SELECT AVG(suprafata) AS suprafata_medie_sali FROM sala_fitness;

SELECT SUM(numar_sali) AS total_sali FROM sali_antrenament;
SELECT MAX(numar_sali) AS max_sali_per_tip FROM sali_antrenament;

SELECT MIN(id) AS primul_tip_abonament FROM tip_abonament;
SELECT COUNT(*)as nr_tipuri_abonamente FROM tip_abonament;

SELECT COUNT(*) AS total_abonamente FROM abonament;
SELECT AVG(tarif) AS tarif_mediu FROM abonament;

SELECT COUNT(*) AS total_membri FROM membri;

SELECT COUNT(*) AS total_persoane FROM persoane;
SELECT AVG(LENGTH(nume)) AS lungime_medie_nume FROM persoane;

SELECT COUNT(*) AS total_antrenori FROM antrenori;
SELECT AVG(nota_review) AS nota_medie FROM antrenori;

SELECT COUNT(*) AS total_specializari FROM specializare;


