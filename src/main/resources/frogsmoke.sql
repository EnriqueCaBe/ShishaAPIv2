-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2021 a las 11:20:43
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `frogsmoke`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato`
--

CREATE TABLE `formato` (
  `id` int(11) NOT NULL,
  `gramos` double NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formato`
--

INSERT INTO `formato` (`id`, `gramos`, `precio`) VALUES
(1, 250, 35),
(2, 40, 3.85),
(3, 40, 4.1),
(4, 50, 2.9),
(5, 100, 7.9),
(6, 100, 7.5),
(7, 200, 13.5),
(8, 40, 2.7),
(9, 50, 2.95),
(10, 200, 10.95),
(11, 1000, 49.95),
(12, 50, 3),
(13, 200, 11.25),
(14, 200, 11.5),
(15, 50, 3.95),
(16, 200, 13.8),
(17, 200, 23.5),
(18, 50, 3.6),
(19, 200, 12.9),
(20, 50, 3.3),
(21, 50, 3.1),
(22, 50, 3.25),
(25, 1000, 59.9),
(26, 50, 3.2),
(27, 200, 14.8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `name_marca` varchar(256) NOT NULL,
  `pais` varchar(256) NOT NULL,
  `pais_api` varchar(256) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `imagen` varchar(256) DEFAULT NULL,
  `imagen_flag` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `name_marca`, `pais`, `pais_api`, `descripcion`, `imagen`, `imagen_flag`) VALUES
