DROP TABLE IF EXISTS
    valoracion_tabaco;
DROP TABLE IF EXISTS
    valoracion_mezcla;
DROP TABLE IF EXISTS
    authorities;
DROP TABLE IF EXISTS
    users;
DROP TABLE IF EXISTS
    porcentaje;
DROP TABLE IF EXISTS
    mezcla;
DROP TABLE IF EXISTS
    formato;
DROP TABLE IF EXISTS
    tabaco;
DROP TABLE IF EXISTS
    marca;
CREATE TABLE marca(
    id INT AUTO_INCREMENT UNIQUE KEY,
    NAME VARCHAR(256) NOT NULL,
    pais VARCHAR(256) NOT NULL,
    pais_api VARCHAR(256) NOT NULL,
    descripcion VARCHAR(256),
    imagen VARCHAR(256),
    imagen_flag VARCHAR(256),
    PRIMARY KEY(NAME)
); CREATE TABLE tabaco(
    id INT AUTO_INCREMENT UNIQUE KEY,
    NAME VARCHAR(256) NOT NULL,
    name_api VARCHAR(256) NOT NULL,
    descripcion VARCHAR(256) NOT NULL,
    marca VARCHAR(256) NOT NULL,
    PRIMARY KEY(NAME),
    INDEX(marca),
    FOREIGN KEY(marca) REFERENCES marca(NAME) ON DELETE CASCADE
); CREATE TABLE formato(
    id INT AUTO_INCREMENT PRIMARY KEY,
    gramos DOUBLE NOT NULL,
    precio DOUBLE NOT NULL,
    imagen VARCHAR(256),
    tabaco VARCHAR(256) NOT NULL,
    INDEX(tabaco),
    FOREIGN KEY(tabaco) REFERENCES tabaco(NAME) ON DELETE CASCADE
); CREATE TABLE mezcla(
    id VARCHAR(256) PRIMARY KEY,
    NAME VARCHAR(256) NOT NULL
); DROP TABLE IF EXISTS
    porcentaje;
CREATE TABLE porcentaje(
    tabaco VARCHAR(256) NOT NULL,
    mezcla VARCHAR(256) NOT NULL,
    porcentaje DOUBLE NOT NULL,
    INDEX(mezcla),
    INDEX(tabaco),
    FOREIGN KEY(tabaco) REFERENCES tabaco(NAME) ON DELETE CASCADE,
    FOREIGN KEY(mezcla) REFERENCES mezcla(id) ON DELETE CASCADE
); CREATE TABLE users(
    id VARCHAR(256) UNIQUE KEY,
    email VARCHAR(100),
    username VARCHAR(100),
    PASSWORD VARCHAR(70) NOT NULL,
    enabled TINYINT NOT NULL DEFAULT 1,
    PRIMARY KEY(username)
); CREATE TABLE authorities(
    authority_id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(45) NOT NULL,
    role VARCHAR(45) NOT NULL,
    PRIMARY KEY(authority_id),
    INDEX(username),
    UNIQUE KEY uni_username_role(role, username),
    CONSTRAINT fk_username FOREIGN KEY(username) REFERENCES users(username)
); CREATE TABLE valoracion_mezcla(
    id VARCHAR(256) NOT NULL PRIMARY KEY,
    nota DOUBLE NOT NULL,
    comentario VARCHAR(256),
    usuario VARCHAR(256) NOT NULL,
    mezcla VARCHAR(256) NOT NULL,
    INDEX(usuario),
    INDEX(mezcla),
    FOREIGN KEY(usuario) REFERENCES users(username) ON DELETE CASCADE,
    FOREIGN KEY(mezcla) REFERENCES mezcla(id) ON DELETE CASCADE
); CREATE TABLE valoracion_tabaco(
    id VARCHAR(256) NOT NULL,
    nota DOUBLE NOT NULL,
    usuario VARCHAR(256) NOT NULL,
    tabaco VARCHAR(256) NOT NULL,
    INDEX(usuario),
    INDEX(tabaco),
    FOREIGN KEY(usuario) REFERENCES users(username) ON DELETE CASCADE,
    FOREIGN KEY(tabaco) REFERENCES tabaco(NAME) ON DELETE CASCADE
); INSERT INTO users(id, username, email, PASSWORD)
VALUES(
    'cd4fa027-36b6-4639-86b8-834fe83b2e4a',
    'EnriqueCaBe',
    'enriquecabe300@gmail.com',
    '{bcrypt}$2a$10$Hm0L1XIsrWDkeWNjbMUCmOhd7qRYJXeM4hQ1kOHrWVd1tMzqIpU3i'
);
INSERT INTO authorities(username, role)
VALUES('EnriqueCaBe', 'ROLE_ADMIN');
INSERT INTO marca(
    NAME,
    pais,
    pais_api,
    descripcion,
    imagen,
    imagen_flag
)
VALUES(
    'Nameless',
    'Alemania',
    'Germany',
    'Tabaco rubio',
    'https://i.ibb.co/Jys8s36/nameless.png',
    'https://restcountries.eu/data/deu.svg'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Pablo',
    'pablo',
    'Lima y arándanos',
    'Nameless'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 12.90, 'Pablo');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.60, 'Pablo');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Blacknana',
    'blacknana',
    'Uva moscatel y menta',
    'Nameless'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 12.90, 'Blacknana');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.60, 'Blacknana');
