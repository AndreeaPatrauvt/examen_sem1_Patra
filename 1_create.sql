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


