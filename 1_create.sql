create table if not exists tara
(
fid serial primary key,
nume varchar(50) unique not null,
indicativ varchar (5) not null,
suprafata decimal null
);

create table if not exists judet 
(
fid serial primary key,
nume varchar(50) unique not null,
indicativ char (2) not null,
suprafata decimal null,
tara_fid integer not null references tara(fid)
);

create table if not exists uat
(
fid serial primary key,
nume varchar(10) unique not null,
suprafata decimal null,
judet_fid integer not null references judet(fid)
);

create table if not exists sala_fitness
(
id serial primary key,
nume varchar (50) not null,
suprafata decimal null,
adresa varchar (200) not null,
uat_fid integer not null references uat(fid)
);

create table if not exists sali_antrenament
(
id serial primary key,
tip_sala varchar (50) not null,
numar_sali smallint not null,
suprafata decimal null,
sala_fitness_id integer not null references sala_fitness(id)
);

create table if not exists tip_abonament 
(
id serial primary key,
tip_abonament varchar (100) not null
);

create table if not exists abonament
(
id serial primary key,
tarif numeric not null,
durata_luni smallint not null,
sala_fitness_id integer not null references sala_fitness(id),
id_tip_abonament integer not null references tip_abonament(id)
);

create table if not exists membri
(
id serial primary key,
cod_membru varchar(10) not null unique,
data_inscriere date not null,
data_expirare date null
);

create table if not exists persoane 
(
id serial primary key,
nume varchar(100) not null,
numar_telefon varchar (15) not null unique,
email varchar (100),
adresa text null,
membri_id integer not null unique references membri(id)
);

create table if not exists abonament_membru
(
id serial primary key,
membri_id integer not null references membri(id),
tip_abonament_id integer not null references tip_abonament(id)
);

create table if not exists antrenori
(
id serial primary key, 
nume varchar(100) not null, 
numar_telefon varchar (15) null,
nota_review numeric null,
sala_fitness_id integer not null references sala_fitness(id)
);

create table if not exists specializare
(
id serial primary key,
nume_specializare varchar (100) not null
);

create table if not exists antrenori_specializare
(
id serial primary key,
specializare_id integer not null references specializare(id),
antrenori_id integer not null references antrenori(id)
);