INSERT INTO marca(
    NAME,
    pais,
    pais_api,
    descripcion,
    imagen,
    imagen_flag
)
VALUES(
    'Tangiers',
    'USA',
    'usa',
    'Tabaco negro',
    'https://i.ibb.co/LPWDd6j/tangiers.png',
    'https://restcountries.eu/data/usa.svg'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C6 Pineapple',
    'c6_pineapple',
    'Piña',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C6 Pineapple');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C111 Ololiuqui',
    'c111_ololiuqui',
    'Cola y vainilla',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C111 Ololiuqui');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C16 Pink Grapefruit',
    'c16_pink_prapefruit',
    'Pomelo',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C16 Pink Grapefruit');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C27 Cocoa',
    'c27_cocoa',
    'Cacao',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C27 Cocoa');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C3 Strawberry',
    'c3_strawberry',
    'Fresa',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C3 Strawberry');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C34 Its like that one breakfast cereal',
    'c34_its_like_that_one_breakfast_cereal',
    'Cereales americanos de colores',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(
    250.0,
    35.0,
    'C34 Its like that one breakfast cereal'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C38 Kashmir Peach',
    'c38_kashmir_peach',
    'Melocotón con toques florales',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C38 Kashmir Peach');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C4 Blitzsturm',
    'c4_blitzsturm',
    'Lavanda con mentol',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C4 Blitzsturm');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C5 Lemon Blossom',
    'c5_lemon_blossom',
    'Limón con toques florales',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C5 Lemon Blossom');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C57 Sevilla Orange',
    'c57_sevilla_orange',
    'Naranja dulce',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C57 Sevilla Orange');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C58 Welch Cream',
    'C58_welch_cream',
    'Crema de whisky',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C58 Welch Cream');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C59 Blackberry',
    'c59_blackberry',
    'Mora',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C59 Blackberry');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C62 Strawberry Kiwi',
    'c62_strawberry_kiwi',
    'Fresa y Kiwi',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C62 Strawberry Kiwi');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C74 Lemon Lime',
    'c74_lemon_lime',
    'Lima y limón',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C74 Lemon Lime');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C76 Apricot Spring Blend',
    'c76_apricot_spring_blend',
    'Albaricoque floral',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(
    250.0,
    35.0,
    'C76 Apricot Spring Blend'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C77 Tropical Revenge',
    'c77_tropical_revenge',
    'Piña, pera y naranja',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C77 Tropical Revenge');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C78 Horchata',
    'c78_horchata',
    'Horchata',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C78 Horchata');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C9 Melon Blend',
    'c9_melon_blend',
    'Melon y sandia',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C9 Melon Blend');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C90 Peach Iced Tea',
    'c90_peach_iced_tea',
    'Té helado de melocotón',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C90 Peach Iced Tea');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C92 Mimon',
    'c92_mimon',
    'Limon y menta',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C92 Mimon');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C94 Maraschino Cherry',
    'c94_maraschino_cherry',
    'Frutas mixtas con énfasis de cereza',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C94 Maraschino Cherry');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C96 Cane Mint',
    'c96_cane_mint',
    'Para muchos la mejor menta del mundo',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C96 Cane Mint');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C96a Cane Mint Vault',
    'c96a_cane_mint_vault',
    'Fórmula inicial de Cane Mint',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C96a Cane Mint Vault');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C119 Kosmik',
    'c119_kosmik',
    'Dos manzanas',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C119 Kosmik');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'C69 PassionFruit',
    'c69_passionfruit',
    'Fruta de la pasión',
    'Tangiers'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(250.0, 35.0, 'C69 PassionFruit');
INSERT INTO marca(
    NAME,
    pais,
    pais_api,
    descripcion,
    imagen,
    imagen_flag
)
VALUES(
    'Serbetli',
    'Alemania',
    'Germany',
    'Tabaco rubio premium',
    'https://i.ibb.co/cTzSKqY/serbetli.png',
    'https://restcountries.eu/data/deu.svg'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Banastra',
    'banastra',
    'Banana y fresa',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Banastra');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Banastra');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Blueerry',
    'blueerry',
    'Arándanos',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Blueerry');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Double Effect',
    'double_effect',
    'Cola y limón',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Double Effect');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES('Elon', 'elon', 'Melón', 'Serbetli');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Elon');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Green Flash',
    'green_flash',
    'Menta',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Green Flash');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Ice Bird',
    'ice_bird',
    'Kiwi helado',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Ice Bird');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Ice Bird');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Ice Pin',
    'ice_pin',
    'Piña helada',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Ice Pin');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Ice Pin');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'T-Ber',
    't-ber',
    'Frutos rojos tostados',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'T-Ber');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'T-Ber');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Hate 69',
    'hate_69',
    'Mezcla de frutas heladas',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Hate 69');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Hate 69');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Blue Tropic',
    'blue_tropic',
    'Curaçao',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Blue Tropic');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Emon Ke',
    'emon_ke',
    'Pastel de limón',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Emon Ke');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Emon Ke');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Grapic',
    'grapic',
    'Manzana verde helada',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Grapic');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Grapic');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Green Mix',
    'green_mix',
    'Lima, manzana verde, kiwi y menta',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Green Mix');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Green Mix');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'I Blueberry',
    'i_blueberry',
    'Arándanos helados',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'I Blueberry');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'I Blueberry');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Icbdrumm',
    'icbdrumm',
    'Mandarina helada',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Icbdrumm');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Icbdrumm');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Iceber',
    'iceber',
    'Frutas del bosque heladas',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Iceber');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Ime Spiced Pinch',
    'ime_spiced_pinch',
    'Lima y melocotón a la parrilla',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Ime Spiced Pinch');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Imliciblerry',
    'imliciblerry',
    'Lima, lichi y arándanos',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Imliciblerry');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Imliciblerry');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Istanbul Nights',
    'istanbul_nights',
    'Frambuesa, arándanos y fresa',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Istanbul Nights');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Istanbul Nights');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Rotana',
    'rotana',
    'Melón con nata y fresa',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Rotana');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Rotana');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Stra Shark',
    'stra_shark',
    'Batido de fresa',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Stra Shark');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 2.95, 'Stra Shark');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Duses',
    'duses',
    'Pera fresca',
    'Serbetli'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Duses');
