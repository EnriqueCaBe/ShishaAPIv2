DROP TABLE if EXISTS marca;
create table marca
(
    id          int auto_increment primary key,
    name        varchar(256) NOT null ,
    pais        varchar(256) NOT null,
    pais_api    varchar (256) not null,
    descripcion varchar(256),
    imagen      varchar(256),
    imagen_flag varchar(256)
);

drop table if exists tabaco;
create table tabaco
(
    id          int auto_increment primary key,
    name        varchar(256) NOT null,
    name_api    varchar(256) not null,
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
    id     varchar(256) primary key,
    name    varchar(256) not null
);

drop table if exists porcentaje;
create table porcentaje
(
    tabaco        varchar(256) NOT null,
    mezcla        varchar(256) not null,
    porcentaje    double not null,
    foreign key (tabaco) references tabaco(name) on delete cascade,
    foreign key (mezcla) references mezcla(id) on delete cascade
);

DROP TABLE if EXISTS users;
create table users
(
    id         VARCHAR(256) PRIMARY KEY,
    email      VARCHAR(100),
    username    VARCHAR (100),
    password   VARCHAR(70) NOT NULL,
    enabled    TINYINT     NOT NULL DEFAULT 1
);

DROP TABLE if EXISTS authorities;
CREATE TABLE authorities
(
    authority_id int(11)     NOT NULL AUTO_INCREMENT,
    username     varchar(45) NOT NULL,
    role         varchar(45) NOT NULL,
    PRIMARY KEY (authority_id),
    UNIQUE KEY uni_username_role (role,username),
    CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users(username)
);
drop table if exists valoracion_mezcla;
create table valoracion_mezcla
(
    id varchar(256) not null,
    nota double not null,
    comentario varchar(256),
    usuario varchar(256) not null,
    mezcla varchar(256) not null,
    foreign key (usuario) references users(username) on delete cascade,
    foreign key (mezcla) references mezcla(id) on delete cascade
);

drop table if exists valoracion_tabaco;
create table valoracion_tabaco
(
    id varchar(256) not null,
    nota double not null,
    usuario varchar(256) not null,
    tabaco varchar(256) not null,
    foreign key (usuario) references users(username) on delete cascade,
    foreign key (tabaco) references tabaco(id) on delete cascade
)