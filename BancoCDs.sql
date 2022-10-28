create database datab_CDs;
use datab_CDs;
select * from Artista;


create table Artista(
	IdArtista int not null auto_increment,
    NomeArtista varchar(100) not null unique,
    constraint pk_IdArtista primary key (IdArtista)
)
Engine = InnoDB;

insert into Artista values (null, 'Carol Biazin');
insert into Artista values (null, 'Jão');
insert into Artista values (null, 'Ariana Grande');
insert into Artista values (null, 'One Direction');
insert into Artista values (null, 'Jaden');
insert into Artista values (null, 'Luísa Sonza');

create table Gravadora(
	IdGravadora int not null auto_increment,
    NomeGravadora varchar(50) not null unique,
    constraint pk_IdGravadora primary key (IdGravadora)
)
Engine = InnoDB;

insert into Gravadora values (null, 'Universal Music');
insert into Gravadora values (null, 'Sony Music');
insert into Gravadora values (null, 'Warner Music');
insert into Gravadora values (null, 'Perolla Music');
insert into Gravadora values (null, 'Music Music');
insert into Gravadora values (null, 'Best Music');

create table Categoria(
	IdCategoria int not null auto_increment,
    NomeCategoria varchar(50) not null unique,
    constraint pk_IdCategoria primary key (IdCategoria)
)
Engine = InnoDB;

insert into Categoria values (null, 'Pop');
insert into Categoria values (null, 'MPB');
insert into Categoria values (null, 'Pop Internacional');
insert into Categoria values (null, 'Pop Rock');
insert into Categoria values (null, 'Hip-Hop');
insert into Categoria values (null, 'Funk Pop');

create table Estado(
	SiglaEstado char(2) not null,
    NomeEstado char(50) not null unique,
    constraint pk_SiglaEstado primary key (SiglaEstado)
)
Engine = InnoDB;

insert into Estado values ('SP', 'São Paulo');
insert into Estado values ('RJ', 'Rio de Janeiro');
insert into Estado values ('SC', 'Santa Catarina');
insert into Estado values ('BA', 'Bahia');
insert into Estado values ('BH', 'Belo Horizonte');
insert into Estado values ('CE', 'Ceara');

create table Cidade(
	IdCidade int not null auto_increment,
    NomeCidade varchar (100) not null,
    SiglaEstado char(2) not null,
    constraint pk_IdCidade primary key (IdCidade),
    constraint fk_SiglaEst foreign key (SiglaEstado) references Estado (SiglaEstado)
)
Engine = InnoDB;


insert into Cidade (NomeCidade, SiglaEstado) values ('Bahia', 'BA');
insert into Cidade (NomeCidade, SiglaEstado) values ('Belo Horizonte', 'BH');
insert into Cidade (NomeCidade, SiglaEstado) values ('Fortaleza', 'CE');
insert into Cidade (NomeCidade, SiglaEstado) values ('Rio de Janeiro', 'RJ');
insert into Cidade (NomeCidade, SiglaEstado) values ('Florianopolis', 'SC');
insert into Cidade (NomeCidade, SiglaEstado) values ('São Paulo', 'SP');