INSERT INTO marca(
    NAME,
    pais,
    pais_api,
    descripcion,
    imagen,
    imagen_flag
)
VALUES(
    'Revoshi',
    'Turquia',
    'Turkey',
    'Tabaco rubio',
    'https://i.ibb.co/b69zGrb/revoshi.png',
    'https://restcountries.eu/data/tur.svg'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Blck Grp',
    'blck_grp',
    'Uva negra',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Blck Grp');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'D´App Strng',
    'dapp_strng',
    'Dos manzanas intenso',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'D´App Strng');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Eskimo Cndy',
    'eskimo_cndy',
    'Caramelos helados',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Eskimo Cndy');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Eskimo Lmn',
    'eskimo_lmn',
    'Limón helado',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Eskimo Lmn');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Eskimo P´App',
    'eskimo_dapp',
    'Piña helada',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Eskimo P´App');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Eskimo Wtrmln',
    'eskimo_wtrmln',
    'Sandía helada',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Eskimo Wtrmln');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Free Spartacus',
    'free_spartacus',
    'Mix de flor de saúco',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Free Spartacus');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Orng Mnt',
    'orng_mnt',
    'Naranja helada',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Orng Mnt');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Ola Zapata',
    'ola_zapata',
    'CocaCola con canela',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Ola Zapata');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Pancho Villa',
    'pancho_villa',
    'Mix frutal con melón y limón',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Pancho Villa');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Vamos Ernesto',
    'vamos_ernesto',
    'Chicle de canela',
    'Revoshi'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.30, 'Vamos Ernesto');
