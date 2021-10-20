-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2021 a las 18:12:30
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

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
-- Estructura de tabla para la tabla `authorities`
--

CREATE TABLE `authorities` (
  `authority_id` int(11) NOT NULL,
  `username` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `role` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `authorities`
--

INSERT INTO `authorities` (`authority_id`, `username`, `role`) VALUES
(1, 'shishasmataro', 'ROLE_ADMIN'),
(2, 'user', 'ROLE_USER');

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
(27, 200, 14.8),
(28, 50, 3.5),
(29, 200, 12.5),
(30, 950, 55),
(31, 50, 2.6),
(32, 50, 2.7),
(33, 250, 12.5),
(34, 250, 13.5),
(35, 1000, 52),
(36, 100, 8);

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
(40, 'Al Fakher', 'Turquía', 'Turkey', 'Tabaco rubio.', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg'),
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
(34, 'Mr Shisha', 'España', 'Spain', 'Tabaco Rubio', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg'),
(10, 'Musthave', 'Rusia', 'Russia', 'Tabaco negro', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg'),
(39, 'Nakhla', 'Egipto', 'Egypt', 'Tabaco rubio', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg'),
(1, 'Nameless', 'Alemania', 'Germany', 'Tabaco rubio', 'https://i.ibb.co/Jys8s36/nameless.png', 'https://restcountries.eu/data/deu.svg'),
(23, 'Overdozz', 'España', 'Spain', 'Tabaco Rubio', 'https://i.ibb.co/J3KbWds/overdozz.jpg', 'https://restcountries.eu/data/esp.svg'),
(35, 'Prestige', 'Alemania', 'Germany', 'Tabaco rubio.', 'https://i.ibb.co/NKFfK7S/Prestige.jpg', 'https://restcountries.eu/data/deu.svg'),
(19, 'Privilege', 'España', 'Spain', 'Tabaco rubio', 'https://i.ibb.co/87Vtt9g/privilege.jpg', 'https://restcountries.eu/data/esp.svg'),
(4, 'Revoshi', 'Turquia', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg'),
(3, 'Serbetli', 'Alemania', 'Germany', 'Tabaco rubio premium', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg'),
(14, 'Smyrna', 'Turquía', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg'),
(36, 'Streetsmoke', 'Alemania', 'Germany', 'Tabaco rubio.', 'https://i.ibb.co/6rrsZKp/streetsmoke.jpg', 'https://restcountries.eu/data/deu.svg'),
(37, 'Taboo', 'Europa', 'Europe', 'Tabaco rubio.', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg'),
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
-- Estructura de tabla para la tabla `sabor`
--

CREATE TABLE `sabor` (
  `id` int(11) NOT NULL,
  `sabor_desc` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sabor`
--

INSERT INTO `sabor` (`id`, `sabor_desc`) VALUES
(32, 'ACAI'),
(55, 'ALBARICOQUE'),
(68, 'ALGODÓN DE AZÚCAR'),
(27, 'ANÍS'),
(18, 'ARÁNDANOS'),
(7, 'BAYAS'),
(70, 'BEBIDA ENERGÉTICA'),
(43, 'BOMBÓN'),
(13, 'CACAHUETE'),
(59, 'CACTUS'),
(35, 'CAFÉ'),
(64, 'CANELA'),
(12, 'CARAMELO'),
(92, 'CARDAMOMO'),
(77, 'CBD'),
(49, 'CEREALES'),
(5, 'CEREZA'),
(19, 'CHICLE'),
(34, 'CHOCOLATE'),
(85, 'CIRUELA'),
(23, 'COCO'),
(4, 'COLA'),
(44, 'CURAÇAO'),
(3, 'DOBLE MANZANA'),
(87, 'DURAZNO'),
(82, 'ESPECIAS'),
(69, 'FLOR DE SAÚCO'),
(36, 'FRAMBUESA'),
(9, 'FRESA'),
(54, 'FRUTA DE LA PASIÓN'),
(42, 'FRUTA DEL DRAGÓN'),
(73, 'FRUTAS DEL BOSQUE'),
(62, 'FRUTAS EXÓTICAS'),
(40, 'FRUTAS SILVESTRES'),
(80, 'FRUTOS ROJOS'),
(47, 'FRUTOS SECOS'),
(60, 'GALLETA'),
(11, 'GOFRE'),
(76, 'GOMINOLA'),
(6, 'GRANADA'),
(20, 'GRANADINA'),
(41, 'GUABA'),
(90, 'GUAYABA'),
(39, 'HERBAL'),
(24, 'HIELO'),
(71, 'HIERBABUENA'),
(25, 'HIGOS'),
(57, 'HORCHATA'),
(79, 'IRISH CREAM'),
(63, 'JENGIBRE'),
(46, 'KINDER BUENO'),
(53, 'KIWI'),
(50, 'LAVANDA'),
(74, 'LICHI'),
(78, 'LICOR'),
(37, 'LIMA'),
(1, 'LIMÓN'),
(93, 'LIMONCELLO'),
(66, 'MANDARINA'),
(67, 'MANGO'),
(8, 'MANZANA'),
(38, 'MARACUYÁ'),
(84, 'MARGARITA'),
(29, 'MELOCOTÓN'),
(16, 'MELÓN'),
(26, 'MEMBRILLO'),
(2, 'MENTA'),
(31, 'MENTOL'),
(61, 'MOJITO'),
(52, 'MORA'),
(91, 'MUFFIN'),
(17, 'NARANJA'),
(33, 'NUECES'),
(88, 'PALOMITAS'),
(45, 'PAN RAAS'),
(94, 'PAPAYA'),
(65, 'PEPINO'),
(56, 'PERA'),
(21, 'PIÑA'),
(72, 'PISTACHO'),
(22, 'PLÁTANO'),
(48, 'POMELO'),
(10, 'REGALIZ'),
(83, 'ROSA'),
(15, 'SANDÍA'),
(89, 'TAMARINDO'),
(14, 'TARTA'),
(58, 'TÉ'),
(86, 'TÓNICA'),
(30, 'UVA'),
(28, 'VAINILLA'),
(51, 'WHISKY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabaco`
--

CREATE TABLE `tabaco` (
  `id` int(11) NOT NULL,
  `name_tabaco` varchar(256) NOT NULL,
  `name_api` varchar(256) NOT NULL,
  `descripcion` varchar(256) NOT NULL,
  `sabor1` varchar(100) NOT NULL DEFAULT '',
  `sabor2` varchar(100) NOT NULL DEFAULT '',
  `sabor3` varchar(100) NOT NULL DEFAULT '',
  `sabor4` varchar(100) NOT NULL DEFAULT '',
  `sabor5` varchar(100) NOT NULL DEFAULT '',
  `marca` varchar(256) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen_flag` varchar(255) NOT NULL,
  `fecha_publicacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `novedad` varchar(1) NOT NULL DEFAULT 'F'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabaco`
--

INSERT INTO `tabaco` (`id`, `name_tabaco`, `name_api`, `descripcion`, `sabor1`, `sabor2`, `sabor3`, `sabor4`, `sabor5`, `marca`, `imagen`, `imagen_flag`, `fecha_publicacion`, `novedad`) VALUES
(76, '90+', '90plus', 'Limón y menta', 'LIMÓN', 'MENTA', '', '', '', 'Dozaj', 'https://i.ibb.co/1M1W10C/90plus.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(92, 'Adam & Eve', 'adam_and_eve', 'Dos Manzanas', 'DOBLE MANZANA', '', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(380, 'Adan', 'adan', 'CocaCola con cereza.', 'COLA', 'CEREZA', '', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:52:30', 'F'),
(183, 'Alhambra', 'alhambra', 'Granada, mezcla de bayas, manzana, fresa, cereza y menta. ', 'GRANADA', 'BAYAS', 'MANZANA', 'FRESA', 'CEREZA', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(404, 'Alien Twist', 'alien_twist', 'Calipo de limón.', 'LIMÓN', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 15:54:41', 'F'),
(405, 'Alpine Spirit', 'alpine_spirit', 'Regaliz y menta.', 'REGALIZ', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 15:55:23', 'F'),
(171, 'Amazon', 'amazon', 'Suave gofre belga al horno con notas de leche, caramelo y crema. Pastelería fina. El mejor sabor a confitería.', 'GOFRE', 'CARAMELO', '', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(226, 'American', 'american', 'La famosa crema de cacahuete americana.', 'CACAHUETE', '', '', '', '', 'Aloha', 'https://i.ibb.co/1THBZyb/American.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(406, 'American Pay', 'american_pay', 'Doble manzana.', 'DOBLE MANZANA', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 15:56:14', 'F'),
(129, 'American Pei', 'american_pei', 'Cremosa tarta de manzana a la americana con toffee. Receta increiblemente deliciosa de la abuela.', 'TARTA', 'MANZANA', '', '', '', 'Hookain', 'https://i.ibb.co/WDNpJ6g/19-American-Pei.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(184, 'Amsterdan Lights', 'amsterdan_lights', 'Mezcla de bayas, fresa y cereza.', 'BAYAS', 'FRESA', 'CEREZA', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(393, 'App Bomb', 'app_bomb', 'Manzana verde.', 'MANZANA', '', '', '', '', 'Prestige', 'https://i.ibb.co/NKFfK7S/Prestige.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:07:14', 'F'),
(400, 'Artic Prince', 'artic_prince', 'Limón con un golpe helado.', 'LIMÓN', '', '', '', '', 'Streetsmoke', 'https://i.ibb.co/6rrsZKp/streetsmoke.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:15:23', 'F'),
(63, 'Atlantic', 'atlantic', 'Fresco y refrescante caramelo de cereza', 'CEREZA', '', '', '', '', 'Aloha', 'https://i.ibb.co/WgyNSCt/Atlantic-2-min.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(154, 'Atmosphere', 'atmosphere', 'Limonada de zumo de sandía, melón y sirope de berberis vulgaris.', 'SANDÍA', 'MELÓN', 'GRANADA', '', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(212, 'Ay, Carmela!', 'ay_carmela', 'El público exclama, ¡Ay, Carmela! Obra Maestra compuesta de melón, naranja y arándanos.', 'MELÓN', 'NARANJA', 'ARÁNDANOS', '', '', 'Smyrna', 'https://i.ibb.co/7tx75nH/ay-carmela.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(328, 'Babbel', 'babbel', 'Chicle y menta.', 'CHICLE', 'MENTA', '', '', '', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:30:31', 'F'),
(197, 'Babyelya', 'babyelya', 'Granadina, cereza y menta.', 'GRANADINA', 'CEREZA', 'MENTA', '', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(407, 'Bahama Mama', 'bahama_mama', 'Piña, plátano y coco.', 'PIÑA', 'PLÁTANO', 'COCO', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 15:56:45', 'F'),
(102, 'Bahamas', 'bahamas', 'Piña, melón y frescor', 'PIÑA', 'MELÓN', 'HIELO', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(188, 'Baku Nights', 'baku_nights', 'Chicle, plátano, menta y hielo.', 'CHICLE', 'PLÁTANO', 'MENTA', 'HIELO', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(28, 'Balance', 'balance', 'Banana y fresa', 'PLÁTANO', 'FRESA', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(198, 'Baron Rouge', 'baron_rouge', 'Higos, membrillo, fresa y sandía.', 'HIGOS', 'MEMBRILLO', 'FRESA', 'SANDÍA', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(474, 'Base Amber Rise', 'amber_rise', 'Una combinación de cítricos para dar fuerza a tus mezclas.', 'LIMA', 'LIMÓN', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:39:03', 'F'),
(473, 'Base Crimson Crush', 'crimson_crush', 'Notas de frutas maduras, que añaden frescor a cualquier mezcla.', 'FRUTOS ROJOS', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:38:13', 'F'),
(476, 'Base Ivory Gold', 'ivory_gold', 'Agrega una sensación rica y cremosa a tus mezclas.', 'TARTA', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:40:28', 'F'),
(477, 'Base Majestic Aurora', 'majestic_aurora', 'Notas herbales relajantes que añaden un sabor único a tus mezclas.', 'HIERBABUENA', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:41:20', 'F'),
(475, 'Base Polar Freeze', 'polar_freeze', 'Añade una sensación refrescante extrema.', 'HIELO', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:39:43', 'F'),
(478, 'Base Wicked Emerald', 'wicked_emerald', 'La intensidad del cardamomo y su especiado frescor elevan el sabor de cualquier mezcla.', 'CARDAMOMO', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:42:34', 'F'),
(309, 'Beirut Al Araq', 'beirut_al_araq', 'Anís, vainilla y menta Blue Horse.', 'ANÍS', 'VAINILLA', 'MENTA', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:58:35', 'F'),
(241, 'Berlin Nights', 'berlin_nights', 'Melocotón y menta.', 'MELOCOTÓN', 'MENTA', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(149, 'Big Black Barries', 'big_black_barries', 'Intenso sabor a uva moscatel con esencia de mentol..', 'UVA', 'MENTOL', '', '', '', 'Hookain', 'https://i.ibb.co/Vtz5vMf/20-Big-Black-Barries.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(463, 'Big Blue', 'big_blue', 'Arándano.', 'ARÁNDANOS', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:30:36', 'F'),
(458, 'Big Green', 'big_green', 'Menta.', 'MENTA', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:26:02', 'F'),
(470, 'Big Yellow Green', 'big_yellow_green', 'Superlimón y menta.', 'LIMÓN', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:34:35', 'F'),
(408, 'Bikini Sunset', 'bikini_sunset', 'Melón y chicle.', 'MELÓN', 'CHICLE', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 15:57:22', 'F'),
(225, 'Bise', 'bise', 'Jugo de granada fresca.', 'GRANADA', '', '', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(396, 'Black Boom', 'black_boom', 'Uva especiada.', 'UVA', '', '', '', '', 'Prestige', 'https://i.ibb.co/NKFfK7S/Prestige.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:08:37', 'F'),
(321, 'Black Box', 'black_box', 'Acai, hielo y menta.', 'ACAI', 'HIELO', 'MENTA', '', '', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:27:53', 'F'),
(289, 'Black Cane Mnt', 'black_cane_mnt', 'Menta.', 'MENTA', '', '', '', '', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(285, 'Black Dragan', 'black_dragan', 'Cola.', 'COLA', '', '', '', '', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(290, 'Black Horchachi', 'black_horchachi', 'Caramelo, nueces, chocolate y café.', 'CARAMELO', 'NUECES', 'CHOCOLATE', 'CAFÉ', '', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(286, 'Black Lem Brry', 'black_lem_brry', 'Frambuesa y limón.', 'FRAMBUESA', 'LIMÓN', '', '', '', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(409, 'Black Limousine', 'black_limousine', 'Cola y lima.', 'COLA', 'LIMA', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 15:58:05', 'F'),
(287, 'Black Pych', 'black_pych', 'Melocotón poderoso.', 'MELOCOTÓN', '', '', '', '', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(77, 'Black Star', 'black_star', 'Maracuyá, chicle, melocotón y menta', 'MARACUYÁ', 'CHICLE', 'MELOCOTÓN', 'MENTA', '', 'Dozaj', 'https://i.ibb.co/dQYdBjp/blackstar.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(288, 'Black Voodoo', 'black_voodoo', 'Sabores a pino, notas de bosque junto con frutas silvestres.', 'HERBAL', 'FRUTAS SILVESTRES', '', '', '', 'Adalya Black', 'https://i.ibb.co/dmqcktQ/adalya-black.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(302, 'Blackbeard Soul', 'blackbeard_soul', 'Mojito Waba.', 'GUABA', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(2, 'Blacknana', 'blacknana', 'Uva moscatel y menta', 'UVA', 'MENTA', '', '', '', 'Nameless', 'https://i.ibb.co/2SMZ5ct/cajetilla-black-nana-50.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(78, 'Blade', 'blade', 'Mezcla de bayas, fruta del dragon y menta', 'BAYAS', 'FRUTA DEL DRAGÓN', 'MENTA', '', '', 'Dozaj', 'https://i.ibb.co/9YHr2YM/blade.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(50, 'Blck Grp', 'blck_grp', 'Uva negra', 'UVA', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(410, 'Blizzardina', 'blizzardina', 'Menta y granadina.', 'GRANADINA', 'MENTA', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 15:58:41', 'F'),
(354, 'BLUBRRY MNT', 'blubrry_mnt', 'Arándanos y menta.', 'ARÁNDANOS', 'MENTA', '', '', '', 'Mala Vida', 'https://i.ibb.co/qDJQcjS/blueberry.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:12:19', 'F'),
(411, 'Blue Bay', 'blue_bay', 'Arándano y menta.', 'ARÁNDANOS', 'MENTA', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 15:59:13', 'F'),
(397, 'Blue Beast', 'blue_beast', 'Arándanos y menta fresca.', 'ARÁNDANOS', 'MENTA', '', '', '', 'Streetsmoke', 'https://i.ibb.co/6rrsZKp/streetsmoke.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:11:34', 'F'),
(242, 'Blue Dragan', 'blue_dragan', 'Fruta dragón, arándano y bombón helado.', 'FRUTA DEL DRAGÓN', 'ARÁNDANOS', 'BOMBÓN', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(243, 'Blue I\'ss', 'blue_iss', 'Arándano y hielo.', 'ARÁNDANOS', 'HIELO', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(104, 'Blue mix', 'blue_mix', 'Uvas, arándanos, piña y coco', 'UVA', 'ARÁNDANOS', 'PIÑA', 'COCO', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(37, 'Blue Tropic', 'blue_tropic', 'Curaçao', 'CURAÇAO', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(244, 'Blue Yellow', 'blue_yellow', 'Melón y arándanos.', 'MELÓN', 'ARÁNDANOS', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(29, 'Blueberry', 'blueerry', 'Arándanos', 'ARÁNDANOS', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(213, 'Bombay Fuzion', 'bombay_fuzion', 'La tradicional hoja de betel india con el balance perfecto de la dulzura de la nuez de areca.', 'NUECES', '', '', '', '', 'Afzal', 'https://i.ibb.co/99ZRswV/Bombay-fusion-50g.jpg', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', 'F'),
(214, 'Bombay Nights', 'bombay_nights', 'Refresca tu paladar con este sabor exótico o mézclalo con otro sabor y experimente la magia del verdadero sabor de la India.', 'PAN RAAS', '', '', '', '', 'Afzal', 'https://i.ibb.co/1XjMpPY/Bombay-nights.jpg', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', 'F'),
(333, 'Bono', 'bono', 'Galleta wafer con crema de avellanas y leche.', 'KINDER BUENO', '', '', '', '', 'Holster', 'https://i.ibb.co/qrj8D2x/bono.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:40:29', 'F'),
(385, 'Boss Mode', 'boss_mode', 'Limón con menta moderada.', 'LIMÓN', 'MENTA', '', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:56:02', 'F'),
(356, 'BREAK', 'break', 'Tarta de arándanos.', 'TARTA', 'ARÁNDANOS', '', '', '', 'Privilege', 'https://i.ibb.co/M5vb4YG/break.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:17:50', 'F'),
(355, 'BREATHE', 'breathe', 'Equilibrio perfecto entre menta y fresa.', 'FRESA', 'MENTA', '', '', '', 'Privilege', 'https://i.ibb.co/xjKgHtR/breathe.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:17:03', 'F'),
(221, 'Brickfielder', 'brickfielder', 'Fresa salvaje y arándano dulce.', 'FRESA', 'ARÁNDANOS', '', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(412, 'Brutal Choice', 'brutal_choice', 'Menta suprema.', 'MENTA', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 15:59:53', 'F'),
(144, 'Bubblenciaga', 'bubblenciaga', 'El típico chicle americano en su momento de mayor sabor. Dulce y duradero hasta dejarte boquiabierto.', 'CHICLE', '', '', '', '', 'Hookain', 'https://i.ibb.co/bWMmV4b/26-Bubblenciaga.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(167, 'Buran', 'buran', 'Una popular bebida mexicana con un dulce y tierno sabor a frutos secos y especias.', 'FRUTOS SECOS', '', '', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(4, 'C111 Ololiuqui', 'c111_ololiuqui', 'Cola y vainilla', 'COLA', 'VAINILLA', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(26, 'C119 Kosmik', 'c119_kosmik', 'Dos manzanas', 'DOBLE MANZANA', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(5, 'C16 Pink Grapefruit', 'c16_pink_prapefruit', 'Pomelo', 'POMELO', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(6, 'C27 Cocoa', 'c27_cocoa', 'Cacao', 'CHOCOLATE', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(7, 'C3 Strawberry', 'c3_strawberry', 'Fresa', 'FRESA', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(8, 'C34 Its like that one breakfast cereal', 'c34_its_like_that_one_breakfast_cereal', 'Cereales americanos de colores', 'CEREALES', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(9, 'C38 Kashmir Peach', 'c38_kashmir_peach', 'Melocotón con toques florales', 'MELOCOTÓN', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(10, 'C4 Blitzsturm', 'c4_blitzsturm', 'Lavanda con mentol', 'LAVANDA', 'MENTOL', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(11, 'C5 Lemon Blossom', 'c5_lemon_blossom', 'Limón con toques florales', 'LIMÓN', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(12, 'C57 Sevilla Orange', 'c57_sevilla_orange', 'Naranja dulce', 'NARANJA', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(13, 'C58 Welch Cream', 'C58_welch_cream', 'Crema de whisky', 'WHISKY', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(14, 'C59 Blackberry', 'c59_blackberry', 'Mora', 'MORA', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(3, 'C6 Pineapple', 'c6_pineapple', 'Piña', 'PIÑA', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(15, 'C62 Strawberry Kiwi', 'c62_strawberry_kiwi', 'Fresa y Kiwi', 'FRESA', 'KIWI', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(27, 'C69 PassionFruit', 'c69_passionfruit', 'Fruta de la pasión', 'FRUTA DE LA PASIÓN', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(16, 'C74 Lemon Lime', 'c74_lemon_lime', 'Lima y limón', 'LIMÓN', 'LIMA', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(17, 'C76 Apricot Spring Blend', 'c76_apricot_spring_blend', 'Albaricoque floral', 'ALBARICOQUE', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(18, 'C77 Tropical Revenge', 'c77_tropical_revenge', 'Piña, pera y naranja', 'PIÑA', 'PERA', 'NARANJA', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(19, 'C78 Horchata', 'c78_horchata', 'Horchata', 'HORCHATA', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(378, 'C8 Coconut', 'c8_coconut', 'Coco.', 'COCO', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-17 00:44:44', 'F'),
(379, 'C87 Kiwi', 'c87_kiwi', 'Kiwi.', 'KIWI', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-17 00:45:31', 'F'),
(20, 'C9 Melon Blend', 'c9_melon_blend', 'Melon y sandia', 'MELÓN', 'SANDÍA', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(21, 'C90 Peach Iced Tea', 'c90_peach_iced_tea', 'Té helado de melocotón', 'MELOCOTÓN', 'TÉ', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(22, 'C92 Mimon', 'c92_mimon', 'Limón y menta', 'LIMÓN', 'MENTA', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(23, 'C94 Maraschino Cherry', 'c94_maraschino_cherry', 'Frutas mixtas con énfasis de cereza', 'CEREZA', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(24, 'C96 Cane Mint', 'c96_cane_mint', 'Para muchos la mejor menta del mundo', 'MENTA', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(25, 'C96a Cane Mint Vault', 'c96a_cane_mint_vault', 'Fórmula inicial de Cane Mint', 'MENTA', '', '', '', '', 'Tangiers', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg', '2021-09-07 07:20:28', 'F'),
(145, 'Cactopus', 'cactopus', 'Dulce y cremoso al mismo tiempo. El sabor dulce a cactus con la fresa y vainilla hacen un trio delicioso e intenso. ', 'CACTUS', 'FRESA', 'VAINILLA', '', '', 'Hookain', 'https://i.ibb.co/s6XBXmJ/08-Cactopus.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(94, 'Cane Na3ne', 'cane_na3ne', 'Azúcar de caña y menta', 'MENTA', '', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(179, 'Capitan Pinto', 'capitan_pinto', 'Sabor a galleta María.', 'GALLETA', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(395, 'Caprio', 'caprio', 'Naranja y hielo.', 'NARANJA', 'HIELO', '', '', '', 'Prestige', 'https://i.ibb.co/NKFfK7S/Prestige.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:08:11', 'F'),
(413, 'Caribbean Cruise', 'caribbean_cruise', 'Inconfundible mojito.', 'MOJITO', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:00:31', 'F'),
(240, 'Carioca', 'carioca', 'El dulce brasileño por excelencia: base de exquisito cacahuete con fondo realmente dulce.', 'CACAHUETE', '', '', '', '', 'Smyrna', 'https://i.ibb.co/4tRYSmm/Carioca.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(84, 'Carnival', 'carnival', 'Mezcla de frutas exóticas', 'FRUTAS EXÓTICAS', '', '', '', '', 'Dozaj', 'https://i.ibb.co/p20XW2G/carnival.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(85, 'Casablanca', 'casablanca', 'Té especiado, jenjibre, nata y toque de canela', 'JENGIBRE', 'CANELA', '', '', '', 'Dozaj', 'https://i.ibb.co/MDyvY4B/casablanca.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(414, 'Casanova', 'casanova', 'Pepino helado.', 'PEPINO', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:01:06', 'F'),
(139, 'Ch3ri Zkittlez', 'cheri_zkittlez', 'Sabor intenso a cereza y fruta de dragón. Mejor de lo que te puedas imaginar.', 'CEREZA', 'FRUTA DEL DRAGÓN', '', '', '', 'Hookain', 'https://i.ibb.co/xYJ0hTG/14-Cherry-Zkittlez.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(180, 'Chao Bella', 'chao_bella', 'Sabor a fresa.', 'FRESA', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(206, 'Chernobyl', 'chernobyl', 'Mandarina helada y arándanos.', 'MANDARINA', 'ARÁNDANOS', '', '', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(391, 'Chill Bill', 'chill_bill', 'Granizado de sandía.', 'SANDÍA', '', '', '', '', 'Prestige', 'https://i.ibb.co/NKFfK7S/Prestige.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:05:37', 'F'),
(294, 'CHM', 'chm', 'El placer de más puro sabor a chocolate con el frescor de la menta.', 'CHOCOLATE', 'MENTA', '', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(353, 'CHRRY MNT', 'chrry_mnt', 'Cereza y menta.', 'CEREZA', 'MENTA', '', '', '', 'Mala Vida', 'https://i.ibb.co/2txDFT4/cherry.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:11:37', 'F'),
(245, 'Chung Wood Kizz', 'chung_wood_kizz', 'Chicle, canela y menta.', 'CHICLE', 'CANELA', 'MENTA', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(283, 'Cindy\'s', 'cindys', 'Bayas, hielo, mango, maracuyá, melón y sandía.', 'BAYAS', 'MANGO', 'MARACUYÁ', 'MELÓN', 'SANDÍA', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(415, 'Cinna Mill', 'cinna_mill', 'Canela y menta.', 'CANELA', 'MENTA', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:01:38', 'F'),
(296, 'CM', 'cm', 'Suave sabor a menta fresca ideal para maridar.', 'MENTA', '', '', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(178, 'Code In Love', 'code_in_love', 'Sabor exótico de cactus cremoso con melocotón, sandía y vainilla.', 'CACTUS', 'MELOCOTÓN', 'SANDÍA', 'VAINILLA', '', 'Hookain', 'https://i.ibb.co/rfzdT7T/27-Code-In-Love.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(416, 'Cool Sunrise', 'cool_sunrise', 'Melocotón dulce helado.', 'MELOCOTÓN', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:02:20', 'F'),
(417, 'Copa Cabana', 'copa_cabana', 'Piña colada.', 'PIÑA', 'COCO', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:02:55', 'F'),
(152, 'Cosmos', 'cosmos', 'Kiwi, manzana y menta', 'KIWI', 'MANZANA', 'MENTA', '', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(134, 'Cotton Candy Craem', 'cotton_candy_craem', 'Algodón de azúcar, sandía, mango y arándanos.', 'ALGODÓN DE AZÚCAR', 'SANDÍA', 'MANGO', 'ARÁNDANOS', '', 'Hookain', 'https://i.ibb.co/BNpQqZp/11-CCC-min.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(452, 'Crystal Duet Red', 'crystal_duet_red', 'Doble manzana y menta.', 'DOBLE MANZANA', 'MENTA', '', '', '', 'Nakhla', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg', '2021-09-18 23:00:13', 'F'),
(453, 'Crystal Pastel Red', 'crystal_pastel_red', 'Sandía y menta.', 'SANDÍA', 'MENTA', '', '', '', 'Nakhla', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg', '2021-09-18 23:00:53', 'F'),
(86, 'Cuba Dream', 'cuba_dream', 'Exótic tropical fruits', 'FRUTAS EXÓTICAS', '', '', '', '', 'Dozaj', 'https://i.ibb.co/yfMwmG5/cubadream.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(300, 'DAEM', 'daem', 'Matices afrutados de dos manzanas con las florales del saúco y el frescor de la menta.', 'DOBLE MANZANA', 'MENTA', '', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(357, 'DANCE', 'dance', 'Jugoso melocotón con un toque de menta.', 'MELOCOTÓN', 'MENTA', '', '', '', 'Privilege', 'https://i.ibb.co/SvqhWdZ/dance.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:18:22', 'F'),
(418, 'Dancing Queen', 'dancing_queen', 'Vainilla con menta.', 'VAINILLA', 'MENTA', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:03:23', 'F'),
(318, 'Dark Blue', 'dark_blue', 'Frutos azules: moras, arándanos y uva. ', 'MORA', 'ARÁNDANOS', 'UVA', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:19:40', 'F'),
(70, 'Darkside Hola', 'darkside_hola', 'Cola con limón', 'COLA', 'LIMÓN', '', '', '', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(87, 'Dead Sea', 'dead_sea', 'Coca cola con cereza helada', 'COLA', 'CEREZA', '', '', '', 'Dozaj', 'https://i.ibb.co/gRFFJQR/deadsea.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(339, 'Deadline', 'deadlin', 'Frutos silvestres con un toque refrescante. Es hora de que tú seas quien marque los tiempos del juego. Atrévete con este afrutado sabor.', 'FRUTAS SILVESTRES', '', '', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:53:17', 'F'),
(211, 'Deja Vu', 'deja_vu', 'Revive el flash del Deja Vu. Nunca antes visto: flor de sauco y lemongrass.', 'FLOR DE SAÚCO', 'LIMÓN', '', '', '', 'Smyrna', 'https://i.ibb.co/Bqt7zKG/deja-vu.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(306, 'Desperado', 'desperado', 'Pomelo, granadina, fresa, lima y uva.', 'POMELO', 'GRANADINA', 'FRESA', 'LIMA', 'UVA', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:54:15', 'F'),
(358, 'DISCOVER', 'discover', 'Refrescante y puro sabor a limón.', 'LIMÓN', '', '', '', '', 'Privilege', 'https://i.ibb.co/n806CcB/discover.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:18:56', 'F'),
(189, 'Discovery', 'discovery', 'Chicle, Pomelo, Limón y Lima.', 'CHICLE', 'POMELO', 'LIMÓN', 'LIMA', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(359, 'DIVE', 'dive', 'Melón mentolado.', 'MELÓN', '', '', '', '', 'Privilege', 'https://i.ibb.co/PzhQmmQ/dive.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 09:19:25', 'F'),
(291, 'Double A', 'double_a', 'Clásico manzana verde y manzana roja.', 'DOBLE MANZANA', '', '', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(30, 'Double Effect', 'double_effect', 'Cola y limón', 'COLA', 'LIMÓN', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(449, 'Double Red', 'double_red', 'Doble manzana.', 'DOBLE MANZANA', '', '', '', '', 'Nakhla', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg', '2021-09-18 22:57:37', 'F'),
(246, 'Dragan Code', 'dragan_code', 'Cola y bebidas energéticas.', 'COLA', 'BEBIDA ENERGÉTICA', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(363, 'DREAM', 'dream', 'Frío polar. Pura hierbabuena, aromática e intensa.', 'HIERBABUENA', '', '', '', '', 'Privilege', 'https://i.ibb.co/zsNJCXn/dream.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:12:19', 'F'),
(307, 'Dulcinea', 'dulcinea', 'Melocotón, manzana y maracuyá.', 'MELOCOTÓN', 'MANZANA', 'MARACUYÁ', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:55:40', 'F'),
(49, 'Duses', 'duses', 'Pera fresca', 'PERA', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(51, 'D´App Strng', 'dapp_strng', 'Dos manzanas intenso', 'DOBLE MANZANA', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(161, 'Eclipse', 'eclipse', 'Zumo de piña', 'PIÑA', '', '', '', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(38, 'Ehke', 'ehke', 'Pastel de limón', 'TARTA', 'LIMÓN', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(31, 'Elon', 'elon', 'Melón', 'MELÓN', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(364, 'ENJOY', 'enjoy', 'Mix de piña, menta y caramelo.', 'PIÑA', 'CARAMELO', 'MENTA', '', '', 'Privilege', 'https://i.ibb.co/Kb4KvhD/enjoy.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:13:20', 'F'),
(340, 'Era', 'era', 'Helado de pistacho. Completa la misión y alcanza un sabor único.', 'PISTACHO', '', '', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:53:49', 'F'),
(52, 'Eskimo Cndy', 'eskimo_cndy', 'Caramelos helados', 'CARAMELO', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(247, 'Eskimo Leon', 'eskimo_leon', 'Kiwi, limón y hielo.', 'KIWI', 'LIMÓN', 'HIELO', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(53, 'Eskimo Lmn', 'eskimo_lmn', 'Limón helado', 'LIMÓN', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(54, 'Eskimo P´App', 'eskimo_dapp', 'Piña helada', 'PIÑA', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(55, 'Eskimo Wtrmln', 'eskimo_wtrmln', 'Sandía helada', 'SANDÍA', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(308, 'Esmeralda', 'esmeralda', 'Kiwi, fruta del dragón, maracuyá, naranja enana.', 'KIWI', 'FRUTA DEL DRAGÓN', 'MARACUYÁ', 'NARANJA', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:57:06', 'F'),
(79, 'Eternal', 'eternal', 'Puro de vainilla', 'VAINILLA', '', '', '', '', 'Dozaj', 'https://i.ibb.co/L5MdzTp/eternal.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(346, 'Eve Ice', 'eve_ice', 'Manzana verde y hielo.', 'MANZANA', 'HIELO', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 09:01:18', 'F'),
(175, 'Excalibur', 'excalibur', '¡Fresco! ¿A quién no le gustan los cítricos? ¡Aquí los fusionamos con toques florales y menta que te dejará un refrescante regusto!', 'LIMÓN', 'MENTA', '', '', '', 'Dozaj', 'https://i.ibb.co/dJ9PFsS/Excalibur.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(248, 'Exotic Rush', 'exotic_rush', 'Piña y limón.', 'PIÑA', 'LIMÓN', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(136, 'Eyez Kalt', 'eyez_kalt', 'Muy frío. Caramelo de menta refinado con plátano y lima.', 'PLÁTANO', 'LIMA', 'MENTA', '', '', 'Hookain', 'https://i.ibb.co/G9hL8tC/16-Eyez-Kalt.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(325, 'Fanex', 'fanex', 'Mango, maracuyá y hielo.', 'MANGO', 'MARACUYÁ', 'HIELO', '', '', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:29:39', 'F'),
(365, 'FEEL', 'feel', 'Pera y menta.', 'PERA', 'MENTA', '', '', '', 'Privilege', 'https://i.ibb.co/B3DcXnL/feel.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:14:55', 'F'),
(141, 'Fellatio', 'fellatio', 'Batido de sandía, melón dulce, maracuyá y frutas del bosque.', 'SANDÍA', 'MELÓN', 'MARACUYÁ', 'FRUTAS DEL BOSQUE', '', 'Hookain', 'https://i.ibb.co/qmkYpzL/12-Fellatio.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(366, 'FIGHT', 'fight', 'Abre tus pulmones a la intensidad de la menta silvestre.', 'MENTA', '', '', '', '', 'Privilege', 'https://i.ibb.co/r0XLBvB/fight.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:16:05', 'F'),
(419, 'Five O\'Clock', 'five_oclock', 'Tarta de limón.', 'TARTA', 'LIMÓN', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:03:57', 'F'),
(56, 'Free Spartacus', 'free_spartacus', 'Mix de flor de saúco', 'FLOR DE SAÚCO', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(420, 'French Kiss', 'french_kiss', 'Uva y menta.', 'UVA', 'MENTA', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:04:28', 'F'),
(95, 'French Rivera', 'french_rivera', 'Chicle y melón', 'CHICLE', 'MELÓN', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(320, 'Fresh Mix', 'fresh_mix', 'Mandarina, cereza y hielo.', 'MANDARINA', 'CEREZA', 'HIELO', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:20:28', 'F'),
(462, 'Frost Double Crunch', 'frost_double_crunch', 'Dos manzanas heladas.', 'DOBLE MANZANA', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:30:15', 'F'),
(297, 'G', 'g', 'Elegante y refinado. La magia de la uva con notas dulces de la miel.', 'UVA', '', '', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(295, 'GB', 'gb', 'Galleta de jengibre, sirope y canela.', 'GALLETA', 'JENGIBRE', 'CANELA', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(249, 'Gipsy Kings', 'gipsy_kings', 'Melón dulce, melocotón, sandía y limón.', 'MELÓN', 'MELOCOTÓN', 'SANDÍA', 'LIMÓN', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(201, 'Gobfather', 'gobfather', 'Doble manzana.', 'DOBLE MANZANA', '', '', '', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(323, 'Golden Anna', 'golden_anna', 'Piña y hielo.', 'PIÑA', 'HIELO', '', '', '', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:28:48', 'F'),
(421, 'Golden Eye', 'golden_eye', 'Manzana dulce helada.', 'MANZANA', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:04:56', 'F'),
(381, 'Got Dozen', 'got_dozen', 'Super helado de menta.', 'MENTA', '', '', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:53:10', 'F'),
(39, 'Grapic', 'grapic', 'Manzana verde helada', 'MANZANA', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(466, 'Grapio', 'grapio', 'Uva.', 'UVA', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:31:48', 'F'),
(465, 'Grapio Green', 'grapio_green', 'Uva y menta.', 'UVA', 'MENTA', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:31:34', 'F'),
(461, 'Green Chu', 'green_chu', 'Chicle de menta.', 'CHICLE', 'MENTA', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:29:37', 'F'),
(401, 'Green Craze', 'green_craze', 'Sabor fresco.', 'MENTOL', '', '', '', '', 'Streetsmoke', 'https://i.ibb.co/6rrsZKp/streetsmoke.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:16:00', 'F'),
(32, 'Green Flash', 'green_flash', 'Menta', 'MENTA', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(142, 'Green Lean', 'green_lean', 'La mejor lima que jamás hayas probado, convertida en zumo de lima. Siente el sabor y el frescor de miles de limas que explotarán en tu cazoleta.', 'LIMA', '', '', '', '', 'Hookain', 'https://i.ibb.co/YfV7d6j/09-Green-Lean.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(322, 'Green Leo', 'green_leo', 'Saúco, Jengibre, Limón y Lima.', 'JENGIBRE', 'LIMÓN', 'LIMA', 'FLOR DE SAÚCO', '', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:28:19', 'F'),
(250, 'Green Leon Kizz', 'green_leon_kizz', 'Lima y menta.', 'LIMA', 'MENTA', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(40, 'Green Mix', 'green_mix', 'Lima, manzana verde, kiwi y menta', 'LIMA', 'MANZANA', 'KIWI', 'MENTA', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(422, 'Hakuna Matata', 'hakuna_matata', 'Plátano y caramelo.', 'PLÁTANO', 'CARAMELO', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:05:25', 'F'),
(204, 'Halep Boom', 'halep_boom', 'Lichi y arándanos.', 'LICHI', 'ARÁNDANOS', '', '', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(36, 'Hate 69', 'hate_69', 'Mezcla de frutas heladas', 'FRUTAS EXÓTICAS', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(251, 'Hawaii', 'hawaii', 'Piña, mango y menta.', 'PIÑA', 'MANGO', 'MENTA', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(101, 'Heaven', 'heaven', 'Fruta tropical, melón y menta', 'MELÓN', 'MENTA', 'MANGO', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(208, 'Hera', 'hera', 'El sabor preferido de la esposa de Zeus, combinación ganadora de cereza y limón.', 'CEREZA', 'LIMÓN', '', '', '', 'Smyrna', 'https://i.ibb.co/N7Q8fnC/hera.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(315, 'Hijo De Phruta', 'hijo_de_phruta', '16 frutas diferentes con caramelo cremoso y un toque fresco de mentol.', 'FRUTAS EXÓTICAS', 'MENTOL', '', '', '', 'Hookain', 'https://i.ibb.co/mydWLK0/31-Hijo-de-Phruta.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:10:10', 'F'),
(392, 'Hypnoze', 'hypnoze', 'Cereza, arándano, uva y hielo.', 'CEREZA', 'ARÁNDANOS', 'UVA', 'HIELO', '', 'Prestige', 'https://i.ibb.co/NKFfK7S/Prestige.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:06:42', 'F'),
(41, 'I Blueberry', 'i_blueberry', 'Arándanos helados', 'ARÁNDANOS', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(71, 'I Granny', 'i_granny', 'Manzana verde dulce', 'MANZANA', '', '', '', '', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(252, 'I\'ss', 'iss', 'Hielo', 'HIELO', '', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(253, 'I\'ss Boni', 'iss_boni', 'Menta dulce y chicle.', 'MENTA', 'CHICLE', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(260, 'I\'ss Kaktu', 'iss_kaktu', 'Cactus y hielo.', 'CACTUS', 'HIELO', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(254, 'I\'ss Lie On The Rocks', 'iss_lie_on_the_rocks', 'Hielo, lima, arándano y chicle.', 'HIELO', 'LIMA', 'ARÁNDANOS', 'CHICLE', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(42, 'Icbodrumm', 'icbdrumm', 'Mandarina helada', 'MANDARINA', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(33, 'Ice Bird', 'ice_bird', 'Kiwi helado', 'KIWI', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(330, 'Ice Kaktuz', 'ice_kaktuz', 'Una combinación afrutada, ácida y a la vez dulce del cactus con hielo.', 'CACTUS', '', '', '', '', 'Holster', 'https://i.ibb.co/pyf4k8h/icekaktus.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:37:33', 'F'),
(34, 'Ice Pin', 'ice_pin', 'Piña helada', 'PIÑA', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(43, 'Iceber', 'iceber', 'Frutas del bosque heladas', 'FRUTAS DEL BOSQUE', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(227, 'Icertan', 'icertan', 'Frutas del bosque con mandarina helada.', 'FRUTAS DEL BOSQUE', 'MANDARINA', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(228, 'Icitmin', 'icitmin', 'Limón y pomelo con menta.', 'LIMÓN', 'POMELO', 'MENTA', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(229, 'Icraper', 'icraper', 'Uva y frambuesa helada.', 'UVA', 'FRAMBUESA', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(45, 'Imcesy', 'imcesy', 'Lima, lichi y arándanos', 'LIMA', 'LICHI', 'ARÁNDANOS', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(394, 'Ipanima', 'ipanima', 'limón y maracuyá.', 'LIMÓN', 'MARACUYÁ', '', '', '', 'Prestige', 'https://i.ibb.co/NKFfK7S/Prestige.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:07:43', 'F'),
(423, 'Irish Drean', 'irish_dream', 'Nuez y coco.', 'NUECES', 'COCO', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:05:57', 'F'),
(181, 'Istanblue', 'istanblue', 'Uva, arándano y menta.', 'UVA', 'ARÁNDANOS', 'MENTA', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(46, 'Istanbul Nights', 'istanbul_nights', 'Frambuesa, arándanos y fresa', 'FRAMBUESA', 'ARÁNDANOS', 'FRESA', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(424, 'Italian Passion', 'italian_passion', 'Refresco de naranja.', 'NARANJA', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:06:27', 'F'),
(88, 'Jelly Bear', 'jelly_bear', 'Osito de gominola', 'GOMINOLA', '', '', '', '', 'Dozaj', 'https://i.ibb.co/pRkyBsc/jellybear.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(316, 'Jizzy Pia', 'jizzy_pia', 'Pera, lima y sandía.', 'PERA', 'LIMA', 'SANDÍA', '', '', 'Hookain', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:10:46', 'F'),
(202, 'Joker', 'joker', 'Ice banana y fresa', 'PLÁTANO', 'FRESA', '', '', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(367, 'JUMP', 'jump', 'Tarta de limón.', 'TARTA', 'LIMÓN', '', '', '', 'Privilege', 'https://i.ibb.co/s3kGrM6/jump.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:16:43', 'F'),
(281, 'Jungle Jungle', 'jungle_jungle', 'Naranja, limón y menta.', 'NARANJA', 'LIMÓN', 'MENTA', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(143, 'Kaffa Yayo', 'kaffa_yayo', 'El mejor postre con sabor a coco. Coco de Hawai cubierto por una fina crema de almendras con vainilla bourbon.', 'COCO', 'VAINILLA', '', '', '', 'Hookain', 'https://i.ibb.co/548pk72/25-Kaffa-Yayo.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(343, 'Kairos', 'kairos', 'Golosina de Cola. Viaja al pasado y rememora tu infancia.', 'COLA', 'GOMINOLA', '', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:54:41', 'F'),
(329, 'Kamasutra', 'kamasutra', 'Bayas, Cereza, Fresa, Frutos del bosque, Hielo, Menta y Uva.', 'BAYAS', 'CEREZA', 'FRESA', 'FRUTAS DEL BOSQUE', 'UVA', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:31:01', 'F');
INSERT INTO `tabaco` (`id`, `name_tabaco`, `name_api`, `descripcion`, `sabor1`, `sabor2`, `sabor3`, `sabor4`, `sabor5`, `marca`, `imagen`, `imagen_flag`, `fecha_publicacion`, `novedad`) VALUES
(210, 'Karnaval', 'karnaval', '¡Que empiece la fiesta! Baila con esta jugosa mezcla entre sandía, pera y melón.', 'SANDÍA', 'PERA', 'MELÓN', '', '', 'Smyrna', 'https://i.ibb.co/sP2n2vx/karnaval.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(169, 'Khamseen', 'khamseen', 'Una compleja composición de bayas que tocará una fibra sensible en cada corazón.', 'BAYAS', '', '', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(203, 'King Leonidas', 'king_leonidas', 'Violeta, arándanos y chocolate blanco.', 'ARÁNDANOS', 'CHOCOLATE', '', '', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(375, 'KISS', 'kiss', 'Fruta de la pasión y menta.', 'FRUTA DE LA PASIÓN', 'MENTA', '', '', '', 'Privilege', 'https://i.ibb.co/1Gty9pc/04-kiss-1600012523594-230x230-adjust-middle.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:22:41', 'F'),
(151, 'Kivi King', 'kivi_king', 'Kiwi afrutado intenso sobre una cama de lima. Agradablemente fresco con un toque de menta y mentol.', 'KIWI', 'LIMA', 'MENTA', 'MENTOL', '', 'Hookain', 'https://i.ibb.co/jh1C3dY/22-Kivi-King.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(255, 'Kizz', 'kizz', 'Menta.', 'MENTA', '', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(282, 'Krosty App', 'krosty_app', 'Manzana asada.', 'MANZANA', '', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(96, 'Kush', 'kush', 'Sabor CBD', 'CBD', '', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(97, 'Kush Na3ne', 'kush_ne3ne', 'Sabor CBD con menta', 'CBD', 'MENTA', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(190, 'La Beirut', 'la_beirut', 'Café con caramelo.', 'CAFÉ', 'CARAMELO', '', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(280, 'La Bonita', 'la_bonita', 'Uva, fresa, maracuyá, manzana y cereza.', 'UVA', 'FRESA', 'MARACUYÁ', 'MANZANA', 'CEREZA', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(205, 'La Force', 'la_force', 'Ice fresa y melón.', 'FRESA', 'MELÓN', '', '', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(256, 'Lady Killer', 'lady_killer', 'Melocotón, mango, menta y hielo.', 'MELOCOTÓN', 'MANGO', 'MENTA', 'HIELO', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(174, 'Lambada', 'lambada', '¡Baila al ritmo del famoso gofre holandés! Redondos con caramelo por dentro. ¡Qué buenos están, madre mía!', 'GOFRE', 'CARAMELO', '', '', '', 'Dozaj', 'https://i.ibb.co/GV2bkh4/Lambada.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(80, 'Land Of Fire', 'land_of_fire', 'Vodka, café, licor, nata', 'CAFÉ', 'LICOR', '', '', '', 'Dozaj', 'https://i.ibb.co/SfjTHPv/Land-Of-Fire.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(132, 'Laoz', 'laoz', 'Jugo dulce de cereza, afrutado e intenso combinado con arándanos. Añadimos mentol para hacerlo más fresco. Sabor afrutado y fresco. ', 'CEREZA', 'ARÁNDANOS', 'MENTOL', '', '', 'Hookain', 'https://i.ibb.co/XzNkCTp/21-Laoz.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(386, 'Late Night', 'late_night', 'Dulce de chocolate con cacahuete y sirope de caramelo.', 'CHOCOLATE', 'CACAHUETE', 'CARAMELO', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:56:55', 'F'),
(146, 'Lemenciaga', 'lemenciaga', 'Un sabor refrescante de limón y esencia de té verde con el indispensable toque de menta fresca.', 'LIMÓN', 'TÉ', 'MENTA', '', '', 'Hookain', 'https://i.ibb.co/m65jG3q/15-Lemenciaga.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(164, 'Lena', 'lena', 'Este es el sabor suave a galletas, con fresas silvestres al horno.', 'GALLETA', 'FRESA', '', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(257, 'Leon Pi', 'leon_pi', 'Tarta de limón.', 'TARTA', 'LIMÓN', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(368, 'LIKE', 'like', 'Chicle de canela.', 'CHICLE', 'CANELA', '', '', '', 'Privilege', 'https://i.ibb.co/8MDXjZX/like-1552600732841-230x230-adjust-middle.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:17:31', 'F'),
(369, 'LIVE', 'live', 'Piña colada.', 'PIÑA', 'COCO', '', '', '', 'Privilege', 'https://i.ibb.co/Yy3f007/live.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:18:05', 'F'),
(72, 'LM Blast', 'lm_blast', 'Refrescante y agrio sabor de limón maduro', 'LIMÓN', '', '', '', '', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(191, 'London Fog', 'london_fog', 'Pomelo, rosa negra y menta dulce.', 'POMELO', 'MENTA', '', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(67, 'Los Locos', 'los_locos', 'Deliciosa y cremosa irish cream', 'IRISH CREAM', '', '', '', '', 'Aloha', 'https://i.ibb.co/ZMyymk3/LOS-LOCOS.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(370, 'LOVE', 'love', 'La dulce potencia de los frutos rojos.', 'FRUTOS ROJOS', '', '', '', '', 'Privilege', 'https://i.ibb.co/RH0SPPB/love.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:19:04', 'F'),
(258, 'Love 66', 'love_66', 'La receta de oro de hookah de toda la vida. 6 sabores y menta.', 'FRUTOS ROJOS', 'MENTA', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(106, 'Lover', 'lover', 'Melón, bayas, especias y fresas', 'MELÓN', 'BAYAS', 'FRESA', 'ESPECIAS', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(472, 'Lucid Dream', 'lucid_dream', 'Arándanos, cítricos y efecto refrescante final.', 'ARÁNDANOS', 'HIELO', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:36:15', 'F'),
(261, 'M.M.', 'm_m', 'Perfume de Marilyn Monroe. Pruébalo y lo entenderás.', 'ROSA', '', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(460, 'Magic Love 2.0', 'magic_love_2', 'Fruta de la pasión, melón, especias, menta y efecto refrescante final.', 'FRUTA DE LA PASIÓN', 'MELÓN', 'ESPECIAS', 'MENTA', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:29:05', 'F'),
(382, 'Malibu', 'malibu', 'Mix de frutas con vainilla y un toque fresco de limón.', 'FRUTOS ROJOS', 'VAINILLA', 'LIMÓN', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:53:59', 'F'),
(425, 'Mambo', 'mambo', 'Fresa, kiwi, melocotón y coco.', 'FRESA', 'KIWI', 'MELOCOTÓN', 'COCO', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:06:49', 'F'),
(262, 'Manko Tanko', 'manko_tanko', 'Mango y maracuyá.', 'MANGO', 'MARACUYÁ', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(263, 'Manko Tanko I\'ss', 'manko_tanko_iss', 'Mango, maracuyá y hielo.', 'MANGO', 'MARACUYÁ', 'HIELO', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(317, 'Margaritail', 'margaritail', 'Cocktail margarita.', 'MARGARITA', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:18:53', 'F'),
(81, 'Marshall', 'marshall', 'Brownie, naranja, menta', 'NARANJA', 'MENTA', 'CHOCOLATE', '', '', 'Dozaj', 'https://i.ibb.co/p1VzHfb/marshall.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(68, 'Maverick', 'maverick', 'Limonada con hielo, refrescante, única e incomparable', 'LIMÓN', 'HIELO', '', '', '', 'Aloha', 'https://i.ibb.co/LpJC59R/Maverick-3-min.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(215, 'Mediterranean Punch', 'mediterranean_punch', 'Experimenta la emoción tropical de este refrescante sabor. Una deliciosa combinación de lima especiada con naranja dulce y menta.', 'LIMA', 'NARANJA', 'MENTA', '', '', 'Afzal', 'https://i.ibb.co/1zZcSfB/Mediterranean-Punch-50g.jpg', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', 'F'),
(162, 'Mekong', 'mekong', 'Desprende un intenso aroma a Calamansi. Creado mezclando limón, lima y Kumquat.', 'LIMÓN', 'LIMA', 'NARANJA', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(314, 'Mellionair', 'mellionair', 'El padrino de los sabores a sandía. Intenso y jugoso sabor a sandía con notas de mentol.', 'SANDÍA', 'MENTOL', '', '', '', 'Hookain', 'https://i.ibb.co/myJxX5C/32-mellionair.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:09:13', 'F'),
(103, 'Meridian', 'meridian', 'Sandía, melón y manzana', 'SANDÍA', 'MELÓN', 'MANZANA', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(230, 'Merry', 'merry', 'Moras del bosque.', 'MORA', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(298, 'MG', 'mg', 'Una ola para los sentidos. Intenso y equilibrado chicle y menta fresca.', 'CHICLE', 'MENTA', '', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(73, 'MG Assi', 'mg_assi', 'Batido con pulpa de mango', 'MANGO', '', '', '', '', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(193, 'Mi Amor', 'mi_amor', 'Plátano, mezcla de bayas y hielo.', 'PLÁTANO', 'BAYAS', 'HIELO', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(426, 'Misguided', 'misguided', 'Arándano, lichi y lima.', 'ARÁNDANOS', 'LICHI', 'LIMA', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:07:45', 'F'),
(332, 'Miss Joosy', 'mss_joosy', 'Las frambuesas ácidas se encuentran con las fresas más jugosas y un toque de frescor.', 'FRAMBUESA', 'FRESA', '', '', '', 'Holster', 'https://i.ibb.co/QvfGQW7/missjoosy.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:39:52', 'F'),
(165, 'Mississippi', 'mississippi', 'Sabor a carne de cerezas maduras, jugosas y dulces, que se complementan con la ligera astringencia del hueso.', 'CEREZA', '', '', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(451, 'Misty Black', 'misty_black', 'Aroma dulce y anisado en este sabor a regaliz.', 'REGALIZ', 'ANÍS', '', '', '', 'Nakhla', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg', '2021-09-18 22:59:27', 'F'),
(82, 'Mito', 'mito', 'Caramelo, canela, toque helado.', 'CARAMELO', 'CANELA', 'HIELO', '', '', 'Dozaj', 'https://i.ibb.co/x5dMhtJ/mito.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(292, 'Mixed F', 'mixed_f', 'Bomba explosiva que revoluciona los sentidos. Manzana, ciruela, pera y bayas.', 'MANZANA', 'CIRUELA', 'PERA', 'BAYAS', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(130, 'Mng Loco', 'mng_loco', 'Una combinación de diferentes tipos de mango, un toque de energía y nuestro nuevo y aún más fresco sabor a mentol.', 'MANGO', 'MENTOL', '', '', '', 'Hookain', 'https://i.ibb.co/WBbm3MP/29-Mongo-Loco.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(362, 'Monkey Brain', 'monkey_brain', 'Sabor fresco de cola y el cítrico del limón más natural.', 'COLA', 'LIMÓN', '', '', '', 'Nameless', 'https://i.ibb.co/Jys8s36/nameless.png', 'https://restcountries.eu/data/deu.svg', '2021-09-17 00:04:36', 'F'),
(264, 'Moon Dream', 'moon_dream', 'Vainilla, chicle, canela y menta.', 'VAINILLA', 'CHICLE', 'CANELA', 'MENTA', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(427, 'Moonwalk', 'moonwalk', 'Sprite y tónica.', 'TÓNICA', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:08:17', 'F'),
(192, 'Moscow Evenings', 'moscow_evenings', 'Sandía, melocotón y menta.', 'SANDÍA', 'MELOCOTÓN', 'MENTA', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(334, 'Mr. John', 'mr_john', 'Jugosa mezcla entre la piña, el melocotón y el limón.', 'PIÑA', 'MELOCOTÓN', 'LIMÓN', '', '', 'Holster', 'https://i.ibb.co/zHkYW8q/mrjohn.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:41:27', 'F'),
(399, 'Mrs. Pink', 'mrs_pink', 'Sabor tropical afrutado de pomelo dulce.', 'POMELO', '', '', '', '', 'Streetsmoke', 'https://i.ibb.co/6rrsZKp/streetsmoke.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:14:41', 'F'),
(303, 'Mulan Sword', 'mulan_sword', 'Kiwi y mango.', 'KIWI', 'MANGO', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(428, 'Mystic China', 'mystic_china', 'Lichi.', 'LICHI', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:09:05', 'F'),
(93, 'Na3ne', 'na3ne', 'Menta.', 'MENTA', '', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(172, 'Nairobi', 'nairobi', '¿La sensación? ¡Creemos que sí!, ¿Quién no conoce el sabor del cola cao? ¡Este sabe igual!', 'CHOCOLATE', '', '', '', '', 'Dozaj', 'https://i.ibb.co/0QtSctt/Nairobi.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(62, 'Nazaré', 'nazare', 'Mezcla única de melón, sandía, fruta de la pasión, chicle y tres sabores adicionales', 'MELÓN', 'SANDÍA', 'FRUTA DE LA PASIÓN', 'CHICLE', '', 'Aloha', 'https://i.ibb.co/j8CHQrh/Nazare-1-min.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(182, 'No Woman No Cry', 'no_woman_no_cry', 'Pera, fresa y menta.', 'PERA', 'FRESA', 'MENTA', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(338, 'Noctis', 'noctis', 'Lima helada. La noche es para los más arriesgados, al igual que este sabor. Disfruta la experiencia al límite.', 'LIMA', '', '', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:52:53', 'F'),
(345, 'Obscure', 'obscure', 'Menta fresca.', 'MENTA', 'MENTOL', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 09:00:46', 'F'),
(335, 'Occasum', 'occasum', 'Chicle de canela. Disfruta del caer de los astros con un sabor explosivo.', 'CHICLE', 'CANELA', '', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:50:16', 'F'),
(58, 'Ola Zapata', 'ola_zapata', 'CocaCola con canela', 'COLA', 'CANELA', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(299, 'OM', 'om', 'Curiosa combinación de naranja madura y refrescante menta verde.', 'NARANJA', 'MENTA', '', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(200, 'Ommy Shelby', 'ommy_shelby', 'Tarta de limón', 'TARTA', 'LIMÓN', '', '', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(341, 'One Second', 'one_second', 'Sandía Picante. Es hora de que te des un tiempo y disfrutes de esta afrutada aventura.', 'SANDÍA', '', '', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:54:11', 'F'),
(235, 'Oricman', 'oricman', 'Naranja y mango helado.', 'NARANJA', 'MANGO', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(387, 'Oriental Dessert', 'oriental_dessert', 'Fresa con melocotón mentolado.', 'FRESA', 'MELOCOTÓN', 'MENTOL', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:57:50', 'F'),
(133, 'Original Vanta Zotic', 'original_vanta_zotic', 'Batido afrutado de maracuyá, durazno y zumo de naranja, recuerda a un limonada muy famosa con un toque exótico.', 'MARACUYÁ', 'DURAZNO', 'NARANJA', 'LIMÓN', '', 'Hookain', 'https://i.ibb.co/gDMZ1sT/01-Original-Vanta-Erotic.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(173, 'Orko', 'orko', '¡Sabor simplemente espectacular! Prueba este increíble mix de suave cascara de limón, lima y frescor de menta. ', 'LIMÓN', 'LIMA', 'MENTA', '', '', 'Dozaj', 'https://i.ibb.co/bQLn99r/Orko.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(57, 'Orng Mnt', 'orng_mnt', 'Naranja helada', 'NARANJA', '', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(352, 'ORNGE MNT', 'ornge_mnt', 'Naranja y menta.', 'NARANJA', '', '', '', '', 'Mala Vida', 'https://i.ibb.co/BjyFyd7/orange.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:11:04', 'F'),
(135, 'Orogina', 'orogina', 'Naranja y mandarina combinadas con un toque de White Caek.', 'NARANJA', 'MANDARINA', '', '', '', 'Hookain', 'https://i.ibb.co/sRPpMKJ/24-Orogina.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(429, 'Over The Rainbow', 'over_the_rainbow', 'Pera y menta.', 'PERA', 'MENTA', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:09:39', 'F'),
(1, 'Pablo', 'pablo', 'Lima y arándanos', 'LIMA', 'ARÁNDANOS', '', '', '', 'Nameless', 'https://i.ibb.co/Jv40Yg2/cajetilla-pablo-50.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(64, 'Pacific', 'pacific', 'Suave, aterciopelado y refrescante. Helado cremoso de frutos del bosque', 'FRUTAS DEL BOSQUE', '', '', '', '', 'Aloha', 'https://i.ibb.co/rkxjc9b/Pacific.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(265, 'Pair Kizz', 'pair_kizz', 'Pera y menta.', 'PERA', 'MENTA', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(59, 'Pancho Villa', 'pancho_villa', 'Mix frutal con melón y limón', 'MELÓN', 'LIMÓN', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(266, 'Paradiso I\'ss', 'paradiso_iss', 'Pomelo y hielo.', 'POMELO', 'HIELO', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(313, 'Paris Romantique', 'paris_romantique', 'Piña, fresa, cactus y menta Blue Horse.', 'PIÑA', 'FRESA', 'CACTUS', 'MENTA', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:01:21', 'F'),
(267, 'Passion Kizz', 'passion_kizz', 'Maracuyá y menta.', 'MARACUYÁ', 'MENTA', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(383, 'Passion Love', 'passion_love', 'Frutos del bosque con fresa.', 'FRUTAS DEL BOSQUE', 'FRESA', '', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:54:45', 'F'),
(342, 'Pause', 'pause', 'Dulce Café Moca al estilo Americano. Conquista el camino y arrasa a cada paso con esta increíble experiencia.', 'CAFÉ', '', '', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:54:24', 'F'),
(336, 'Perception Of Time', 'perception_of_time', 'Chicle de bayas brasileñas. Empieza a ver el mundo desde otra perspectiva con cada calada.', 'BAYAS', '', '', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:51:15', 'F'),
(450, 'Perly Indigo', 'perly_indigo', 'Arándano.', 'ARÁNDANOS', '', '', '', '', 'Nakhla', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg', '2021-09-18 22:58:20', 'F'),
(138, 'Pic Zkittlez', 'pic_zkittlez', 'Refrescante té helado de melocotón salvaje y albaricoque. Mezclado con menta y unos ingredientes especiales que no te contamos.', 'TÉ', 'MELOCOTÓN', 'ALBARICOQUE', 'MENTA', 'ESPECIAS', 'Hookain', 'https://i.ibb.co/fdjHHDY/04-Pic-Zkittlez.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(100, 'Pink Kiss', 'pink_kiss', 'Frutas exóticas dulces', 'FRUTAS EXÓTICAS', '', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(177, 'Pink Lemenciaga', 'pink_lemenciaga', 'El pomelo rosado se encuentra con Lemenciaga.', 'POMELO', 'LIMÓN', '', '', '', 'Hookain', 'https://i.ibb.co/wJX56xv/10-Pink-Lemenciaga.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(155, 'Pinkman', 'pinkman', 'Pomelo rosa, sirope de frambuesa y fresa', 'POMELO', 'FRAMBUESA', 'FRESA', '', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(236, 'Pistaicrem', 'pistaicrem', 'Helado de pistacho.', 'PISTACHO', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(371, 'PLAY', 'play', 'Sandía helada.', 'SANDÍA', '', '', '', '', 'Privilege', 'https://i.ibb.co/tQ5xYbb/play.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:19:49', 'F'),
(349, 'PNA CLADA', 'pna_clada', 'Piña colada.', 'PIÑA', 'COCO', '', '', '', 'Mala Vida', 'https://i.ibb.co/tHYZYWd/PnaClada.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:08:17', 'F'),
(430, 'Pocamel', 'pocamel', 'Caramelo.', 'CARAMELO', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:10:01', 'F'),
(377, 'Pop Corn', 'pop_corn', 'Palomitas de maíz con mantequilla.', 'PALOMITAS', '', '', '', '', 'Smyrna', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-17 00:36:19', 'F'),
(268, 'Power', 'power', 'Bebida energética.', 'BEBIDA ENERGÉTICA', '', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(431, 'Power Of Love', 'power_of_love', 'Frutas exóticas.', 'FRUTAS EXÓTICAS', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:10:54', 'F'),
(147, 'Punani', 'punani', 'Jugoso, jugosísimo, mango y maracuyá fusionado con naranja y piña.', 'MANGO', 'MARACUYÁ', 'NARANJA', 'PIÑA', '', 'Hookain', 'https://i.ibb.co/XFWNMgn/05-Punani.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(305, 'Punkman', 'punkman', 'Mezcla de frambuesas y fresa.', 'FRAMBUESA', 'FRESA', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:48:09', 'F'),
(269, 'Pych Blue Kizz', 'pych_blue_kizz', 'Melocotón, arándanos y menta.', 'MELOCOTÓN', 'ARÁNDANOS', 'MENTA', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(157, 'Raspi', 'raspi', 'Mermelada de frambuesa', 'FRAMBUESA', '', '', '', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(372, 'READ', 'read', 'El postre perfecto, galleta y naranja.', 'GALLETA', 'NARANJA', '', '', '', 'Privilege', 'https://i.ibb.co/Rg6FrFM/read.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:20:37', 'F'),
(270, 'Red Alert I\'ss', 'red_alert_iss', 'Fresa, plátano y hielo.', 'FRESA', 'PLÁTANO', 'HIELO', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(324, 'Red Balls', 'red_balls', 'Hielo y Cereza.', 'CEREZA', 'HIELO', '', '', '', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:29:16', 'F'),
(432, 'Red Blast', 'red_blast', 'Menta y frambuesa.', 'MENTA', 'FRAMBUESA', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:11:30', 'F'),
(403, 'Red Charm', 'red_charm', 'Sandía y melón dulce.', 'SANDÍA', 'MELÓN', '', '', '', 'Streetsmoke', 'https://i.ibb.co/6rrsZKp/streetsmoke.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:17:37', 'F'),
(327, 'Red Fall', 'red_fall', 'Sandía y hielo.', 'SANDÍA', 'HIELO', '', '', '', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:30:16', 'F'),
(433, 'Red Fussion', 'red_fussion', 'Infusión de frutos rojos.', 'FRUTOS ROJOS', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:12:06', 'F'),
(468, 'Red Green Smash', 'red_green_smash', 'Sandía y menta.', 'SANDÍA', 'MENTA', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:32:57', 'F'),
(467, 'Red Patch', 'red_patch', 'Fresa.', 'FRESA', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:32:22', 'F'),
(390, 'Red Shake', 'red_shake', 'Helado de fresa.', 'FRESA', '', '', '', '', 'Prestige', 'https://i.ibb.co/NKFfK7S/Prestige.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:04:57', 'F'),
(464, 'Red Smash', 'red_smash', 'Sandía.', 'SANDÍA', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:31:10', 'F'),
(361, 'Red Turtle', 'red_turtle', 'Chicle de canela picante.', 'CHICLE', 'CANELA', '', '', '', 'Nameless', 'https://i.ibb.co/Jys8s36/nameless.png', 'https://restcountries.eu/data/deu.svg', '2021-09-17 00:03:04', 'F'),
(271, 'Rhapsody', 'rhapsody', 'Melocotón, piña, mora, menta y hielo.', 'MELOCOTÓN', 'PIÑA', 'MORA', 'MENTA', 'HIELO', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(220, 'Rio Grande', 'rio_grande', 'Efecto de frío amargo que hace helada cualquier mezcla.', 'HIELO', '', '', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(312, 'Rio Kiss', 'rio_kiss', 'Maracuyá, melocotón y menta Blue Horse.', 'MARACUYÁ', 'MELOCOTÓN', 'MENTA', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:00:41', 'F'),
(89, 'Rio Lady', 'rio_lady', 'Piña, melón, chicle y toque helado', 'PIÑA', 'MELÓN', 'CHICLE', '', '', 'Dozaj', 'https://i.ibb.co/sHJ9W6D/riolady.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(388, 'Rock N Roll', 'rock_n_roll', 'Chicle Bubaloo mentolado.', 'CHICLE', 'MENTOL', '', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:58:42', 'F'),
(454, 'Rosy Ochre', 'rosy_ochre', 'Aroma a melocotón natural combinado con matices dulces.', 'MELOCOTÓN', '', '', '', '', 'Nakhla', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg', '2021-09-18 23:02:01', 'F'),
(47, 'Rotana', 'rotana', 'Melón con nata y fresa', 'MELÓN', 'FRESA', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(83, 'Royal Style', 'royal_style', 'Muffin de arándano', 'ARÁNDANOS', '', '', '', '', 'Dozaj', 'https://i.ibb.co/BtcvYWV/Royal-Style.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(455, 'Ruby Red', 'ruby_red', 'Dulce, cremoso e intenso sabor a cereza.', 'CEREZA', '', '', '', '', 'Nakhla', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg', '2021-09-18 23:02:52', 'F'),
(402, 'Russian Roulette', 'russian_roulette', 'Almendra, menta y mezcla secreta.', 'MENTA', 'FRUTOS SECOS', '', '', '', 'Streetsmoke', 'https://i.ibb.co/6rrsZKp/streetsmoke.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:16:58', 'F'),
(434, 'Seduction', 'seduction', 'Melón y melocotón.', 'MELÓN', 'MELOCOTÓN', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:12:32', 'F'),
(435, 'Sexy Green', 'sexy_green', 'Menta y clorofila.', 'MENTA', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:13:02', 'F'),
(69, 'Shaka Shaka', 'shaka_shaka', 'Menta dulce, penetrante y agradable. Adictiva.', 'MENTA', '', '', '', '', 'Aloha', 'https://i.ibb.co/9VWmVKD/SHAKA-SHAKA-3-min.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(374, 'SHAKE', 'shake', 'Mora, fresa y ice.', 'MORA', 'FRESA', 'HIELO', '', '', 'Privilege', 'https://i.ibb.co/NN4pTvR/03-shake-1600012523571-230x230-adjust-middle.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:22:05', 'F'),
(168, 'Sirocco', 'sirocco', 'Sabor agridulce de la exótica fruta del tamarindo con un tinte cítrico.', 'FRUTAS EXÓTICAS', 'TAMARINDO', '', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(272, 'Skyfall', 'skyfall', 'Melocotón, sandía, melón y hielo.', 'MELOCOTÓN', 'SANDÍA', 'MELÓN', 'HIELO', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(140, 'Sm!nt', 'smint', 'Experimenta el sabor refrescante de nuestro caramelo de menta a la tic tac. Fresco y dulce.', 'MENTOL', 'MENTA', '', '', '', 'Hookain', 'https://i.ibb.co/YBbhtJp/30-smint-min.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(331, 'Smurf Daddy', 'smurf_daddy', 'Deliciosa mezcla de moras, frutas del bosque y maracuyá con yogur.', 'MORA', 'FRUTAS DEL BOSQUE', 'MARACUYÁ', '', '', 'Holster', 'https://i.ibb.co/sPL0P1y/smurf.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:38:45', 'F'),
(469, 'Snowy Fuchsia Green', 'snowy_fuchsia_green', 'Frambuesa helada y menta.', 'FRAMBUESA', 'MENTA', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:33:36', 'F'),
(150, 'Soleiro Spliff', 'soleiro_spliff', 'Una explosión de sabores. Maracuyá, caramelo de naranja y helado de vainilla. ', 'MARACUYÁ', 'NARANJA', 'VAINILLA', '', '', 'Hookain', 'https://i.ibb.co/3WfqJJL/06-Soleiro-Spliff.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(170, 'Southerly Buster', 'southerly_buster', 'Un cóctel tropical con mango dulce y jugosa fruta de la pasión con la dulzura aterciopelada del melocotón.', 'MANGO', 'FRUTA DE LA PASIÓN', 'MELOCOTÓN', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(159, 'Space Flavour', 'space_flavour', 'Mango, lichi, fruta de la pasión y pétalos de rosa', 'MANGO', 'LICHI', 'FRUTA DE LA PASIÓN', 'ROSA', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(158, 'Space Force', 'space_force', 'Tarta de pistacho con frambuesa', 'TARTA', 'PISTACHO', 'FRAMBUESA', '', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(156, 'Space Invaders', 'space_invaders', 'Pistacho', 'PISTACHO', '', '', '', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(456, 'Spark Green', 'spark_green', 'Sabor a menta que proporciona un toque frío y refrescante.', 'MENTA', '', '', '', '', 'Nakhla', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg', '2021-09-18 23:03:41', 'F'),
(457, 'Sparkly Red', 'sparkly_red', 'Aroma fuerte y dulce a frambuesa.', 'FRAMBUESA', '', '', '', '', 'Nakhla', 'https://i.ibb.co/7RjSTTd/Nakhla.jpg', 'https://restcountries.eu/data/egy.svg', '2021-09-18 23:06:26', 'F'),
(66, 'Sparrow', 'sparrow', 'Mezcla de piña y mango con efecto frío', 'PIÑA', 'MANGO', '', '', '', 'Aloha', 'https://i.ibb.co/qF64HQD/Sparrow-1-min.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(44, 'Spepinch', 'spepinch', 'Lima y melocotón a la parrilla', 'LIMA', 'MELOCOTÓN', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(61, 'Splash', 'splash', 'Naranja picante, fresca y cremosa', 'NARANJA', '', '', '', '', 'Aloha', 'https://i.ibb.co/wsYqbBs/Splash-2-min.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(311, 'Sputnik', 'sputnik', 'Hielo, maracuyá y pomelo.', 'MARACUYÁ', 'POMELO', 'HIELO', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:59:56', 'F'),
(153, 'Stellar', 'stellar', 'Lima & Limón', 'LIMÓN', 'LIMA', '', '', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(376, 'STOP', 'stop', 'Vainilla, canela y menta.', 'VAINILLA', 'CANELA', 'MENTA', '', '', 'Privilege', 'https://i.ibb.co/yQXNq98/02-stop-1600012523548-230x230-adjust-middle.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:23:25', 'F'),
(48, 'Stra Shark', 'stra_shark', 'Batido de fresa', 'FRESA', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(237, 'Stra Yoburt', 'stra_yoburt', 'Yogurt de fresa.', 'FRESA', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(310, 'Strangers In The Night', 'strangers_in_the_night', 'Hielo, uva y zarzamora.', 'UVA', 'HIELO', 'MORA', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:59:21', 'F'),
(398, 'Street Love', 'street_love', 'Sandía, fresa, maracuyá y mezcla secreta.', 'SANDÍA', 'FRESA', 'MARACUYÁ', '', '', 'Streetsmoke', 'https://i.ibb.co/6rrsZKp/streetsmoke.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-17 01:13:47', 'F'),
(217, 'Strong Freezy Lemon', 'strong_freezy_lemon', 'Una fuerte combinación refrescante, limón con un toque helado que te llevará a una gran experiencia cachimbera.', 'LIMÓN', '', '', '', '', 'Afzal', 'https://i.ibb.co/SBSXSmR/FREEZY-LEMON.jpg', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', 'F'),
(218, 'Strong Mango Magic', 'strong_mango_magic', 'Un sabor fuerte preparado para todos los amantes del mango. Fuma y permite que este sabor produzca una explosión de sabor en tu paladar.', 'MANGO', '', '', '', '', 'Afzal', 'https://i.ibb.co/m0cgD4J/MNGO-MAGIC.jpg', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', 'F'),
(384, 'Summer Sunset', 'summer_sunset', 'Coco, limón y menta.', 'COCO', 'LIMÓN', 'MENTA', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:55:32', 'F'),
(238, 'Summer Time', 'summer_time', 'Cítricos y pomelos dulces y frescos.', 'POMELO', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(98, 'Sun Beach', 'sun_beach', 'Kiwi, piña y melón.', 'KIWI', 'PIÑA', 'MELÓN', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(74, 'Supernova', 'supernova', 'Impresionante mentol frío', 'MENTOL', '', '', '', '', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(273, 'Swees Bomb', 'swees_bomb', 'Bombón suizo.', 'BOMBÓN', '', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(90, 'Sweet Night', 'sweet_night', 'Guayaba, melón, kiwi, lima y fruta nefelio (rambutan)', 'MELÓN', 'KIWI', 'LIMA', 'GUAYABA', '', 'Dozaj', 'https://i.ibb.co/N6tzcrQ/Sweet-Night.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(350, 'SWIT MLON', 'swit_mlon', 'Melón refrescante.', 'MELÓN', '', '', '', '', 'Mala Vida', 'https://i.ibb.co/5jhrKjJ/Switmlon.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:09:15', 'F'),
(239, 'SWT Pistacho', 'swt_pistacho', 'Típico sorbete helado junto al cremoso pistacho.', 'PISTACHO', '', '', '', '', 'Smyrna', 'https://i.ibb.co/FsvMQdH/Swt-pistac.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(35, 'T-Ber', 't-ber', 'Frutos rojos tostados', 'FRUTOS ROJOS', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(65, 'T.Riko', 'triko', 'Deliciosa té con leche, cacao y canela', 'TÉ', 'CHOCOLATE', 'CANELA', '', '', 'Aloha', 'https://i.ibb.co/jwZt1d9/T-Riko-3-min.webp', 'https://restcountries.eu/data/esp.svg', '2021-09-07 07:20:28', 'F'),
(439, 'Talisman', 'talisman', 'Té moruno.', 'TÉ', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:15:36', 'F'),
(75, 'Tear', 'tear', 'Rico sabor de limonada dulce de pera', 'PERA', '', '', '', '', 'Darkside', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(219, 'Tennessee', 'tennessee', 'Cóctel de margarita con aromas de lima limón.', 'MARGARITA', 'LIMA', 'LIMÓN', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(194, 'The Coldest Green', 'the_coldest_green', 'Lima Fuerte.', 'LIMA', '', '', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(459, 'The Double Crunch', 'the_double_crunch', 'Doble manzana.', 'DOBLE MANZANA', '', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:26:52', 'F'),
(195, 'The Perfect Storm', 'the_perfect_storm', '6 ingredientes secretos, hielo y menta.', 'MENTA', 'FRUTAS EXÓTICAS', '', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(187, 'Thor\'s Flash', 'thors_flash', 'Menta fuerte.', 'MENTA', '', '', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(274, 'Three Angels', 'three_angels', 'Pomelo, maracuya y hielo.', 'POMELO', 'MARACUYÁ', 'HIELO', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(337, 'Tik Tak', 'tik_tak', 'Muffin de limón y lima. Haz que el tiempo se detenga con esta dulce mezcla.', 'LIMÓN', 'LIMA', 'MUFFIN', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:51:55', 'F'),
(344, 'Timing', 'timing', 'Desierto tropical con un toque fresco. Descubre un oasis de placer de la mano de este delicioso sabor.', 'HIELO', 'FRUTAS EXÓTICAS', '', '', '', 'Chronos', 'https://i.ibb.co/PQZmgc4/chronos.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-07 08:54:57', 'F'),
(176, 'Tokio', 'tokio', 'Déjate llevar por este auténtico sabor conseguido y delicioso! Combinando melocotón y lima con los extraordinario del jazmín y el toque helado. ', 'MELOCOTÓN', 'LIMA', 'HIELO', '', '', 'Dozaj', 'https://i.ibb.co/x234BSL/Tokyo.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(185, 'Tokio Desire', 'tokio_desire', 'Mango, melón y cereza. ', 'MANGO', 'MELÓN', 'CEREZA', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(275, 'Tony\'s Destiny', 'tonys_destiny', 'Melocotón, maracuyá y hielo.', 'MELOCOTÓN', 'MARACUYÁ', 'HIELO', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(105, 'Touty Red', 'touty_red', 'Frutos rojos', 'FRUTOS ROJOS', '', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(373, 'TRAVEL', 'travel', 'Exótica mezcla de cereza y menta.', 'CEREZA', 'MENTA', '', '', '', 'Privilege', 'https://i.ibb.co/XXYsyy9/travel.jpg', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:21:27', 'F'),
(389, 'Tropical', 'tropical', 'Kiwi helado.', 'KIWI', '', '', '', '', 'Mr Shisha', 'https://i.ibb.co/kHBR99T/mr-shisha.png', 'https://restcountries.eu/data/esp.svg', '2021-09-17 00:59:02', 'F'),
(216, 'Tropical Explosion', 'tropical_explosion', 'Extractos florales que despertarán tus sentidos con cada bocanada de humo. Los matices dulces, almizclados y mentolados rodearán tu paladar con su encantador efecto.', 'LAVANDA', 'HIERBABUENA', '', '', '', 'Afzal', 'https://i.ibb.co/2PtZXtN/Tropical-Explosion-50g.jpg', 'https://restcountries.eu/data/ind.svg', '2021-09-07 07:20:28', 'F'),
(436, 'Tropical Storm', 'tropical_storm', 'Menta, melocotón, guayaba, piña y limón.', 'MELOCOTÓN', 'MENTA', 'GUAYABA', 'PIÑA', 'LIMÓN', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:14:03', 'F'),
(99, 'Tsunami', 'tsunami', 'Sandía, arándanos y menta', 'SANDÍA', 'ARÁNDANOS', 'MENTA', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 07:20:28', 'F'),
(278, 'Twist Pi', 'twist_pi', 'Tarta de uva.', 'TARTA', 'UVA', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(276, 'Two App', 'two_app', 'Dos manzanas. Verde y roja.', 'DOBLE MANZANA', '', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(259, 'Two Yellow I\'ss', 'two_yellow_iss', 'Melón, sandía y hielo.', 'MELÓN', 'SANDÍA', 'HIELO', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(277, 'Tynky Wynky', 'tynky_wynky', 'Uva, limón y cardamomo.', 'UVA', 'LIMÓN', 'CARDAMOMO', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(209, 'Ugly King', 'ugly_king', 'Disfruta de la magia tropical de las frutas prohibidas: melocotón y mango helado.', 'MELOCOTÓN', 'MANGO', '', '', '', 'Smyrna', 'https://i.ibb.co/dgP1yKW/ugly-king.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(438, 'Unicorn Dust', 'unicorn_dust', 'Caramelos multifrutas.', 'CARAMELO', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:15:11', 'F'),
(160, 'Uranus', 'uranus', 'Frutas del bosque', 'FRUTAS DEL BOSQUE', '', '', '', '', 'Musthave', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(60, 'Vamos Ernesto', 'vamos_ernesto', 'Chicle de canela', 'CHICLE', 'CANELA', '', '', '', 'Revoshi', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(284, 'Van', 'van', 'Vainilla.', 'VAINILLA', '', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(351, 'VANLLA CINAMN', 'vanlla_cinamn', 'Vainilla.', 'VAINILLA', '', '', '', '', 'Mala Vida', 'https://i.ibb.co/QcbMxHw/vanilla.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:10:16', 'F'),
(137, 'Vantanaz', 'vantanaz', 'El fuerte sabor a piña se mezcla con una combinación de mango, pomelo y zumo de durazno. Idéntico a Vanta Piña.', 'PIÑA', 'MANGO', 'POMELO', 'DURAZNO', '', 'Hookain', 'https://i.ibb.co/rpf5MS5/07-Vantanaz.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(186, 'Venezia Serenata', 'venezia_serenata', 'Limoncello, fresa y lima. ', 'LIMONCELLO', 'FRESA', 'LIMA', '', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(91, 'Vip 44', 'vip_44', 'Cactus, lima y pepino', 'CACTUS', 'LIMA', 'PEPINO', '', '', 'Dozaj', 'https://i.ibb.co/KrrPwjY/VIP44.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(319, 'Vista Show', 'vista_show', 'Helado de pistacho.', 'PISTACHO', '', '', '', '', 'Serbetli', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 08:20:02', 'F'),
(163, 'Volta', 'volta', 'Esta es una combinación de sandía madura y fresas tiernas con regusto a limón.', 'SANDÍA', 'FRESA', 'LIMÓN', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F'),
(437, 'Waterfall', 'waterfall', 'Sandía dulce helada.', 'SANDÍA', '', '', '', '', 'Taboo', 'https://i.ibb.co/ssPb8NG/taboo.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-17 16:14:29', 'F'),
(279, 'Watermelon Kizz', 'watermelon_kizz', 'Sandía y menta.', 'SANDÍA', 'MENTA', '', '', '', 'Adalya', 'https://i.ibb.co/CnCTV37/adalya.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(148, 'White Caek', 'white_caek', 'El más sabroso! tarta de queso con un toque de caramelo.', 'TARTA', 'CARAMELO', '', '', '', 'Hookain', 'https://i.ibb.co/c1dzWVY/17-White-Caek.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(471, 'White Flash', 'white_flash', 'Mezcla de bayas, naranja y efecto resfrecante final.', 'BAYAS', 'NARANJA', '', '', '', 'Al Fakher', 'https://i.ibb.co/njhCS4T/al-fakher.png', 'https://restcountries.eu/data/tur.svg', '2021-09-20 16:35:19', 'F'),
(196, 'Wind Of Amazon', 'wind_of_amazon', 'Albaricoque, melocotón, menta dulce y hielo.', 'ALBARICOQUE', 'MELOCOTÓN', 'MENTA', 'HIELO', '', 'Blue Horse', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(360, 'Winter Is Coming', 'winter_is_coming', 'Fruta del dragón con hielo.', 'FRUTA DEL DRAGÓN', 'HIELO', '', '', '', 'Nameless', 'https://i.ibb.co/j6371yL/wintersinfondo.png', 'https://restcountries.eu/data/deu.svg', '2021-09-17 00:02:03', 'F'),
(347, 'Winter Night', 'winter_night', 'Melocotón y hielo.', 'MELOCOTÓN', 'HIELO', '', '', '', 'Dumanji', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg', '2021-09-07 09:01:40', 'F'),
(301, 'WM', 'wm', 'Refrescante e intenso sabor de sandía recién cortada.', 'SANDÍA', '', '', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(293, 'WMC', 'wmc', 'Del frescor de la menta y el dulzor de la sandía sale este sabor único.', 'SANDÍA', 'MENTA', '', '', '', 'Marif', 'https://i.ibb.co/zbZqsMK/marif.jpg', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F'),
(348, 'WTERMLON MNT', 'wtermlon_mnt', 'Sandía y menta.', 'SANDÍA', 'MENTA', '', '', '', 'Mala Vida', 'https://i.ibb.co/VjmRb07/Wtrmlon.png', 'https://i.ibb.co/vXky7Rc/eur.jpg', '2021-09-07 09:07:44', 'F'),
(199, 'Yodda', 'yodda', 'Menta verde.', 'MENTA', '', '', '', '', 'Apocalypse', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(131, 'Zenter Schox', 'zenter_schox', 'El sabor más agrio del mundo a partir de aromas de lima y limón. Es tan agrio que te volverá loco. ', 'LIMA', 'LIMÓN', '', '', '', 'Hookain', 'https://i.ibb.co/5hmnP6L/28-zenta.png', 'https://restcountries.eu/data/deu.svg', '2021-09-07 07:20:28', 'F'),
(326, 'Zero', 'zero', 'Menta y hielo.', 'MENTA', 'HIELO', '', '', '', 'AquaMentha', 'https://i.ibb.co/3fNtdDx/aquamenta.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 08:29:56', 'F'),
(207, 'Zeus', 'zeus', 'La menta oscura más poderosa del Olimpo. Incluso los dioses se sorprenderán de tal frescura.', 'MENTA', '', '', '', '', 'Smyrna', 'https://i.ibb.co/sWwz19m/ZEUS.png', 'https://restcountries.eu/data/tur.svg', '2021-09-07 07:20:28', 'F');
INSERT INTO `tabaco` (`id`, `name_tabaco`, `name_api`, `descripcion`, `sabor1`, `sabor2`, `sabor3`, `sabor4`, `sabor5`, `marca`, `imagen`, `imagen_flag`, `fecha_publicacion`, `novedad`) VALUES
(166, 'Zonda', 'zonda', 'Una mezcla de frutas tropicales donde la agridulce piña se combina con el sabor exótico de una tierna y jugosa papaya.', 'MANGO', 'PIÑA', 'PAPAYA', '', '', 'Element', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg', '2021-09-07 07:20:28', 'F');

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
(450, 348, 9),
(451, 226, 15),
(452, 63, 15),
(453, 67, 15),
(454, 68, 15),
(455, 62, 15),
(456, 64, 15),
(457, 69, 15),
(458, 66, 15),
(459, 61, 15),
(460, 65, 15),
(461, 356, 28),
(462, 355, 28),
(463, 357, 28),
(464, 358, 28),
(465, 359, 28),
(466, 363, 28),
(467, 364, 28),
(468, 365, 28),
(469, 366, 28),
(470, 367, 28),
(471, 375, 28),
(472, 368, 28),
(473, 369, 28),
(474, 370, 28),
(475, 371, 28),
(476, 372, 28),
(477, 374, 28),
(478, 376, 28),
(479, 373, 28),
(480, 359, 7),
(481, 366, 7),
(482, 380, 6),
(483, 385, 6),
(484, 381, 6),
(485, 386, 6),
(486, 382, 6),
(487, 387, 6),
(488, 383, 6),
(489, 388, 6),
(490, 384, 6),
(491, 389, 6),
(492, 393, 28),
(493, 396, 28),
(494, 395, 28),
(495, 391, 28),
(496, 392, 28),
(497, 394, 28),
(498, 390, 28),
(499, 400, 28),
(500, 397, 28),
(501, 401, 28),
(502, 399, 28),
(503, 403, 28),
(504, 402, 28),
(505, 398, 28),
(506, 404, 20),
(507, 405, 20),
(508, 406, 20),
(509, 407, 20),
(510, 408, 20),
(511, 409, 20),
(512, 410, 20),
(513, 411, 20),
(514, 412, 20),
(515, 413, 20),
(516, 414, 20),
(517, 415, 20),
(518, 416, 20),
(519, 417, 20),
(520, 418, 20),
(521, 419, 20),
(522, 420, 20),
(523, 421, 20),
(524, 422, 20),
(525, 423, 20),
(526, 424, 20),
(527, 425, 20),
(528, 426, 20),
(529, 427, 20),
(530, 428, 20),
(531, 429, 20),
(532, 430, 20),
(533, 431, 20),
(534, 432, 20),
(535, 433, 20),
(536, 434, 20),
(537, 435, 20),
(538, 439, 20),
(539, 436, 20),
(540, 438, 20),
(541, 437, 20),
(542, 404, 29),
(543, 405, 29),
(544, 406, 29),
(545, 407, 29),
(546, 408, 29),
(547, 409, 29),
(548, 410, 29),
(549, 411, 29),
(550, 412, 29),
(551, 413, 29),
(552, 414, 29),
(553, 415, 29),
(554, 416, 29),
(555, 417, 29),
(556, 418, 29),
(557, 419, 29),
(558, 420, 29),
(559, 421, 29),
(560, 422, 29),
(561, 423, 29),
(562, 424, 29),
(563, 425, 29),
(564, 426, 29),
(565, 427, 29),
(566, 428, 29),
(567, 429, 29),
(568, 430, 29),
(569, 431, 29),
(570, 432, 29),
(571, 433, 29),
(572, 434, 29),
(573, 435, 29),
(574, 439, 29),
(575, 436, 29),
(576, 438, 29),
(577, 437, 29),
(578, 418, 30),
(579, 420, 30),
(580, 429, 30),
(581, 435, 30),
(582, 437, 30),
(592, 452, 32),
(593, 453, 32),
(594, 449, 32),
(595, 451, 32),
(596, 450, 32),
(597, 454, 32),
(598, 455, 32),
(599, 456, 32),
(600, 457, 32),
(601, 449, 33),
(602, 451, 33),
(603, 455, 33),
(604, 456, 33),
(611, 463, 4),
(612, 458, 4),
(613, 470, 4),
(614, 462, 4),
(615, 466, 4),
(616, 465, 4),
(617, 461, 4),
(618, 472, 4),
(619, 460, 4),
(620, 468, 4),
(621, 467, 4),
(622, 464, 4),
(623, 469, 4),
(624, 459, 4),
(625, 471, 4),
(626, 458, 34),
(627, 459, 34),
(628, 460, 34),
(629, 461, 34),
(630, 463, 34),
(631, 470, 34),
(632, 458, 35),
(633, 459, 35),
(634, 460, 35),
(635, 474, 36),
(636, 473, 36),
(637, 476, 36),
(638, 477, 36),
(639, 475, 36),
(640, 478, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `username` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT '{bcrypt}$2a$10$fVKfcc47q6lrNbeXangjYeY000dmjdjkdBxEOilqhapuTO5ZH0co2',
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`username`, `password`, `enabled`) VALUES
('shishasmataro', '{bcrypt}$2a$10$fVKfcc47q6lrNbeXangjYeY000dmjdjkdBxEOilqhapuTO5ZH0co2', 1),
('user', '{bcrypt}$2a$10$fVKfcc47q6lrNbeXangjYeY000dmjdjkdBxEOilqhapuTO5ZH0co2', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`authority_id`),
  ADD KEY `fk_usuario` (`username`);

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
-- Indices de la tabla `sabor`
--
ALTER TABLE `sabor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uni_sabor` (`sabor_desc`);

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
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authorities`
--
ALTER TABLE `authorities`
  MODIFY `authority_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
-- AUTO_INCREMENT de la tabla `sabor`
--
ALTER TABLE `sabor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT de la tabla `tabaco_formato_asso`
--
ALTER TABLE `tabaco_formato_asso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`username`) REFERENCES `usuario` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

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
