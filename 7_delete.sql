DELETE FROM sala_fitness WHERE nume = 'Gym One 2';

DELETE FROM sali_antrenament WHERE id = 1;
DELETE FROM sali_antrenament WHERE tip_sala = 'yoga';
DELETE FROM sali_antrenament WHERE numar_sali < 3;

DELETE FROM abonament WHERE id = 1;
DELETE FROM abonament WHERE tarif > 1000;
DELETE FROM abonament WHERE durata_luni < 3;

DELETE FROM antrenori_specializare WHERE id = 1;
DELETE FROM antrenori_specializare WHERE specializare_id = 3;
DELETE FROM antrenori_specializare WHERE antrenori_id = 5;

DELETE FROM specializare WHERE id = 1;
DELETE FROM specializare WHERE nume_specializare LIKE 'yoga%';