INSERT INTO marca(
    NAME,
    pais,
    pais_api,
    descripcion,
    imagen,
    imagen_flag
)
VALUES(
    'Aloha',
    'España',
    'Spain',
    'Tabaco rubio',
    'https://i.ibb.co/cwcDsg1/aloha.jpg',
    'https://restcountries.eu/data/esp.svg'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Splash',
    'splash',
    'Naranja picante, fresca y cremosa',
    'Aloha'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(100.0, 7.50, 'Splash');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.50, 'Splash');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Nazaré',
    'nazare',
    'Mezcla única de melón, sandía, fruta de la pasión, chicle y tres sabores adicionales',
    'Aloha'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(100.0, 7.50, 'Nazaré');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.50, 'Nazaré');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Atlantic',
    'atlantic',
    'Fresco y refrescante caramelo de cereza',
    'Aloha'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(100.0, 7.50, 'Atlantic');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.50, 'Atlantic');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Pacific',
    'pacific',
    'Suave, aterciopelado y refrescante. Helado cremoso de frutos del bosque',
    'Aloha'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(100.0, 7.50, 'Pacific');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.50, 'Pacific');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'T.Riko',
    'triko',
    'Deliciosa té con leche, cacao y canela',
    'Aloha'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(100.0, 7.50, 'T.Riko');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.50, 'T.Riko');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Sparrow',
    'sparrow',
    'Mezcal de piña y mango con efecto frío',
    'Aloha'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(100.0, 7.50, 'Sparrow');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.50, 'Sparrow');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Los Locos',
    'los_locos',
    'Deliciosa y cremosa irish cream',
    'Aloha'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(100.0, 7.50, 'Los Locos');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.50, 'Los Locos');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Maverick',
    'maverick',
    'Limonada con hielo, refrescante, única e incomparable',
    'Aloha'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(100.0, 7.50, 'Maverick');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.50, 'Maverick');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Shaka Shaka',
    'shaka_shaka',
    'Menta dulce, penetrante y agradable. Adictiva.',
    'Aloha'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(100.0, 7.50, 'Shaka Shaka');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.50, 'Shaka Shaka');
