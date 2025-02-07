SELECT * FROM tara WHERE indicativ LIKE '%E';
SELECT * FROM judet WHERE tara_fid = 1 AND indicativ LIKE '%B%';
SELECT * FROM abonament WHERE tarif >= 300 AND durata_luni >= 3;
SELECT * FROM abonament WHERE tarif BETWEEN 400 AND 700;
SELECT * FROM sala_fitness WHERE nume LIKE 'Gym 1' OR nume LIKE 'Gym 2';