(16, 'Adalya', 'Turquia', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg'),
(17, 'Adalya Black', 'Turquia', 'Turkey', 'Tabaco Negro', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg'),
(15, 'Afzal', 'Índia', 'India', 'Tabaco rubio.', 'https://i.ibb.co/XXrtNZm/afzal.png', 'https://restcountries.eu/data/ind.svg'),
(5, 'Aloha', 'España', 'Spain', 'Tabaco rubio', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg'),
(13, 'Apocalypse', 'Alemania', 'Germany', 'Tabaco rubio.', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg'),
(30, 'AquaMentha', 'Turquía', 'Turkey', 'Tabaco Rubio.', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg'),
(12, 'Blue Horse', 'Turquía', 'Turkey', 'Tabaco Rubio', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg'),
(32, 'Chronos', 'España', 'Spain', 'Tabaco Rubio.', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg'),
(6, 'Darkside', 'Rusia', 'Russian', 'Tabaco negro', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg'),
(7, 'Dozaj', 'Turquia', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg'),
(8, 'Dumanji', 'Francia', 'France', 'Tabaco rubio', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg'),
(11, 'Element', 'Rusia', 'Russia', 'Tabaco de diferentes gamas', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg'),
(31, 'Holster', 'Alemania', 'Germany', 'Tabaco Rubio.', 'https://i.ibb.co/9TpzZqQ/holster.png', 'https://restcountries.eu/data/deu.svg'),
(9, 'Hookain', 'Alemania', 'Germany', 'Tabaco rubio', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg'),
(33, 'Mala Vida', 'Europa', 'europe', 'Tabaco rubio.', 'https://i.ibb.co/wCzsqD1/malavida.png', 'https://i.ibb.co/vXky7Rc/eur.jpg'),
(18, 'Marif', 'Turquia', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg'),
(10, 'Musthave', 'Rusia', 'Russia', 'Tabaco negro', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg'),
(1, 'Nameless', 'Alemania', 'Germany', 'Tabaco rubio', 'https://i.ibb.co/Jys8s36/nameless.png', 'https://restcountries.eu/data/deu.svg'),
(23, 'Overdozz', 'España', 'Spain', 'Tabaco Rubio', 'https://i.ibb.co/J3KbWds/overdozz.jpg', 'https://restcountries.eu/data/esp.svg'),
(19, 'Privilege', 'España', 'Spain', 'Tabaco rubio', 'https://i.ibb.co/87Vtt9g/privilege.jpg', 'https://restcountries.eu/data/esp.svg'),
(4, 'Revoshi', 'Turquia', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg'),
(3, 'Serbetli', 'Alemania', 'Germany', 'Tabaco rubio premium', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg'),
(14, 'Smyrna', 'Turquía', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg'),
(2, 'Tangiers', 'USA', 'usa', 'Tabaco negro', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mezcla`
--

CREATE TABLE `mezcla` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `estilo` varchar(255) NOT NULL,
  `paqueo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `porcentaje`
--

CREATE TABLE `porcentaje` (
  `id` int(11) NOT NULL,
  `porcentaje` double NOT NULL,
  `tabaco` int(11) NOT NULL,
  `tabaco_name` varchar(255) NOT NULL,
  `mezcla` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabaco`
--

CREATE TABLE `tabaco` (
  `id` int(11) NOT NULL,
  `name_tabaco` varchar(256) NOT NULL,
  `name_api` varchar(256) NOT NULL,
  `descripcion` varchar(256) NOT NULL,
  `marca` varchar(256) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen_flag` varchar(255) NOT NULL,
  `fecha_publicacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `novedad` varchar(1) NOT NULL DEFAULT 'F'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabaco`
--

INSERT INTO `tabaco` (`id`, `name_tabaco`, `name_api`, `descripcion`, `marca`, `imagen`, `imagen_flag`, `fecha_publicacion`, `novedad`) VALUES
(76, '90+', '90plus', 'Limón y menta', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(92, 'Adam & Eve', 'adam_and_eve', 'Dos Manzanas', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(183, 'Alhambra', 'alhambra', 'Granada, mezcla de bayas, manzana, fresa, cereza y menta. ', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(171, 'Amazon', 'amazon', 'Suave gofre belga al horno con notas de leche, caramelo y crema. Pastelería fina. El mejor sabor a confitería.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(226, 'American', 'american', 'La famosa crema de cacahuete americana.', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(129, 'American Pei', 'american_pei', 'Cremosa tarta de manzana a la americana coon toffee. Receta increiblemente deliciosa de la abuela.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(184, 'Amsterdan Lights', 'amsterdan_lights', 'Mezcla de bayas, fresa y cereza.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(63, 'Atlantic', 'atlantic', 'Fresco y refrescante caramelo de cereza', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(154, 'Atmosphere', 'atmosphere', 'limonada de zumo de sandía, melón y sirope de berberis vulgaris', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(212, 'Ay, Carmela!', 'ay_carmela', 'El público exclama, ¡Ay, Carmela! Obra Maestra compuesta de melón, naranja y arándanos.', 'Smyrna', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(328, 'Babbel', 'babbel', 'Chicle y menta.', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:30:31', 'F'),
(197, 'Babyelya', 'babyelya', 'Granadina, cereza y menta.', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(102, 'Bahamas', 'bahamas', 'Piña, melón y frescor', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(188, 'Baku Nights', 'baku_nights', 'Chicle, Plátano, Menta y Hielo.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(28, 'Balance', 'balance', 'Banana y fresa', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(198, 'Baron Rouge', 'baron_rouge', 'Higos, membrillo, fresa y sandía.', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(309, 'Beirut Al Araq', 'beirut_al_araq', 'Anís, vainilla y menta Blue Horse.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:58:35', 'F'),
(241, 'Berlin Nights', 'berlin_nights', 'Melocotón y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(149, 'Big Black Barries', 'big_black_barries', 'Intenso sabor a uva moscatel con esencia de mentol..', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(225, 'Bise', 'bise', 'Jugo de granada fresca.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(321, 'Black Box', 'black_box', 'Acai, hielo y menta.', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:27:53', 'F'),
(289, 'Black Cane Mnt', 'black_cane_mnt', 'Menta.', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(285, 'Black Dragan', 'black_dragan', 'Cola.', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(290, 'Black Horchachi', 'black_horchachi', 'Caramelo, nueces, chocolate y café.', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(286, 'Black Lem Brry', 'black_lem_brry', 'Frambuesa y limón.', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(287, 'Black Pych', 'black_pych', 'Melocotón poderoso.', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(77, 'Black Star', 'black_star', 'Maracuyá, chicle, melocotón y menta', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(288, 'Black Voodoo', 'black_voodoo', 'Sabores a pino, notas de bosque junto con frutas silvestres.', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(302, 'Blackbeard Soul', 'blackbeard_soul', 'Mojito Waba.', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(2, 'Blacknana', 'blacknana', 'Uva moscatel y menta', 'Nameless', 'https://i.ibb.co/Jys8s36/nameless.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(78, 'Blade', 'blade', 'Mezcla de bayas, fruta del dragon y menta', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(50, 'Blck Grp', 'blck_grp', 'Uva negra', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(354, 'BLUBRRY MNT', 'blubrry_mnt', 'Arándanos y menta.', 'Mala Vida', 'https://i.ibb.co/qDJQcjS/blueberry.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:12:19', 'F'),
(242, 'Blue Dragan', 'blue_dragan', 'Fruta dragón, arándano y bombón helado.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(243, 'Blue I\'ss', 'blue_iss', 'Arándano y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(104, 'Blue mix', 'blue_mix', 'Uvas, arándanos, piña y coco', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(37, 'Blue Tropic', 'blue_tropic', 'Curaçao', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(244, 'Blue Yellow', 'blue_yellow', 'Melón y arándanos.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(29, 'Blueberry', 'blueerry', 'Arándanos', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(213, 'Bombay Fuzion', 'bombay_fuzion', 'La tradicional hoja de betel india con el balance perfecto de la dulzura de la nuez de areca.', 'Afzal', 'https://i.ibb.co/XXrtNZm/afzal.png', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', ''),
(214, 'Bombay Nights', 'bombay_nights', 'Refresca tu paladar con este sabor exótico o mézclalo con otro sabor y experimente la magia del verdadero sabor de la India.', 'Afzal', 'https://i.ibb.co/XXrtNZm/afzal.png', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', ''),
(333, 'Bono', 'bono', 'Galleta wafer con crema de avellanas y leche.', 'Holster', 'https://i.ibb.co/qrj8D2x/bono.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:40:29', 'F'),
(356, 'BREAK', 'break', 'Tarta de arándanos.', 'Privilege', 'https://i.ibb.co/M5vb4YG/break.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:17:50', 'F'),
(355, 'Breathe', 'breathe', 'Equilibrio perfecto entre menta y fresa.', 'Privilege', 'https://i.ibb.co/xjKgHtR/breathe.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:17:03', 'F'),
(221, 'Brickfielder', 'brickfielder', 'Fresa salvaje y arándano dulce.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(144, 'Bubblenciaga', 'bubblenciaga', 'El típico chicle americano en su momento de mayor sabor. Dulce y duradero hasta dejarte boquiabierto.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(167, 'Buran', 'buran', 'Una popular bebida mexicana con un dulce y tierno sabor a frutos secos y especias.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(4, 'C111 Ololiuqui', 'c111_ololiuqui', 'Cola y vainilla', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(26, 'C119 Kosmik', 'c119_kosmik', 'Dos manzanas', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(5, 'C16 Pink Grapefruit', 'c16_pink_prapefruit', 'Pomelo', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(6, 'C27 Cocoa', 'c27_cocoa', 'Cacao', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(7, 'C3 Strawberry', 'c3_strawberry', 'Fresa', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(8, 'C34 Its like that one breakfast cereal', 'c34_its_like_that_one_breakfast_cereal', 'Cereales americanos de colores', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(9, 'C38 Kashmir Peach', 'c38_kashmir_peach', 'Melocotón con toques florales', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(10, 'C4 Blitzsturm', 'c4_blitzsturm', 'Lavanda con mentol', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(11, 'C5 Lemon Blossom', 'c5_lemon_blossom', 'Limón con toques florales', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(12, 'C57 Sevilla Orange', 'c57_sevilla_orange', 'Naranja dulce', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(13, 'C58 Welch Cream', 'C58_welch_cream', 'Crema de whisky', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(14, 'C59 Blackberry', 'c59_blackberry', 'Mora', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(3, 'C6 Pineapple', 'c6_pineapple', 'Piña', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(15, 'C62 Strawberry Kiwi', 'c62_strawberry_kiwi', 'Fresa y Kiwi', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(27, 'C69 PassionFruit', 'c69_passionfruit', 'Fruta de la pasión', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(16, 'C74 Lemon Lime', 'c74_lemon_lime', 'Lima y limón', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(17, 'C76 Apricot Spring Blend', 'c76_apricot_spring_blend', 'Albaricoque floral', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(18, 'C77 Tropical Revenge', 'c77_tropical_revenge', 'Piña, pera y naranja', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(19, 'C78 Horchata', 'c78_horchata', 'Horchata', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(20, 'C9 Melon Blend', 'c9_melon_blend', 'Melon y sandia', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(21, 'C90 Peach Iced Tea', 'c90_peach_iced_tea', 'Té helado de melocotón', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(22, 'C92 Mimon', 'c92_mimon', 'Limon y menta', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(23, 'C94 Maraschino Cherry', 'c94_maraschino_cherry', 'Frutas mixtas con énfasis de cereza', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(24, 'C96 Cane Mint', 'c96_cane_mint', 'Para muchos la mejor menta del mundo', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(25, 'C96a Cane Mint Vault', 'c96a_cane_mint_vault', 'Fórmula inicial de Cane Mint', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', ''),
(145, 'Cactopus', 'cactopus', 'Dulce y cremoso al mismo tiempo. El sabor dulce a cactus con la fresa y vainilla hacen un trio delicioso e intenso. ', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(94, 'Cane Na3ne', 'cane_na3ne', 'Azúcar de caña y menta', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(179, 'Capitan Pinto', 'capitan_pinto', 'Sabor a galleta María.', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(240, 'Carioca', 'carioca', 'El dulce brasileño por excelencia: base de exquisito cacahuete con fondo realmente dulce.', 'Smyrna', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(84, 'Carnival', 'carnival', 'Mezcla de frutas exóticas', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(85, 'Casablanca', 'casablanca', 'Té especiado, jenjibre, nata y toque de canela', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(139, 'Ch3ri Zkittlez', 'cheri_zkittlez', 'Sabor intenso a cereza y fruta de dragón. Mejor de lo que te puedas imaginar.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(180, 'Chao Bella', 'chao_bella', 'Sabor a fresa.', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(206, 'Chernobyl', 'chernobyl', 'Mandarina helada y arándanos.', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(294, 'CHM', 'chm', 'El placer de más puro sabor a chocolate con el frescor de la menta.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(353, 'CHRRY MNT', 'chrry_mnt', 'Cereza y menta.', 'Mala Vida', 'https://i.ibb.co/2txDFT4/cherry.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:11:37', 'F'),
(245, 'Chung Wood Kizz', 'chung_wood_kizz', 'Chicle, canela y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(283, 'Cindy\'s', 'cindys', 'Bayas, hielo, mango, maracuyá, melón y sandía.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(296, 'CM', 'cm', 'Suave sabor a menta fresca ideal para maridar.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(178, 'Code In Love', 'code_in_love', 'Sabor exótico de Cactus cremoso con melocotón, sandía y vainilla.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(152, 'Cosmos', 'cosmos', 'Kiwi, manzana y menta', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(134, 'Cotton Candy Craem', 'cotton_candy_craem', 'Algodón de azúcar, sandía, mango y arándanos.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(86, 'Cuba Dream', 'cuba_dream', 'Exótic tropical fruits', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(300, 'DAEM', 'daem', 'Matices afrutados de dos manzanas con las florales del saúco y el frescor de la menta.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(357, 'DANCE', 'dance', 'Jugoso melocotón con un toque de menta.', 'Privilege', 'https://i.ibb.co/SvqhWdZ/dance.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:18:22', 'F'),
(318, 'Dark Blue', 'dark_blue', 'Frutos zzules: moras, arándanos y uva. ', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:19:40', 'F'),
(70, 'Darkside Hola', 'darkside_hola', 'Cola con limón', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(87, 'Dead Sea', 'dead_sea', 'Coca cola con cereza helada', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(339, 'Deadline', 'deadlin', 'Frutos silvestres con un toque refrescante. Es hora de que tú seas quien marque los tiempos del juego. Atrévete con este afrutado sabor.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:53:17', 'F'),
(211, 'Deja Vu', 'deja_vu', 'Revive el flash del Deja Vu. Nunca antes visto: flor de sauco y lemongrass.', 'Smyrna', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(306, 'Desperado', 'desperado', 'Pomelo, granadina, fresa, lima y uva.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:54:15', 'F'),
(358, 'Discover', 'discover', 'Refrescante y puro sabor a limón.', 'Privilege', 'https://i.ibb.co/n806CcB/discover.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:18:56', 'F'),
(189, 'Discovery', 'discovery', 'Chicle, Pomelo, Limón y Lima.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(359, 'DIVE', 'dive', 'Melón mentolado.', 'Privilege', 'https://i.ibb.co/PzhQmmQ/dive.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:19:25', 'F'),
(291, 'Double A', 'double_a', 'Clásico manzana verde y manzana roja.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(30, 'Double Effect', 'double_effect', 'Cola y limón', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(246, 'Dragan Code', 'dragan_code', 'Cola y bebidas energéticas.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(307, 'Dulcinea', 'dulcinea', 'Melocotón, manzana y maracuyá.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:55:40', 'F'),
(49, 'Duses', 'duses', 'Pera fresca', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(51, 'D´App Strng', 'dapp_strng', 'Dos manzanas intenso', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(161, 'Eclipse', 'eclipse', 'Zumo de piña', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(38, 'Ehke', 'ehke', 'Pastel de limón', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(31, 'Elon', 'elon', 'Melón', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(340, 'Era', 'era', 'Helado de pistacho. Completa la misión y alcanza un sabor único.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:53:49', 'F'),
(52, 'Eskimo Cndy', 'eskimo_cndy', 'Caramelos helados', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(247, 'Eskimo Leon', 'eskimo_leon', 'Kiwi, limón y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(53, 'Eskimo Lmn', 'eskimo_lmn', 'Limón helado', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(54, 'Eskimo P´App', 'eskimo_dapp', 'Piña helada', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(55, 'Eskimo Wtrmln', 'eskimo_wtrmln', 'Sandía helada', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(308, 'Esmeralda', 'esmeralda', 'Kiwi, fruta del dragón, maracuyá, naranja enana.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:57:06', 'F'),
(79, 'Eternal', 'eternal', 'Puro de vainilla', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(346, 'Eve Ice', 'eve_ice', 'Manzana verde y hielo.', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 09:01:18', 'F'),
(175, 'Excalibur', 'excalibur', '¡Fresco! ¿A quién no le gustan los cítricos? ¡Aquí los fusionamos con toques florales y menta que te dejará un refrescante regusto!', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(248, 'Exotic Rush', 'exotic_rush', 'Piña y limón.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(136, 'Eyez Kalt', 'eyez_kalt', 'Muy frío. Caramelo de menta refinado con plátano y lima.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(325, 'Fanex', 'fanex', 'Mango, maracuyá y hielo.', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:29:39', 'F'),
(141, 'Fellatio', 'fellatio', 'Batido de sandía, melón dulce, maracuyá y frutas el bosque.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(56, 'Free Spartacus', 'free_spartacus', 'Mix de flor de saúco', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(95, 'French Rivera', 'french_rivera', 'Chicle y melón', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(320, 'Fresh Mix', 'fresh_mix', 'Mandarina, cereza y hielo.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:20:28', 'F'),
(297, 'G', 'g', 'Elegante y refinado. La magia de la uva con notas dulces de la miel.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(295, 'GB', 'gb', 'Galleta de jengibre, sirope y canela.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(249, 'Gipsy Kings', 'gipsy_kings', 'Melón dulce, melocotón, sandía y limón.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(201, 'Gobfather', 'gobfather', 'Doble manzana.', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(323, 'Golden Anna', 'golden_anna', 'Piña y hielo.', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:28:48', 'F'),
(39, 'Grapic', 'grapic', 'Manzana verde helada', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(32, 'Green Flash', 'green_flash', 'Menta', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(142, 'Green Lean', 'green_lean', 'La mejor lima que jamás hayas probado, convertida en zumo de lima. Siente el sabor y el frescor de miles de limas que explotarán en tu cazoleta.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(322, 'Green Leo', 'green_leo', 'Saúco, Jengibre, Limón y Lima.', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:28:19', 'F'),
(250, 'Green Leon Kizz', 'green_leon_kizz', 'Lima y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(40, 'Green Mix', 'green_mix', 'Lima, manzana verde, kiwi y menta', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(204, 'Halep Boom', 'halep_boom', 'Lichi y arándanos.', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(36, 'Hate 69', 'hate_69', 'Mezcla de frutas heladas', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(251, 'Hawaii', 'hawaii', 'Piña, mango y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(101, 'Heaven', 'heaven', 'Fruta tropical, melón y menta', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(208, 'Hera', 'hera', 'El sabor preferido de la esposa de Zeus, combinación ganadora de cereza y limón.', 'Smyrna', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(315, 'Hijo De Phruta', 'hijo_de_phruta', '16 frutas diferentes con caramelo cremoso y un toque fresco de mentol.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:10:10', 'F'),
(41, 'I Blueberry', 'i_blueberry', 'Arándanos helados', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(71, 'I Granny', 'i_granny', 'Manzana verde dulce', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(252, 'I\'ss', 'iss', 'Hielo', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(253, 'I\'ss Boni', 'iss_boni', 'Menta dulce y chicle.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(260, 'I\'ss Kaktu', 'iss_kaktu', 'Cactus y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(254, 'I\'ss Lie On The Rocks', 'iss_lie_on_the_rocks', 'Hielo, lima, arándano y chicle.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(42, 'Icbodrumm', 'icbdrumm', 'Mandarina helada', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(33, 'Ice Bird', 'ice_bird', 'Kiwi helado', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(330, 'Ice Kaktuz', 'ice_kaktuz', 'Una combinación afrutada, ácida y a la vez dulce del cactus con hielo.', 'Holster', 'https://i.ibb.co/pyf4k8h/icekaktus.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:37:33', 'F'),
(34, 'Ice Pin', 'ice_pin', 'Piña helada', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(43, 'Iceber', 'iceber', 'Frutas del bosque heladas', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(227, 'Icertan', 'icertan', 'Frutas del bosque con mandarina helada.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(228, 'Icitmin', 'icitmin', 'Limón y pomelo con menta.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(229, 'Icraper', 'icraper', 'Uva y frambuesa helada.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(45, 'Imcesy', 'imcesy', 'Lima, lichi y arándanos', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(181, 'Istanblue', 'istanblue', 'Uva, arándano y menta.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(46, 'Istanbul Nights', 'istanbul_nights', 'Frambuesa, arándanos y fresa', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(88, 'Jelly Bear', 'jelly_bear', 'Osito de gominola', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(316, 'Jizzy Pia', 'jizzy_pia', 'Pera, lima y sandía.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:10:46', 'F'),
(202, 'Joker', 'joker', 'Ice banana y fresa', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(281, 'Jungle Jungle', 'jungle_jungle', 'Naranja, limón y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(143, 'Kaffa Yayo', 'kaffa_yayo', 'El mejor postre con sabor a coco. Coco de Hawai cubierto por una fina crema de almendras con vainilla bourbon.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(343, 'Kairos', 'kairos', 'Golosina de Cola. Viaja al pasado y rememora tu infancia.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:54:41', 'F'),
(329, 'Kamasutra', 'kamasutra', 'Bayas, Cereza, Fresa, Frutos del bosque, Hielo, Menta y Uva.', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:31:01', 'F'),
(210, 'Karnaval', 'karnaval', '¡Que empiece la fiesta! Baila con esta jugosa mezcla entre sandía, pera y melón.', 'Smyrna', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(169, 'Khamseen', 'khamseen', 'Una compleja composición de bayas que tocará una fibra sensible en cada corazón.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(203, 'King Leonidas', 'king_leonidas', 'Violeta, arándanos y chocolate blanco.', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(151, 'Kivi King', 'kivi_king', 'Kiwi afrutado intenso sobre una cama de lima. Agradablemente fresco con un toque de menta y mentol.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(255, 'Kizz', 'kizz', 'Menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(282, 'Krosty App', 'krosty_app', 'Manzana asada.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(96, 'Kush', 'kush', 'Sabor CBD', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(97, 'Kush Na3ne', 'kush_ne3ne', 'Sabor CBD con menta', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(190, 'La Beirut', 'la_beirut', 'Café con caramelo.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(280, 'La Bonita', 'la_bonita', 'Uva, fresa, maracuyá, manzana y cereza.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(205, 'La Force', 'la_force', 'Ice fresa y melón.', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(256, 'Lady Killer', 'lady_killer', 'Melocotón, mango, menta y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(174, 'Lambada', 'lambada', '¡Baila al ritmo del famoso gofre holandés! Redondos con caramelo por dentro. ¡Qué buenos están, madre mía!', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(80, 'Land Of Fire', 'land_of_fire', 'Vodka, café, licor, nata', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(132, 'Laoz', 'laoz', 'Jugo dulce de cereza, afrutado e intenso combinado con arándanos. Añadimos mentol para hacerlo más fresco. Sabor afrutado y fresco. ', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(146, 'Lemenciaga', 'lemenciaga', 'Un sabor refrescante de limón y esencia de té verde con el indispensable toque de menta fresca.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(164, 'Lena', 'lena', 'Este es el sabor suave a galletas, con fresas silvestres al horno.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(257, 'Leon Pi', 'leon_pi', 'Tarta de limón.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(72, 'LM Blast', 'lm_blast', 'Refrescante y agrio sabor de limón maduro', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(191, 'London Fog', 'london_fog', 'Pomelo, rosa negra y menta dulce.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(67, 'Los Locos', 'los_locos', 'Deliciosa y cremosa irish cream', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(258, 'Love 66', 'love_66', 'La receta de oro de hookah de toda la vida. 6 sabores y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(106, 'Lover', 'lover', 'Melón, bayas, especias y fresas', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(261, 'M.M.', 'm_m', 'Perfume de Marilyn Monroe. Pruébalo y lo entenderás.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(262, 'Manko Tanko', 'manko_tanko', 'Mango y maracuyá.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(263, 'Manko Tanko I\'ss', 'manko_tanko_iss', 'Mango, maracuyá y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(317, 'Margaritail', 'margaritail', 'Cocktail margarita.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:18:53', 'F'),
(81, 'Marshall', 'marshall', 'Brownie, naranja, menta', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(68, 'Maverick', 'maverick', 'Limonada con hielo, refrescante, única e incomparable', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(215, 'Mediterranean Punch', 'mediterranean_punch', 'Experimenta la emoción tropical de este refrescante sabor. Una deliciosa combinación de lima especiada con naranja dulce y menta.', 'Afzal', 'https://i.ibb.co/XXrtNZm/afzal.png', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', ''),
(162, 'Mekong', 'mekong', 'Desprende un intenso aroma a Calamansi. Creado mezclando limón, lima y Kumquat.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(314, 'Mellionair', 'mellionair', 'El padrino de los sabores a sandía. Intenso y jugoso sabor a sandía con notas de mentol.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:09:13', 'F'),
(103, 'Meridian', 'meridian', 'Sandía, melón y manzana', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(230, 'Merry', 'merry', 'Moras del bosque.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(298, 'MG', 'mg', 'Una ola para los sentidos. Intenso y equilibrado chicle y menta fresca.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(73, 'MG Assi', 'mg_assi', 'Batido con pulpa de mango', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(193, 'Mi Amor', 'mi_amor', 'Plátano, mezcla de bayas y hielo.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(332, 'Miss Joosy', 'mss_joosy', 'Las frambuesas ácidas se encuentran con las fresas más jugosas y un toque de frescor.', 'Holster', 'https://i.ibb.co/QvfGQW7/missjoosy.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:39:52', 'F'),
(165, 'Mississippi', 'mississippi', 'Sabor a carne de cerezas maduras, jugosas y dulces, que se complementan con la ligera astringencia del hueso.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(82, 'Mito', 'mito', 'Caramelo, canela, toque helado', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(292, 'Mixed F', 'mixed_f', 'Bomba explosiva que revoluciona los sentidos. Manzana, ciruela, pera y bayas.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(130, 'Mng Loco', 'mng_loco', 'Una combinación de diferentes tipos de mango, un toque de energía y nuestro nuevo y aún más fresco sabor a mentol.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(264, 'Moon Dream', 'moon_dream', 'Vainilla, chicle, canela y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(192, 'Moscow Evenings', 'moscow_evenings', 'Sandía, melocotón y menta.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(334, 'Mr. John', 'mr_john', 'Jugosa mezcla entre la piña, el melocotón y el limón.', 'Holster', 'https://i.ibb.co/zHkYW8q/mrjohn.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:41:27', 'F'),
(303, 'Mulan Sword', 'mulan_sword', 'Kiwi y mango.', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(93, 'Na3ne', 'na3ne', 'Menta', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(172, 'Nairobi', 'nairobi', '¿La sensación? ¡Creemos que sí!, ¿Quién no conoce el sabor del cola cao? ¡Este sabe igual!', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(62, 'Nazaré', 'nazare', 'Mezcla única de melón, sandía, fruta de la pasión, chicle y tres sabores adicionales', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(182, 'No Woman No Cry', 'no_woman_no_cry', 'Pera, fresa y menta.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(338, 'Noctis', 'noctis', 'Lima helada. La noche es para los más arriesgados, al igual que este sabor. Disfruta la experiencia al límite.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:52:53', 'F'),
(345, 'Obscure', 'obscure', 'Menta fresca.', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 09:00:46', 'F'),
(335, 'Occasum', 'occasum', 'Chicle de canela. Disfruta del caer de los astros con un sabor explosivo.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:50:16', 'F'),
(58, 'Ola Zapata', 'ola_zapata', 'CocaCola con canela', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(299, 'OM', 'om', 'Curiosa combinación de naranja madura y refrescante menta verde.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(200, 'Ommy Shelby', 'ommy_shelby', 'Tarta de limón', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(341, 'One Second', 'one_second', 'Sandía Picante. Es hora de que te des un tiempo y disfrutes de esta afrutada aventura.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:54:11', 'F'),
(235, 'Oricman', 'oricman', 'Naranja y mango helado.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(133, 'Original Vanta Zotic', 'original_vanta_zotic', 'Batido afrutado de maracuyá, durazno y zumo de naranja, recuerda a un limonada muy famosa con un toque exótico.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(173, 'Orko', 'orko', '¡Sabor simplemente espectacular! Prueba este increíble mix de suave cascara de limón, lima y frescor de menta. ', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(57, 'Orng Mnt', 'orng_mnt', 'Naranja helada', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(352, 'ORNGE MNT', 'ornge_mnt', 'Naranja y menta.', 'Mala Vida', 'https://i.ibb.co/BjyFyd7/orange.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:11:04', 'F'),
(135, 'Orogina', 'orogina', 'Naranja y mandarina combinadas con un toque de White Caek.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(1, 'Pablo', 'pablo', 'Lima y arándanos', 'Nameless', 'https://i.ibb.co/Jys8s36/nameless.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(64, 'Pacific', 'pacific', 'Suave, aterciopelado y refrescante. Helado cremoso de frutos del bosque', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(265, 'Pair Kizz', 'pair_kizz', 'Pera y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(59, 'Pancho Villa', 'pancho_villa', 'Mix frutal con melón y limón', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(266, 'Paradiso I\'ss', 'paradiso_iss', 'Pomelo y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(313, 'Paris Romantique', 'paris_romantique', 'Piña, fresa, cactus y menta Blue Horse.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:01:21', 'F'),
(267, 'Passion Kizz', 'passion_kizz', 'Maracuyá y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(342, 'Pause', 'pause', 'Dulce Café Moca al estilo Americano. Conquista el camino y arrasa a cada paso con esta increíble experiencia.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:54:24', 'F'),
(336, 'Perception Of Time', 'perception_of_time', 'Chicle de bayas brasileñas. Empieza a ver el mundo desde otra perspectiva con cada calada.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:51:15', 'F'),
(138, 'Pic Zkittlez', 'pic_zkittlez', 'Refrescante té helado de melocotón salvaje y albaricoque. Mezclado con menta y unos ingredientes especiales que no te contamos.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(100, 'Pink Kiss', 'pink_kiss', 'Frutas exóticas dulces', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(177, 'Pink Lemenciaga', 'pink_lemenciaga', 'El pomelo rosado se encuentra con Lemenciaga.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(155, 'Pinkman', 'pinkman', 'Pomelo rosa, sirope de frambuesa y fresa', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(236, 'Pistaicrem', 'pistaicrem', 'Helado de pistacho.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(349, 'PNA CLADA', 'pna_clada', 'Piña colada.', 'Mala Vida', 'https://i.ibb.co/tHYZYWd/PnaClada.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:08:17', 'F'),
(268, 'Power', 'power', 'Bebida energética.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(147, 'Punani', 'punani', 'Jugoso, jugosísimo, mango y maracuyá fusionado con naranja y piña.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(305, 'Punkman', 'punkman', 'Mezcla de frambuesas y fresa.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:48:09', 'F'),
(269, 'Pych Blue Kizz', 'pych_blue_kizz', 'Melocotón, arándanos y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(157, 'Raspi', 'raspi', 'Mermelada de frambuesa', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(270, 'Red Alert I\'ss', 'red_alert_iss', 'Fresa, plátano y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(324, 'Red Balls', 'red_balls', 'Hielo y Cereza.', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:29:16', 'F'),
(327, 'Red Fall', 'red_fall', 'Sandí y hielo.', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:30:16', 'F'),
(271, 'Rhapsody', 'rhapsody', 'Melocotón, piña, mora, menta y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(220, 'Rio Grande', 'rio_grande', 'Efecto de frío amargo que hace helada cualquier mezcla.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', '');
INSERT INTO `tabaco` (`id`, `name_tabaco`, `name_api`, `descripcion`, `marca`, `imagen`, `imagen_flag`, `fecha_publicacion`, `novedad`) VALUES
(312, 'Rio Kiss', 'rio_kiss', 'Maracuyá, melocotón y menta Blue Horse.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:00:41', 'F'),
(89, 'Rio Lady', 'rio_lady', 'Piña, melón, chicle y toque helado', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(47, 'Rotana', 'rotana', 'Melón con nata y fresa', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(83, 'Royal Style', 'royal_style', 'Muffin de arándano', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(69, 'Shaka Shaka', 'shaka_shaka', 'Menta dulce, penetrante y agradable. Adictiva.', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(168, 'Sirocco', 'sirocco', 'Sabor agridulce de la exótica fruta del tamarindo con un tinte cítrico.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(272, 'Skyfall', 'skyfall', 'Melocotón, sandía, melón y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(140, 'Sm!nt', 'smint', 'Experimenta el sabor refrescante de nuestro caramelo de menta a la tic tac. Fresco y dulce.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(331, 'Smurf Daddy', 'smurf_daddy', 'Deliciosa mezcla de moras, frutas del bosque y maracuyá con yogur.', 'Holster', 'https://i.ibb.co/sPL0P1y/smurf.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:38:45', 'F'),
(150, 'Soleiro Spliff', 'soleiro_spliff', 'Una explosión de sabores. Marakuyá, caramelo de naranja y helado de vainilla. ', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(170, 'Southerly Buster', 'southerly_buster', 'Un cóctel tropical con mango dulce y jugosa fruta de la pasión con la dulzura aterciopelada del melocotón.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(159, 'Space Flavour', 'space_flavour', 'Mango, lichi, fruta de la pasión y pétalos de rosa', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(158, 'Space Force', 'space_force', 'Tarta de pistacho con frambuesa', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(156, 'Space Invaders', 'space_invaders', 'Pistacho', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(66, 'Sparrow', 'sparrow', 'Mezcal de piña y mango con efecto frío', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(44, 'Spepinch', 'spepinch', 'Lima y melocotón a la parrilla', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(61, 'Splash', 'splash', 'Naranja picante, fresca y cremosa', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(311, 'Sputnik', 'sputnik', 'Hielo, maracuyá y pomelo.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:59:56', 'F'),
(153, 'Stellar', 'stellar', 'Lima & Limón', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(48, 'Stra Shark', 'stra_shark', 'Batido de fresa', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(237, 'Stra Yoburt', 'stra_yoburt', 'Yogurt de fresa.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(310, 'Strangers In The Night', 'strangers_in_the_night', 'Hielo, uva y zarzamora.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:59:21', 'F'),
(217, 'Strong Freezy Lemon', 'strong_freezy_lemon', 'Una fuerte combinación refrescante, limón con un toque helado que te llevará a una gran experiencia cachimbera.', 'Afzal', 'https://i.ibb.co/XXrtNZm/afzal.png', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', ''),
(218, 'Strong Mango Magic', 'strong_mango_magic', 'Un sabor fuerte preparado para todos los amantes del mango. Fuma y permite que este sabor produzca una explosión de sabor en tu paladar.', 'Afzal', 'https://i.ibb.co/XXrtNZm/afzal.png', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', ''),
(238, 'Summer Time', 'summer_time', 'Cítricos y pomelos dulces y frescos.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(98, 'Sun Beach', 'sun_beach', 'Kiwi, piña y melón', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(74, 'Supernova', 'supernova', 'Impresionante mentol frío', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(273, 'Swees Bomb', 'swees_bomb', 'Bombón suizo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(90, 'Sweet Night', 'sweet_night', 'Guayaba, melón, kiwi, lima y fruta nefelio (rambutan)', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(350, 'SWIT MLON', 'swit_mlon', 'Melón refrescante.', 'Mala Vida', 'https://i.ibb.co/5jhrKjJ/Switmlon.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:09:15', 'F'),
(239, 'SWT Pistacho', 'swt_pistacho', 'Típico sorbete helado junto al cremoso pistacho.', 'Smyrna', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(35, 'T-Ber', 't-ber', 'Frutos rojos tostados', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(65, 'T.Riko', 'triko', 'Deliciosa té con leche, cacao y canela', 'Aloha', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', ''),
(75, 'Tear', 'tear', 'Rico sabor de limonada dulce de pera', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(219, 'Tennessee', 'tennessee', 'Cóctel de margarita con aromas de lima limón.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(194, 'The Coldest Green', 'the_coldest_green', 'Lima Fuerte.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(195, 'The Perfect Storm', 'the_perfect_storm', '6 ingredientes secretos, hielo y menta.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(187, 'Thor\'s Flash', 'thors_flash', 'Menta fuerte.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(274, 'Three Angels', 'three_angels', 'Pomelo, maracuya y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(337, 'Tik Tak', 'tik_tak', 'Muffin de limón y lima. Haz que el tiempo se detenga con esta dulce mezcla.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:51:55', 'F'),
(344, 'Timing', 'timing', 'Desierto tropical con un toque fresco. Descubre un oasis de placer de la mano de este delicioso sabor.', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:54:57', 'F'),
(176, 'Tokio', 'tokio', 'Déjate llevar por este auténtico sabor conseguido y delicioso! Combinando melocotón y lima con los extraordinario del jazmín y el toque helado. ', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(185, 'Tokio Desire', 'tokio_desire', 'Mango, melón y cereza. ', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(275, 'Tony\'s Destiny', 'tonys_destiny', 'Melocotón, maracuyá y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(105, 'Touty Red', 'touty_red', 'Frutos rojos', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(216, 'Tropical Explosion', 'tropical_explosion', 'Extractos florales que despertarán tus sentidos con cada bocanada de humo. Los matices dulces, almizclados y mentolados rodearán tu paladar con su encantador efecto.', 'Afzal', 'https://i.ibb.co/XXrtNZm/afzal.png', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', ''),
(99, 'Tsunami', 'tsunami', 'Sandía, arándanos y menta', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', ''),
(278, 'Twist Pi', 'twist_pi', 'Tarta de uva.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(276, 'Two App', 'two_app', 'Dos manzanas. Verde y roja.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(259, 'Two Yellow I\'ss', 'two_yellow_iss', 'Melón, sandía y hielo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(277, 'Tynky Wynky', 'tynky_wynky', 'Uva, limón y cardamomo.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(209, 'Ugly King', 'ugly_king', 'Disfruta de la magia tropical de las frutas prohibidas: melocotón y mango helado.', 'Smyrna', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(160, 'Uranus', 'uranus', 'Frutas del bosque', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(60, 'Vamos Ernesto', 'vamos_ernesto', 'Chicle de canela', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(284, 'Van', 'van', 'Vainilla.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(351, 'VANLLA CINAMN', 'vanlla_cinamn', 'Vainilla.', 'Mala Vida', 'https://i.ibb.co/QcbMxHw/vanilla.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:10:16', 'F'),
(137, 'Vantanaz', 'vantanaz', 'El fuerte sabor a piña se mezcla con una combinación de mango, pomelo y zumo de durazno. Idéntico a Vanta Piña.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(186, 'Venezia Serenata', 'venezia_serenata', 'Limoncello, fresa y lima. ', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(91, 'Vip 44', 'vip_44', 'Cactus, lima y pepino', 'Dozaj', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(319, 'Vista Show', 'vista_show', 'Helado de pistacho.', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:20:02', 'F'),
(163, 'Volta', 'volta', 'Esta es una combinación de sandía madura y fresas tiernas con regusto a limón.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', ''),
(279, 'Watermelon Kizz', 'watermelon_kizz', 'Sandía y menta.', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(148, 'White Caek', 'white_caek', 'El más sabroso! tarta de queso con un toque de caramelo.', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(196, 'Wind Of Amazon', 'wind_of_amazon', 'Albaricoque, melocotón, menta dulce y hielo.', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(347, 'Winter Night', 'winter_night', 'Melocotón y hielo.', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 09:01:40', 'F'),
(301, 'WM', 'wm', 'Refrescante e intenso sabor de sandía recién cortada.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(293, 'WMC', 'wmc', 'Del frescor de la menta y el dulzor de la sandía sale este sabor único.', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(348, 'WTERMLON MNT', 'wtermlon_mnt', 'Sandía y menta.', 'Mala Vida', 'https://i.ibb.co/VjmRb07/Wtrmlon.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:07:44', 'F'),
(199, 'Yodda', 'yodda', 'Menta verde.', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(131, 'Zenter Schox', 'zenter_schox', 'El sabor más agrio del mundo a partir de aromas de lima y limón. Es tan agrio que te volverá loco. ', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', ''),
(326, 'Zero', 'zero', 'Menta y hielo.', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:29:56', 'F'),
(207, 'Zeus', 'zeus', 'La menta oscura más poderosa del Olimpo. Incluso los dioses se sorprenderán de tal frescura.', 'Smyrna', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', ''),
(166, 'Zonda', 'zonda', 'Una mezcla de frutas tropicales donde la agridulce piña se combina con el sabor exótico de una tierna y jugosa papaya.', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabaco_formato_asso`
--

CREATE TABLE `tabaco_formato_asso` (
  `id` int(11) NOT NULL,
  `tabaco_id` int(11) NOT NULL,
  `formato_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabaco_formato_asso`
--

INSERT INTO `tabaco_formato_asso` (`id`, `tabaco_id`, `formato_id`) VALUES
(3, 4, 1),
(4, 26, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 3, 1),
(16, 15, 1),
(17, 27, 1),
(18, 16, 1),
(19, 17, 1),
(20, 18, 1),
(21, 19, 1),
(22, 20, 1),
(23, 21, 1),
(24, 22, 1),
(25, 23, 1),
(26, 24, 1),
(27, 25, 1),
(28, 70, 2),
(29, 71, 2),
(30, 72, 2),
(31, 73, 2),
(32, 74, 2),
(33, 75, 2),
(34, 171, 3),
(35, 167, 3),
(36, 169, 3),
(37, 164, 3),
(38, 162, 3),
(39, 165, 3),
(40, 168, 3),
(41, 170, 3),
(42, 163, 3),
(43, 166, 3),
(44, 225, 3),
(45, 221, 3),
(46, 220, 3),
(47, 219, 3),
(48, 213, 4),
(49, 214, 4),
(50, 215, 4),
(53, 216, 4),
(54, 217, 5),
(55, 218, 5),
(56, 63, 6),
(57, 67, 6),
(58, 68, 6),
(59, 62, 6),
(60, 64, 6),
(61, 69, 6),
(62, 66, 6),
(63, 61, 6),
(64, 65, 6),
(65, 61, 7),
(66, 68, 7),
(67, 62, 7),
(68, 66, 7),
(69, 67, 7),
(70, 69, 7),
(71, 226, 6),
(72, 197, 8),
(73, 198, 8),
(74, 206, 8),
(75, 201, 8),
(76, 204, 8),
(77, 202, 8),
(78, 203, 8),
(79, 205, 8),
(80, 200, 8),
(81, 199, 8),
(82, 183, 9),
(83, 184, 9),
(84, 188, 9),
(85, 189, 9),
(86, 181, 9),
(87, 190, 9),
(88, 191, 9),
(89, 193, 9),
(90, 192, 9),
(91, 182, 9),
(92, 194, 9),
(93, 195, 9),
(94, 187, 9),
(95, 185, 9),
(96, 186, 9),
(97, 196, 9),
(98, 193, 10),
(99, 193, 11),
(100, 194, 10),
(122, 76, 12),
(123, 77, 12),
(124, 78, 12),
(125, 84, 12),
(126, 85, 12),
(127, 86, 12),
(128, 87, 12),
(129, 79, 12),
(130, 175, 12),
(131, 88, 12),
(132, 174, 12),
(133, 80, 12),
(134, 81, 12),
(135, 82, 12),
(136, 172, 12),
(137, 173, 12),
(138, 89, 12),
(139, 83, 12),
(140, 90, 12),
(141, 176, 12),
(142, 91, 12),
(143, 84, 13),
(144, 85, 13),
(145, 87, 13),
(146, 92, 12),
(147, 102, 12),
(148, 104, 12),
(149, 94, 12),
(150, 95, 12),
(151, 101, 12),
(152, 96, 12),
(153, 97, 12),
(154, 106, 12),
(155, 103, 12),
(156, 93, 12),
(157, 100, 12),
(158, 98, 12),
(159, 105, 12),
(160, 99, 12),
(161, 94, 14),
(162, 93, 14),
(163, 95, 14),
(164, 96, 14),
(165, 97, 14),
(166, 98, 14),
(167, 99, 14),
(168, 100, 14),
(169, 101, 14),
(170, 102, 14),
(171, 104, 14),
(172, 129, 15),
(173, 149, 15),
(174, 144, 15),
(175, 145, 15),
(176, 139, 15),
(177, 178, 15),
(178, 134, 15),
(179, 136, 15),
(180, 141, 15),
(181, 142, 15),
(182, 143, 15),
(183, 151, 15),
(184, 132, 15),
(185, 146, 15),
(186, 130, 15),
(187, 133, 15),
(188, 135, 15),
(189, 138, 15),
(190, 177, 15),
(191, 147, 15),
(192, 140, 15),
(193, 150, 15),
(194, 137, 15),
(195, 148, 15),
(196, 131, 15),
(197, 149, 16),
(198, 144, 16),
(199, 134, 16),
(200, 142, 16),
(201, 146, 16),
(202, 148, 16),
(203, 154, 17),
(204, 152, 17),
(205, 161, 17),
(206, 155, 17),
(207, 157, 17),
(208, 159, 17),
(209, 158, 17),
(210, 156, 17),
(211, 153, 17),
(212, 160, 17),
(213, 2, 18),
(214, 1, 18),
(215, 2, 19),
(216, 1, 19),
(217, 50, 20),
(218, 179, 20),
(219, 180, 20),
(220, 51, 20),
(221, 52, 20),
(222, 53, 20),
(223, 54, 20),
(224, 55, 20),
(225, 56, 20),
(226, 58, 20),
(227, 57, 20),
(228, 59, 20),
(229, 60, 20),
(252, 28, 21),
(253, 37, 21),
(254, 29, 21),
(255, 30, 21),
(256, 49, 21),
(257, 38, 21),
(258, 31, 21),
(259, 39, 21),
(260, 32, 21),
(261, 40, 21),
(262, 36, 21),
(263, 41, 21),
(264, 42, 21),
(265, 33, 21),
(266, 34, 21),
(267, 43, 21),
(268, 227, 21),
(269, 228, 21),
(270, 229, 21),
(271, 45, 21),
(272, 46, 21),
(273, 230, 21),
(274, 235, 21),
(275, 236, 21),
(276, 47, 21),
(277, 44, 21),
(278, 48, 21),
(279, 237, 21),
(280, 238, 21),
(281, 35, 21),
(282, 32, 14),
(283, 33, 14),
(284, 34, 14),
(285, 35, 14),
(286, 36, 14),
(287, 37, 14),
(288, 39, 14),
(289, 40, 14),
(290, 42, 14),
(291, 46, 14),
(292, 47, 14),
(293, 48, 14),
(294, 28, 14),
(295, 38, 14),
(296, 44, 14),
(297, 45, 14),
(304, 212, 4),
(305, 240, 4),
(306, 211, 4),
(307, 208, 4),
(308, 210, 4),
(309, 239, 4),
(310, 209, 4),
(311, 207, 4),
(312, 241, 9),
(313, 242, 9),
(314, 243, 9),
(315, 244, 9),
(316, 245, 9),
(317, 283, 9),
(318, 246, 9),
(319, 247, 9),
(320, 248, 9),
(321, 249, 9),
(322, 250, 9),
(323, 251, 9),
(324, 252, 9),
(325, 253, 9),
(326, 260, 9),
(327, 254, 9),
(328, 281, 9),
(329, 255, 9),
(330, 282, 9),
(331, 280, 9),
(332, 256, 9),
(333, 257, 9),
(334, 258, 9),
(335, 261, 9),
(336, 262, 9),
(337, 263, 9),
(338, 264, 9),
(339, 265, 9),
(340, 266, 9),
(341, 267, 9),
(342, 268, 9),
(343, 269, 9),
(344, 270, 9),
(345, 271, 9),
(346, 272, 9),
(347, 273, 9),
(348, 274, 9),
(349, 275, 9),
(350, 278, 9),
(351, 276, 9),
(352, 259, 9),
(353, 277, 9),
(354, 284, 9),
(355, 279, 9),
(356, 243, 10),
(357, 244, 10),
(358, 245, 10),
(359, 249, 10),
(360, 251, 10),
(361, 258, 10),
(362, 256, 10),
(363, 263, 10),
(364, 264, 10),
(365, 277, 10),
(366, 251, 11),
(367, 255, 11),
(368, 256, 11),
(369, 258, 11),
(370, 289, 22),
(371, 285, 22),
(372, 290, 22),
(373, 286, 22),
(374, 287, 22),
(375, 288, 22),
(376, 294, 9),
(377, 296, 9),
(378, 300, 9),
(379, 291, 9),
(380, 297, 9),
(381, 295, 9),
(382, 298, 9),
(383, 292, 9),
(384, 299, 9),
(385, 301, 9),
(386, 293, 9),
(387, 302, 20),
(388, 303, 20),
(393, 279, 10),
(394, 305, 9),
(395, 306, 9),
(396, 307, 9),
(397, 308, 9),
(398, 310, 9),
(399, 309, 9),
(400, 311, 9),
(401, 312, 9),
(402, 313, 9),
(403, 314, 15),
(404, 315, 15),
(405, 316, 15),
(406, 151, 16),
(407, 143, 16),
(408, 148, 25),
(409, 132, 16),
(410, 319, 21),
(411, 318, 21),
(412, 317, 21),
(413, 320, 21),
(414, 328, 26),
(415, 321, 26),
(416, 325, 26),
(417, 323, 26),
(418, 322, 26),
(419, 329, 26),
(420, 324, 26),
(421, 327, 26),
(422, 326, 26),
(423, 333, 27),
(424, 330, 27),
(425, 332, 27),
(426, 334, 27),
(427, 331, 27),
(428, 339, 15),
(429, 340, 15),
(430, 343, 15),
(431, 338, 15),
(432, 335, 15),
(433, 341, 15),
(434, 342, 15),
(435, 336, 15),
(436, 337, 15),
(437, 344, 15),
(438, 345, 13),
(439, 345, 12),
(440, 346, 12),
(441, 346, 14),
(442, 347, 12),
(443, 347, 14),
(444, 354, 9),
(445, 353, 9),
(446, 352, 9),
(447, 349, 9),
(448, 350, 9),
(449, 351, 9),
(450, 348, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formato`
--
ALTER TABLE `formato`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`name_marca`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `mezcla`
--
ALTER TABLE `mezcla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `porcentaje`
--
ALTER TABLE `porcentaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_porce_tabaco` (`tabaco`),
  ADD KEY `fk_porce_mezcla` (`mezcla`);

--
-- Indices de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  ADD PRIMARY KEY (`name_tabaco`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `marca` (`marca`);

--
-- Indices de la tabla `tabaco_formato_asso`
--
ALTER TABLE `tabaco_formato_asso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tabaco_ass` (`tabaco_id`),
  ADD KEY `fk_formato_ass` (`formato_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `mezcla`
--
ALTER TABLE `mezcla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `porcentaje`
--
ALTER TABLE `porcentaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT de la tabla `tabaco_formato_asso`
--
ALTER TABLE `tabaco_formato_asso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `porcentaje`
--
ALTER TABLE `porcentaje`
  ADD CONSTRAINT `fk_porce_mezcla` FOREIGN KEY (`mezcla`) REFERENCES `mezcla` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_porce_tabaco` FOREIGN KEY (`tabaco`) REFERENCES `tabaco` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabaco`
--
ALTER TABLE `tabaco`
  ADD CONSTRAINT `tabaco_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `marca` (`name_marca`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tabaco_formato_asso`
--
ALTER TABLE `tabaco_formato_asso`
  ADD CONSTRAINT `fk_formato_ass` FOREIGN KEY (`formato_id`) REFERENCES `formato` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tabaco_ass` FOREIGN KEY (`tabaco_id`) REFERENCES `tabaco` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