INSERT INTO marca(
    NAME,
    pais,
    pais_api,
    descripcion,
    imagen,
    imagen_flag
)
VALUES(
    'Darkside',
    'Rusia',
    'Russian',
    'Tabaco negro',
    'https://i.ibb.co/1TpbsMG/darkside.png',
    'https://restcountries.eu/data/rus.svg'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Darkside Hola',
    'darkside_hola',
    'Cola con limón',
    'Darkside'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(30.0, 3.85, 'Darkside Hola');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'I Granny',
    'i_granny',
    'Manzana verde dulce',
    'Darkside'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(30.0, 3.85, 'I Granny');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'LM Blast',
    'lm_blast',
    'Refrescante y agrio sabor de limón maduro',
    'Darkside'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(30.0, 3.85, 'LM Blast');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'MG Assi',
    'mg_assi',
    'Batido con pulpa de mango',
    'Darkside'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(30.0, 3.85, 'MG Assi');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Supernova',
    'supernova',
    'Impresionante mentol frío',
    'Darkside'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(30.0, 3.85, 'Supernova');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Tear',
    'tear',
    'Rico sabor de limonada dulce de pera',
    'Darkside'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(30.0, 3.85, 'Darkside Hola');
INSERT INTO marca(
    NAME,
    pais,
    pais_api,
    descripcion,
    imagen,
    imagen_flag
)
VALUES(
    'Dozaj',
    'Turquia',
    'Turkey',
    'Tabaco rubio',
    'https://i.ibb.co/ZBmV6nP/dozaj.png',
    'https://restcountries.eu/data/tur.svg'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES('90+', '90plus', 'Limón y menta', 'Dozaj');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, '90+');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Black Star',
    'black_star',
    'Maracuyá, chicle, melocotón y menta',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Black Star');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Blade',
    'blade',
    'Mezcla de bayas, fruta del dragon y menta',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Blade');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Eternal',
    'eternal',
    'Puro de vainilla',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Eternal');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Land Of Fire',
    'land_of_fire',
    'Vodka, café, licor, nata',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Land Of Fire');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Marshall',
    'marshall',
    'Brownie, naranja, menta',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Marshall');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Mito',
    'mito',
    'Caramelo, canela, toque helado',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Mito');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Royal Style',
    'royal_style',
    'Muffin de arándano',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Royal Style');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Carnival',
    'carnival',
    'Mezcla de frutas exóticas',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Carnival');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.25, 'Carnival');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Casablanca',
    'casablanca',
    'Té especiado, jenjibre, nata y toque de canela',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Casablanca');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.25, 'Casablanca');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Cuba Dream',
    'cuba_dream',
    'Exótic tropical fruits',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Cuba Dream');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Dead Sea',
    'dead_sea',
    'Coca cola con cereza helada',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Dead Sea');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.25, 'Dead Sea');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Jelly Bear',
    'jelly_bear',
    'Osito de gominola',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Jelly Bear');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Rio Lady',
    'rio_lady',
    'Piña, melón, chicle y toque helado',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Rio Lady');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Sweet Night',
    'sweet_night',
    'Guayaba, melón, kiwi, lima y fruta nefelio (rambutan)',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Sweet Night');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Vip 44',
    'vip_44',
    'Cactus, lima y pepino',
    'Dozaj'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Vip 44');
INSERT INTO marca(
    NAME,
    pais,
    pais_api,
    descripcion,
    imagen,
    imagen_flag
)
VALUES(
    'Dumanji',
    'Francia',
    'France',
    'Tabaco rubio',
    'https://i.ibb.co/mBMcM2j/dumanji.jpg',
    'https://restcountries.eu/data/fra.svg'
);
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Adam & Eve',
    'adam_and_eve',
    'Dos Manzanas',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Adam & Eve');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Adam & Eve');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES('Na3ne', 'na3ne', 'Menta', 'Dumanji');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Na3ne');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Na3ne');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Cane Na3ne',
    'cane_na3ne',
    'Azúcar de caña y menta',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Cane Na3ne');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Cane Na3ne');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'French Rivera',
    'french_rivera',
    'Chicle y melón',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'French Rivera');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'French Rivera');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES('Kush', 'kush', 'Sabor CBD', 'Dumanji');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Kush');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Kush');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Kush Na3ne',
    'kush_ne3ne',
    'Sabor CBD con menta',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Kush Na3ne');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Kush Na3ne');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Sun Beach',
    'sun_beach',
    'Kiwi, piña y melón',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Sun Beach');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Sun Beach');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Tsunami',
    'tsunami',
    'Sandía, arándanos y menta',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Tsunami');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Tsunami');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Pink Kiss',
    'pink_kiss',
    'Frutas exóticas dulces',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Pink Kiss');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Pink Kiss');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Heaven',
    'heaven',
    'Fruta tropical, melón y menta',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Heaven');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Heaven');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Bahamas',
    'bahamas',
    'Piña, melón y frescor',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Bahamas');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 11.50, 'Bahamas');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Meridian',
    'meridian',
    'Sandía, melón y manzana',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Meridian');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Blue mix',
    'blue_mix',
    'Uvas, arándanos, piña y coco',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Blue mix');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Touty Red',
    'touty_red',
    'Frutos rojos',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Touty Red');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
    'Lover',
    'lover',
    'Melón, bayas, especias y fresas',
    'Dumanji'
);
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.00, 'Lover');
INSERT INTO marca(
    NAME,
    pais,
    pais_api,
    descripcion,
    imagen,
    imagen_flag
)
VALUES(
          'Hookain',
          'Alemania',
          'Germany',
          'Tabaco rubio',
          'https://i.ibb.co/6mQsXhp/hookain.png',
          'https://restcountries.eu/data/deu.svg'
      );
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'American Pei',
          'american_pei',
          'Cremosa tarta de manzana a la americana coon toffee. Receta increiblemente deliciosa de la abuela.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'American Pei');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Mng Loco',
          'mng_loco',
          'Una combinación de diferentes tipos de mango, un toque de energía y nuestro nuevo y aún más fresco sabor a mentol.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Mng Loco');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Zenter Schox',
          'zenter_schox',
          'El sabor más agrio del mundo a partir de aromas de lima y limón. Es tan agrio que te volverá loco. ',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Zenter Schox');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Laoz',
          'laoz',
          'Jugo dulce de cereza, afrutado e intenso combinado con arándanos. Añadimos mentol para hacerlo más fresco. Sabor afrutado y fresco. ',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Laoz');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Original Vanta Zotic',
          'original_vanta_zotic',
          'Batido afrutado de maracuyá, durazno y zumo de naranja, recuerda a un limonada muy famosa con un toque exótico.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Original Vanta Zotic');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Cotton Candy Craem',
          'cotton_candy_craem',
          'Algodón de azúcar, sandía, mango y arándanos.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Cotton Candy Craem');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.80, 'Cotton Candy Craem');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Orogina',
          'orogina',
          'Naranja y mandarina combinadas con un toque de White Caek.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Orogina');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Eyez Kalt',
          'eyez_kalt',
          'Muy frío. Caramelo de menta refinado con plátano y lima.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Eyez Kalt');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Vantanaz',
          'vantanaz',
          'El fuerte sabor a piña se mezcla con una combinación de mango, pomelo y zumo de durazno. Idéntico a Vanta Piña.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Vantanaz');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Pic Zkittlez',
          'pic_zkittlez',
          'Refrescante té helado de melocotón salvaje y albaricoque. Mezclado con menta y unos ingredientes especiales que no te contamos.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Pic Zkittlez');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Ch3ri Zkittlez',
          'cheri_zkittlez',
          'Sabor intenso a cereza y fruta de dragón. Mejor de lo que te puedas imaginar.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Ch3ri Zkittlez');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Sm!nt',
          'smint',
          'Experimenta el sabor refrescante de nuestro caramelo de menta a la tic tac. Fresco y dulce.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Sm!nt');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Fellatio',
          'fellatio',
          'Batido de sandía, melón dulce, maracuyá y frutas el bosque.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Fellatio');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Green Lean',
          'green_lean',
          'La mejor lima que jamás hayas probado, convertida en zumo de lima. Siente el sabor y el frescor de miles de limas que explotarán en tu cazoleta.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Green Lean');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.80, 'Green Lean');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Kaffa Yayo',
          'kaffa_yayo',
          'El mejor postre con sabor a coco. Coco de Hawai cubierto por una fina crema de almendras con vainilla bourbon.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Kaffa Yayo');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Bubblenciaga',
          'bubblenciaga',
          'El típico chicle americano en su momento de mayor sabor. Dulce y duradero hasta dejarte boquiabierto.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Bubblenciaga');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.80, 'Bubblenciaga');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Cactopus',
          'cactopus',
          'Dulce y cremoso al mismo tiempo. El sabor dulce a cactus con la fresa y vainilla hacen un trio delicioso e intenso. ',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Cactopus');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Lemenciaga',
          'lemenciaga',
          'Un sabor refrescante de limón y esencia de té verde con el indispensable toque de menta fresca.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Lemenciaga');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.80, 'Lemenciaga');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Punani',
          'punani',
          'Jugoso, jugosísimo, mango y maracuyá fusionado con naranja y piña.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Punani');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'White Caek',
          'white_caek',
          'El más sabroso! tarta de queso con un toque de caramelo.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'White Caek');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.80, 'White Caek');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Big Black Barries',
          'big_black_barries',
          'Intenso sabor a uva moscatel con esencia de mentol..',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Big Black Barries');
INSERT INTO formato(gramos, precio, tabaco)
VALUES(200.0, 13.80, 'Big Black Barries');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Soleiro Spliff',
          'soleiro_spliff',
          'Una explosión de sabores. Marakuyá, caramelo de naranja y helado de vainilla. ',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Soleiro Spliff');
INSERT INTO tabaco(
    NAME,
    name_api,
    descripcion,
    marca
)
VALUES(
          'Kivi King',
          'kivi_king',
          'Kiwi afrutado intenso sobre una cama de lima. Agradablemente fresco con un toque de menta y mentol.',
          'Hookain'
      );
INSERT INTO formato(gramos, precio, tabaco)
VALUES(50.0, 3.95, 'Kivi King');