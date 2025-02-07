SELECT * FROM tara  WHERE indicativ IN (SELECT indicativ FROM tara WHERE indicativ LIKE 'RO')  AND nume LIKE '%a%';
SELECT * FROM tara WHERE fid IN (SELECT fid WHERE nume LIKE 's%') and suprafata >=10000;
SELECT * FROM tara where suprafata IN (SELECT SUPRAFATA WHERE indicativ LIKE 'B%');

SELECT * FROM judet WHERE tara_fid IN (SELECT fid FROM tara WHERE suprafata >= 5000);
SELECT * FROM judet WHERE fid IN (SELECT judet_fid FROM uat WHERE nume LIKE 'b%');

SELECT * FROM uat WHERE fid in (select uat_fid from sala_fitness where nume like 'G%');
SELECT nume FROM uat WHERE fid IN (SELECT uat_fid FROM sala_fitness WHERE suprafata > 500);

SELECT nume FROM sala_fitness WHERE id IN (SELECT sala_fitness_id FROM sali_antrenament WHERE numar_sali > 3);
SELECT nume FROM sala_fitness WHERE uat_fid IN (SELECT fid FROM uat WHERE nume LIKE 'h%');
SELECT adresa FROM sala_fitness WHERE id IN (SELECT sala_fitness_id FROM abonament WHERE tarif > 400);

SELECT * FROM sali_antrenament WHERE sala_fitness_id IN (SELECT id FROM sala_fitness WHERE suprafata > 700);
SELECT * FROM sali_antrenament WHERE id IN (SELECT id FROM sali_antrenament WHERE tip_sala IN ('aerobic', 'fitness'));

SELECT * FROM abonament WHERE sala_fitness_id IN (SELECT id FROM sala_fitness WHERE suprafata > 500);

SELECT * FROM membri WHERE id IN (SELECT membri_id FROM persoane WHERE nume LIKE 'M%');
SELECT data_inscriere FROM membri WHERE id IN (SELECT id FROM membri WHERE data_inscriere > '2022-01-01');

SELECT nume FROM antrenori WHERE id IN (SELECT id FROM antrenori WHERE nota_review > 4.5);
SELECT * FROM antrenori WHERE sala_fitness_id IN (SELECT id FROM sala_fitness WHERE nume LIKE 'Gym 2');
