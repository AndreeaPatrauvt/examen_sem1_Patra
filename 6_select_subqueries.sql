SELECT * FROM tara  WHERE indicativ IN (SELECT indicativ FROM tara WHERE indicativ LIKE 'RO')  AND nume LIKE '%a%';
SELECT * FROM tara WHERE fid IN (SELECT fid WHERE nume LIKE 's%') and suprafata >=10000;
SELECT * FROM tara where suprafata IN (SELECT SUPRAFATA WHERE indicativ LIKE 'B%');

SELECT * FROM judet WHERE tara_fid IN (SELECT fid FROM tara WHERE suprafata > 30000);
