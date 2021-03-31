DROP TABLE if EXISTS marca;
create table marca
(
    id          int auto_increment primary key,
    name        varchar(256) NOT null ,
    pais        varchar(256) NOT null,
    descripcion varchar(256),
    imagen      varchar(256)
);

drop table if exists tabaco;
create table tabaco
(
    id          int auto_increment primary key,
    name        varchar(256) NOT null,
    descripcion varchar(256) NOT null,
    marca       varchar(256) NOT null,
    foreign key (marca) references marca (name) on delete cascade
);

drop table if exists formato;
create table formato
(
    id     int auto_increment primary key,
    gramos double NOT null,
    precio double NOT null,
    imagen varchar(256),
    tabaco varchar(256) NOT null,
    foreign key (tabaco) references tabaco (name) on delete cascade
);

drop table if exists mezcla;
create table mezcla
(
    id     int auto_increment primary key,
    name    varchar(256) not null
);

drop table if exists porcentaje;
create table porcentaje
(
    tabaco        varchar(256) NOT null,
    mezcla        varchar(256) not null,
    porcentaje    double not null,
    foreign key (tabaco) references tabaco(name) on delete cascade,
    foreign key (mezcla) references mezcla(name) on delete cascade
);
