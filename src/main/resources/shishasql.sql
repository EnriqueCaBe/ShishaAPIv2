-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2021 a las 15:00:39
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
-- Base de datos: `shishasql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authorities`
--

CREATE TABLE `authorities` (
  `authority_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `authorities`
--

INSERT INTO `authorities` (`authority_id`, `username`, `role`) VALUES
(1, 'EnriqueCaBe', 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato`
--

CREATE TABLE `formato` (
  `id` int(11) NOT NULL,
  `gramos` double NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(256) DEFAULT NULL,
  `tabaco` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formato`
--

INSERT INTO `formato` (`id`, `gramos`, `precio`, `imagen`, `tabaco`) VALUES
(1, 200, 12.9, NULL, 'Pablo'),
(2, 50, 3.6, NULL, 'Pablo'),
(3, 200, 12.9, NULL, 'Blacknana'),
(4, 50, 3.6, NULL, 'Blacknana'),
(5, 250, 35, NULL, 'C6 Pineapple'),
(6, 250, 35, NULL, 'C111 Ololiuqui'),
(7, 250, 35, NULL, 'C16 Pink Grapefruit'),
(8, 250, 35, NULL, 'C27 Cocoa'),
(9, 250, 35, NULL, 'C3 Strawberry'),
(10, 250, 35, NULL, 'C34 Its like that one breakfast cereal'),
(11, 250, 35, NULL, 'C38 Kashmir Peach'),
(12, 250, 35, NULL, 'C4 Blitzsturm'),
(13, 250, 35, NULL, 'C5 Lemon Blossom'),
(14, 250, 35, NULL, 'C57 Sevilla Orange'),
(15, 250, 35, NULL, 'C58 Welch Cream'),
(16, 250, 35, NULL, 'C59 Blackberry'),
(17, 250, 35, NULL, 'C62 Strawberry Kiwi'),
(18, 250, 35, NULL, 'C74 Lemon Lime'),
(19, 250, 35, NULL, 'C76 Apricot Spring Blend'),
(20, 250, 35, NULL, 'C77 Tropical Revenge'),
(21, 250, 35, NULL, 'C78 Horchata'),
(22, 250, 35, NULL, 'C9 Melon Blend'),
(23, 250, 35, NULL, 'C90 Peach Iced Tea'),
(24, 250, 35, NULL, 'C92 Mimon'),
(25, 250, 35, NULL, 'C94 Maraschino Cherry'),
(26, 250, 35, NULL, 'C96 Cane Mint'),
(27, 250, 35, NULL, 'C96a Cane Mint Vault'),
(28, 250, 35, NULL, 'C119 Kosmik'),
(29, 250, 35, NULL, 'C69 PassionFruit'),
(30, 200, 11.5, NULL, 'Banastra'),
(31, 50, 2.95, NULL, 'Banastra'),
(32, 200, 11.5, NULL, 'Blueerry'),
(33, 200, 11.5, NULL, 'Double Effect'),
(34, 200, 11.5, NULL, 'Elon'),
(35, 50, 2.95, NULL, 'Green Flash'),
(36, 200, 11.5, NULL, 'Ice Bird'),
(37, 50, 2.95, NULL, 'Ice Bird'),
(38, 200, 11.5, NULL, 'Ice Pin'),
(39, 50, 2.95, NULL, 'Ice Pin'),
(40, 200, 11.5, NULL, 'T-Ber'),
(41, 50, 2.95, NULL, 'T-Ber'),
(42, 200, 11.5, NULL, 'Hate 69'),
(43, 50, 2.95, NULL, 'Hate 69'),
(44, 50, 2.95, NULL, 'Blue Tropic'),
(45, 200, 11.5, NULL, 'Emon Ke'),
(46, 50, 2.95, NULL, 'Emon Ke'),
(47, 200, 11.5, NULL, 'Grapic'),
(48, 50, 2.95, NULL, 'Grapic'),
(49, 200, 11.5, NULL, 'Green Mix'),
(50, 50, 2.95, NULL, 'Green Mix'),
(51, 200, 11.5, NULL, 'I Blueberry'),
(52, 50, 2.95, NULL, 'I Blueberry'),
(53, 200, 11.5, NULL, 'Icbdrumm'),
(54, 50, 2.95, NULL, 'Icbdrumm'),
(55, 200, 11.5, NULL, 'Iceber'),
(56, 50, 2.95, NULL, 'Ime Spiced Pinch'),
(57, 200, 11.5, NULL, 'Imliciblerry'),
(58, 50, 2.95, NULL, 'Imliciblerry'),
(59, 200, 11.5, NULL, 'Istanbul Nights'),
(60, 50, 2.95, NULL, 'Istanbul Nights'),
(61, 200, 11.5, NULL, 'Rotana'),
(62, 50, 2.95, NULL, 'Rotana'),
(63, 200, 11.5, NULL, 'Stra Shark'),
(64, 50, 2.95, NULL, 'Stra Shark'),
(65, 200, 11.5, NULL, 'Duses'),
(66, 50, 3.3, NULL, 'Blck Grp'),
(67, 50, 3.3, NULL, 'D´App Strng'),
(68, 50, 3.3, NULL, 'Eskimo Cndy'),
(69, 50, 3.3, NULL, 'Eskimo Lmn'),
(70, 50, 3.3, NULL, 'Eskimo P´App'),
(71, 50, 3.3, NULL, 'Eskimo Wtrmln'),
(72, 50, 3.3, NULL, 'Free Spartacus'),
(73, 50, 3.3, NULL, 'Orng Mnt'),
(74, 50, 3.3, NULL, 'Ola Zapata'),
(75, 50, 3.3, NULL, 'Pancho Villa'),
(76, 50, 3.3, NULL, 'Vamos Ernesto'),
(77, 100, 7.5, NULL, 'Splash'),
(78, 200, 13.5, NULL, 'Splash'),
(79, 100, 7.5, NULL, 'Nazaré'),
(80, 200, 13.5, NULL, 'Nazaré'),
(81, 100, 7.5, NULL, 'Atlantic'),
(82, 200, 13.5, NULL, 'Atlantic'),
(83, 100, 7.5, NULL, 'Pacific'),
(84, 200, 13.5, NULL, 'Pacific'),
(85, 100, 7.5, NULL, 'T.Riko'),
(86, 200, 13.5, NULL, 'T.Riko'),
(87, 100, 7.5, NULL, 'Sparrow'),
(88, 200, 13.5, NULL, 'Sparrow'),
(89, 100, 7.5, NULL, 'Los Locos'),
(90, 200, 13.5, NULL, 'Los Locos'),
(91, 100, 7.5, NULL, 'Maverick'),
(92, 200, 13.5, NULL, 'Maverick'),
(93, 100, 7.5, NULL, 'Shaka Shaka'),
(94, 200, 13.5, NULL, 'Shaka Shaka'),
(95, 30, 3.85, NULL, 'Darkside Hola'),
(96, 30, 3.85, NULL, 'I Granny'),
(97, 30, 3.85, NULL, 'LM Blast'),
(98, 30, 3.85, NULL, 'MG Assi'),
(99, 30, 3.85, NULL, 'Supernova'),
(100, 30, 3.85, NULL, 'Darkside Hola'),
(101, 50, 3, NULL, '90+'),
(102, 50, 3, NULL, 'Black Star'),
(103, 50, 3, NULL, 'Blade'),
(104, 50, 3, NULL, 'Eternal'),
(105, 50, 3, NULL, 'Land Of Fire'),
(106, 50, 3, NULL, 'Marshall'),
(107, 50, 3, NULL, 'Mito'),
(108, 50, 3, NULL, 'Royal Style'),
(109, 50, 3, NULL, 'Carnival'),
(110, 200, 11.25, NULL, 'Carnival'),
(111, 50, 3, NULL, 'Casablanca'),
(112, 200, 11.25, NULL, 'Casablanca'),
(113, 50, 3, NULL, 'Cuba Dream'),
(114, 50, 3, NULL, 'Dead Sea'),
(115, 200, 11.25, NULL, 'Dead Sea'),
(116, 50, 3, NULL, 'Jelly Bear'),
(117, 50, 3, NULL, 'Rio Lady'),
(118, 50, 3, NULL, 'Sweet Night'),
(119, 50, 3, NULL, 'Vip 44'),
(120, 50, 3, NULL, 'Adam & Eve'),
(121, 200, 11.5, NULL, 'Adam & Eve'),
(122, 50, 3, NULL, 'Na3ne'),
(123, 200, 11.5, NULL, 'Na3ne'),
(124, 50, 3, NULL, 'Cane Na3ne'),
(125, 200, 11.5, NULL, 'Cane Na3ne'),
(126, 50, 3, NULL, 'French Rivera'),
(127, 200, 11.5, NULL, 'French Rivera'),
(128, 50, 3, NULL, 'Kush'),
(129, 200, 11.5, NULL, 'Kush'),
(130, 50, 3, NULL, 'Kush Na3ne'),
(131, 200, 11.5, NULL, 'Kush Na3ne'),
(132, 50, 3, NULL, 'Sun Beach'),
(133, 200, 11.5, NULL, 'Sun Beach'),
(134, 50, 3, NULL, 'Tsunami'),
(135, 200, 11.5, NULL, 'Tsunami'),
(136, 50, 3, NULL, 'Pink Kiss'),
(137, 200, 11.5, NULL, 'Pink Kiss'),
(138, 50, 3, NULL, 'Heaven'),
(139, 200, 11.5, NULL, 'Heaven'),
(140, 50, 3, NULL, 'Bahamas'),
(141, 200, 11.5, NULL, 'Bahamas'),
(142, 50, 3, NULL, 'Meridian'),
(143, 50, 3, NULL, 'Blue mix'),
(144, 50, 3, NULL, 'Touty Red'),
(145, 50, 3, NULL, 'Lover'),
(174, 50, 3.95, NULL, 'American Pei'),
(175, 50, 3.95, NULL, 'Mng Loco'),
(176, 50, 3.95, NULL, 'Zenter Schox'),
(177, 50, 3.95, NULL, 'Laoz'),
(178, 50, 3.95, NULL, 'Original Vanta Zotic'),
(179, 50, 3.95, NULL, 'Cotton Candy Craem'),
(180, 200, 13.8, NULL, 'Cotton Candy Craem'),
(181, 50, 3.95, NULL, 'Orogina'),
(182, 50, 3.95, NULL, 'Eyez Kalt'),
(183, 50, 3.95, NULL, 'Vantanaz'),
(184, 50, 3.95, NULL, 'Pic Zkittlez'),
(185, 50, 3.95, NULL, 'Ch3ri Zkittlez'),
(186, 50, 3.95, NULL, 'Sm!nt'),
(187, 50, 3.95, NULL, 'Fellatio'),
(188, 50, 3.95, NULL, 'Green Lean'),
(189, 200, 13.8, NULL, 'Green Lean'),
(190, 50, 3.95, NULL, 'Kaffa Yayo'),
(191, 50, 3.95, NULL, 'Bubblenciaga'),
(192, 200, 13.8, NULL, 'Bubblenciaga'),
(193, 50, 3.95, NULL, 'Cactopus'),
(194, 50, 3.95, NULL, 'Lemenciaga'),
(195, 200, 13.8, NULL, 'Lemenciaga'),
(196, 50, 3.95, NULL, 'Punani'),
(197, 50, 3.95, NULL, 'White Caek'),
(198, 200, 13.8, NULL, 'White Caek'),
(199, 50, 3.95, NULL, 'Big Black Barries'),
(200, 200, 13.8, NULL, 'Big Black Barries'),
(201, 50, 3.95, NULL, 'Soleiro Spliff'),
(202, 50, 3.95, NULL, 'Kivi King'),
(203, 200, 23.5, NULL, 'Cosmos'),
(204, 200, 23.5, NULL, 'Stellar'),
(205, 200, 23.5, NULL, 'Atmosphere'),
(206, 200, 23.5, NULL, 'Pinkman'),
(207, 200, 23.5, NULL, 'Space Invaders'),
(208, 200, 23.5, NULL, 'Raspi'),
(209, 200, 23.5, NULL, 'Space Force'),
(210, 200, 23.5, NULL, 'Space Flavour'),
(211, 200, 23.5, NULL, 'Uranus'),
(212, 200, 23.5, NULL, 'Eclipse'),
(213, 40, 4.1, NULL, 'Zonda'),
(214, 40, 4.1, NULL, 'Amazon'),
(215, 40, 4.1, NULL, 'Southerly Buster'),
(216, 40, 4.1, NULL, 'Khamseen'),
(217, 40, 4.1, NULL, 'Lena'),
(218, 40, 4.1, NULL, 'Volta'),
(219, 40, 4.1, NULL, 'Buran'),
(220, 40, 4.1, NULL, 'Sirocco'),
(221, 40, 4.1, NULL, 'Mississippi'),
(222, 40, 4.1, NULL, 'Mekong'),
(223, 50, 3, NULL, 'Orko'),
(224, 50, 3, NULL, 'Tokio'),
(225, 50, 3, NULL, 'Nairobi'),
(226, 50, 3, NULL, 'Lambada'),
(227, 50, 3, NULL, 'Excalibur'),
(228, 50, 3, NULL, 'Pink Lemenciaga'),
(229, 50, 3.95, NULL, 'Pink Lemenciaga'),
(230, 50, 3.95, NULL, 'Code In Love'),
(231, 50, 3.3, NULL, 'Capitan Pinto'),
(232, 50, 3.3, NULL, 'Chao Bella'),
(233, 50, 2.95, NULL, 'Alhambra'),
(234, 50, 2.95, NULL, 'Amsterdan Lights'),
(235, 50, 2.95, NULL, 'Baku Nights'),
(236, 50, 2.95, NULL, 'Discovery'),
(237, 50, 2.95, NULL, 'Istanblue'),
(238, 50, 2.95, NULL, 'La Beirut'),
(239, 50, 2.95, NULL, 'London Fog'),
(240, 50, 2.95, NULL, 'Mi Amor'),
(241, 200, 10.95, NULL, 'Mi Amor'),
(242, 1000, 49.95, NULL, 'Mi Amor'),
(243, 50, 2.95, NULL, 'Moscow Evenings'),
(244, 50, 2.95, NULL, 'No Woman No Cry'),
(245, 50, 2.95, NULL, 'The Coldest Green'),
(246, 200, 10.95, NULL, 'The Coldest Green'),
(247, 50, 2.95, NULL, 'The Perfect Storm'),
(248, 50, 2.95, NULL, 'Thor\'s Flash'),
(249, 50, 2.95, NULL, 'Tokio Desire'),
(250, 50, 2.95, NULL, 'Venezia Serenata'),
(251, 50, 2.95, NULL, 'Wind Of Amazon'),
(253, 40, 2.7, NULL, 'King Leonidas'),
(254, 40, 2.7, NULL, 'La Force'),
(255, 40, 2.7, NULL, 'Yodda'),
(256, 40, 2.7, NULL, 'Babyelya'),
(257, 40, 2.7, NULL, 'Chernobyl'),
(258, 40, 2.7, NULL, 'Halep Boom'),
(259, 40, 2.7, NULL, 'Joker'),
(260, 40, 2.7, NULL, 'Ommy Shelby'),
(261, 40, 2.7, NULL, 'Gobfather'),
(262, 40, 2.7, NULL, 'Baron Rouge'),
(263, 50, 2.9, NULL, 'Zeus'),
(264, 50, 2.9, NULL, 'Hera'),
(265, 50, 2.9, NULL, 'Deja Vu'),
(266, 50, 2.9, NULL, 'Ugly King'),
(267, 50, 2.9, NULL, 'Karnaval'),
(268, 50, 2.9, NULL, 'Ay, Carmela!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `NAME` varchar(256) NOT NULL,
  `pais` varchar(256) NOT NULL,
  `pais_api` varchar(256) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `imagen` varchar(256) DEFAULT NULL,
  `imagen_flag` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `NAME`, `pais`, `pais_api`, `descripcion`, `imagen`, `imagen_flag`) VALUES
(15, 'Afzal', 'Índia', 'India', 'Tabaco rubio.', 'https://i.ibb.co/XXrtNZm/afzal.png', 'https://restcountries.eu/data/ind.svg'),
(5, 'Aloha', 'España', 'Spain', 'Tabaco rubio', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg'),
(13, 'Apocalypse', 'Alemania', 'Germany', 'Tabaco rubio.', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg'),
(12, 'Blue Horse', 'Turquía', 'Turkey', 'Tabaco Rubio', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg'),
(6, 'Darkside', 'Rusia', 'Russian', 'Tabaco negro', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg'),
(7, 'Dozaj', 'Turquia', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg'),
(8, 'Dumanji', 'Francia', 'France', 'Tabaco rubio', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg'),
(11, 'Element', 'Rusia', 'Russia', 'Tabaco de diferentes gamas', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg'),
(9, 'Hookain', 'Alemania', 'Germany', 'Tabaco rubio', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg'),
(10, 'Musthave', 'Rusia', 'Russia', 'Tabaco negro', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg'),
(1, 'Nameless', 'Alemania', 'Germany', 'Tabaco rubio', 'https://i.ibb.co/Jys8s36/nameless.png', 'https://restcountries.eu/data/deu.svg'),
(4, 'Revoshi', 'Turquia', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg'),
(3, 'Serbetli', 'Alemania', 'Germany', 'Tabaco rubio premium', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg'),
(14, 'Smyrna', 'Turquía', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg'),
(2, 'Tangiers', 'USA', 'usa', 'Tabaco negro', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mezcla`
--

CREATE TABLE `mezcla` (
  `id` varchar(256) NOT NULL,
  `NAME` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `porcentaje`
--

CREATE TABLE `porcentaje` (
  `tabaco` varchar(256) NOT NULL,
  `mezcla` varchar(256) NOT NULL,
  `porcentaje` double NOT NULL
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
  `marca` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabaco`
--

INSERT INTO `tabaco` (`id`, `name_tabaco`, `name_api`, `descripcion`, `marca`) VALUES
(76, '90+', '90plus', 'Limón y menta', 'Dozaj'),
(92, 'Adam & Eve', 'adam_and_eve', 'Dos Manzanas', 'Dumanji'),
(183, 'Alhambra', 'alhambra', 'Granada, mezcla de bayas, manzana, fresa, cereza y menta. ', 'Blue Horse'),
(171, 'Amazon', 'amazon', 'Suave gofre belga al horno con notas de leche, caramelo y crema. Pastelería fina. El mejor sabor a confitería.', 'Element'),
(129, 'American Pei', 'american_pei', 'Cremosa tarta de manzana a la americana coon toffee. Receta increiblemente deliciosa de la abuela.', 'Hookain'),
(184, 'Amsterdan Lights', 'amsterdan_lights', 'Mezcla de bayas, fresa y cereza.', 'Blue Horse'),
(63, 'Atlantic', 'atlantic', 'Fresco y refrescante caramelo de cereza', 'Aloha'),
(154, 'Atmosphere', 'atmosphere', 'limonada de zumo de sandía, melón y sirope de berberis vulgaris', 'Musthave'),
(212, 'Ay, Carmela!', 'ay_carmela', 'El público exclama, ¡Ay, Carmela! Obra Maestra compuesta de melón, naranja y arándanos.', 'Smyrna'),
(197, 'Babyelya', 'babyelya', 'Granadina, cereza y menta.', 'Apocalypse'),
(102, 'Bahamas', 'bahamas', 'Piña, melón y frescor', 'Dumanji'),
(188, 'Baku Nights', 'baku_nights', 'Chicle, Plátano, Menta y Hielo.', 'Blue Horse'),
(28, 'Banastra', 'banastra', 'Banana y fresa', 'Serbetli'),
(198, 'Baron Rouge', 'baron_rouge', 'Higos, membrillo, fresa y sandía.', 'Apocalypse'),
(149, 'Big Black Barries', 'big_black_barries', 'Intenso sabor a uva moscatel con esencia de mentol..', 'Hookain'),
(77, 'Black Star', 'black_star', 'Maracuyá, chicle, melocotón y menta', 'Dozaj'),
(2, 'Blacknana', 'blacknana', 'Uva moscatel y menta', 'Nameless'),
(78, 'Blade', 'blade', 'Mezcla de bayas, fruta del dragon y menta', 'Dozaj'),
(50, 'Blck Grp', 'blck_grp', 'Uva negra', 'Revoshi'),
(104, 'Blue mix', 'blue_mix', 'Uvas, arándanos, piña y coco', 'Dumanji'),
(37, 'Blue Tropic', 'blue_tropic', 'Curaçao', 'Serbetli'),
(29, 'Blueerry', 'blueerry', 'Arándanos', 'Serbetli'),
(213, 'Bombay Fuzion', 'bombay_fuzion', 'La tradicional hoja de betel india con el balance perfecto de la dulzura de la nuez de areca.', 'Afzal'),
(214, 'Bombay Nights', 'bombay_nights', 'Refresca tu paladar con este sabor exótico o mézclalo con otro sabor y experimente la magia del verdadero sabor de la India.', 'Afzal'),
(144, 'Bubblenciaga', 'bubblenciaga', 'El típico chicle americano en su momento de mayor sabor. Dulce y duradero hasta dejarte boquiabierto.', 'Hookain'),
(167, 'Buran', 'buran', 'Una popular bebida mexicana con un dulce y tierno sabor a frutos secos y especias.', 'Element'),
(4, 'C111 Ololiuqui', 'c111_ololiuqui', 'Cola y vainilla', 'Tangiers'),
(26, 'C119 Kosmik', 'c119_kosmik', 'Dos manzanas', 'Tangiers'),
(5, 'C16 Pink Grapefruit', 'c16_pink_prapefruit', 'Pomelo', 'Tangiers'),
(6, 'C27 Cocoa', 'c27_cocoa', 'Cacao', 'Tangiers'),
(7, 'C3 Strawberry', 'c3_strawberry', 'Fresa', 'Tangiers'),
(8, 'C34 Its like that one breakfast cereal', 'c34_its_like_that_one_breakfast_cereal', 'Cereales americanos de colores', 'Tangiers'),
(9, 'C38 Kashmir Peach', 'c38_kashmir_peach', 'Melocotón con toques florales', 'Tangiers'),
(10, 'C4 Blitzsturm', 'c4_blitzsturm', 'Lavanda con mentol', 'Tangiers'),
(11, 'C5 Lemon Blossom', 'c5_lemon_blossom', 'Limón con toques florales', 'Tangiers'),
(12, 'C57 Sevilla Orange', 'c57_sevilla_orange', 'Naranja dulce', 'Tangiers'),
(13, 'C58 Welch Cream', 'C58_welch_cream', 'Crema de whisky', 'Tangiers'),
(14, 'C59 Blackberry', 'c59_blackberry', 'Mora', 'Tangiers'),
(3, 'C6 Pineapple', 'c6_pineapple', 'Piña', 'Tangiers'),
(15, 'C62 Strawberry Kiwi', 'c62_strawberry_kiwi', 'Fresa y Kiwi', 'Tangiers'),
(27, 'C69 PassionFruit', 'c69_passionfruit', 'Fruta de la pasión', 'Tangiers'),
(16, 'C74 Lemon Lime', 'c74_lemon_lime', 'Lima y limón', 'Tangiers'),
(17, 'C76 Apricot Spring Blend', 'c76_apricot_spring_blend', 'Albaricoque floral', 'Tangiers'),
(18, 'C77 Tropical Revenge', 'c77_tropical_revenge', 'Piña, pera y naranja', 'Tangiers'),
(19, 'C78 Horchata', 'c78_horchata', 'Horchata', 'Tangiers'),
(20, 'C9 Melon Blend', 'c9_melon_blend', 'Melon y sandia', 'Tangiers'),
(21, 'C90 Peach Iced Tea', 'c90_peach_iced_tea', 'Té helado de melocotón', 'Tangiers'),
(22, 'C92 Mimon', 'c92_mimon', 'Limon y menta', 'Tangiers'),
(23, 'C94 Maraschino Cherry', 'c94_maraschino_cherry', 'Frutas mixtas con énfasis de cereza', 'Tangiers'),
(24, 'C96 Cane Mint', 'c96_cane_mint', 'Para muchos la mejor menta del mundo', 'Tangiers'),
(25, 'C96a Cane Mint Vault', 'c96a_cane_mint_vault', 'Fórmula inicial de Cane Mint', 'Tangiers'),
(145, 'Cactopus', 'cactopus', 'Dulce y cremoso al mismo tiempo. El sabor dulce a cactus con la fresa y vainilla hacen un trio delicioso e intenso. ', 'Hookain'),
(94, 'Cane Na3ne', 'cane_na3ne', 'Azúcar de caña y menta', 'Dumanji'),
(179, 'Capitan Pinto', 'capitan_pinto', 'Sabor a galleta María.', 'Revoshi'),
(84, 'Carnival', 'carnival', 'Mezcla de frutas exóticas', 'Dozaj'),
(85, 'Casablanca', 'casablanca', 'Té especiado, jenjibre, nata y toque de canela', 'Dozaj'),
(139, 'Ch3ri Zkittlez', 'cheri_zkittlez', 'Sabor intenso a cereza y fruta de dragón. Mejor de lo que te puedas imaginar.', 'Hookain'),
(180, 'Chao Bella', 'chao_bella', 'Sabor a fresa.', 'Revoshi'),
(206, 'Chernobyl', 'chernobyl', 'Mandarina helada y arándanos.', 'Apocalypse'),
(178, 'Code In Love', 'code_in_love', 'Sabor exótico de Cactus cremoso con melocotón, sandía y vainilla.', 'Hookain'),
(152, 'Cosmos', 'cosmos', 'Kiwi, manzana y menta', 'Musthave'),
(134, 'Cotton Candy Craem', 'cotton_candy_craem', 'Algodón de azúcar, sandía, mango y arándanos.', 'Hookain'),
(86, 'Cuba Dream', 'cuba_dream', 'Exótic tropical fruits', 'Dozaj'),
(70, 'Darkside Hola', 'darkside_hola', 'Cola con limón', 'Darkside'),
(87, 'Dead Sea', 'dead_sea', 'Coca cola con cereza helada', 'Dozaj'),
(211, 'Deja Vu', 'deja_vu', 'Revive el flash del Deja Vu. Nunca antes visto: flor de sauco y lemongrass.', 'Smyrna'),
(189, 'Discovery', 'discovery', 'Chicle, Pomelo, Limón y Lima.', 'Blue Horse'),
(30, 'Double Effect', 'double_effect', 'Cola y limón', 'Serbetli'),
(49, 'Duses', 'duses', 'Pera fresca', 'Serbetli'),
(51, 'D´App Strng', 'dapp_strng', 'Dos manzanas intenso', 'Revoshi'),
(161, 'Eclipse', 'eclipse', 'Zumo de piña', 'Musthave'),
(31, 'Elon', 'elon', 'Melón', 'Serbetli'),
(38, 'Emon Ke', 'emon_ke', 'Pastel de limón', 'Serbetli'),
(52, 'Eskimo Cndy', 'eskimo_cndy', 'Caramelos helados', 'Revoshi'),
(53, 'Eskimo Lmn', 'eskimo_lmn', 'Limón helado', 'Revoshi'),
(54, 'Eskimo P´App', 'eskimo_dapp', 'Piña helada', 'Revoshi'),
(55, 'Eskimo Wtrmln', 'eskimo_wtrmln', 'Sandía helada', 'Revoshi'),
(79, 'Eternal', 'eternal', 'Puro de vainilla', 'Dozaj'),
(175, 'Excalibur', 'excalibur', '¡Fresco! ¿A quién no le gustan los cítricos? ¡Aquí los fusionamos con toques florales y menta que te dejará un refrescante regusto!', 'Dozaj'),
(136, 'Eyez Kalt', 'eyez_kalt', 'Muy frío. Caramelo de menta refinado con plátano y lima.', 'Hookain'),
(141, 'Fellatio', 'fellatio', 'Batido de sandía, melón dulce, maracuyá y frutas el bosque.', 'Hookain'),
(56, 'Free Spartacus', 'free_spartacus', 'Mix de flor de saúco', 'Revoshi'),
(95, 'French Rivera', 'french_rivera', 'Chicle y melón', 'Dumanji'),
(201, 'Gobfather', 'gobfather', 'Doble manzana.', 'Apocalypse'),
(39, 'Grapic', 'grapic', 'Manzana verde helada', 'Serbetli'),
(32, 'Green Flash', 'green_flash', 'Menta', 'Serbetli'),
(142, 'Green Lean', 'green_lean', 'La mejor lima que jamás hayas probado, convertida en zumo de lima. Siente el sabor y el frescor de miles de limas que explotarán en tu cazoleta.', 'Hookain'),
(40, 'Green Mix', 'green_mix', 'Lima, manzana verde, kiwi y menta', 'Serbetli'),
(204, 'Halep Boom', 'halep_boom', 'Lichi y arándanos.', 'Apocalypse'),
(36, 'Hate 69', 'hate_69', 'Mezcla de frutas heladas', 'Serbetli'),
(101, 'Heaven', 'heaven', 'Fruta tropical, melón y menta', 'Dumanji'),
(208, 'Hera', 'hera', 'El sabor preferido de la esposa de Zeus, combinación ganadora de cereza y limón.', 'Smyrna'),
(41, 'I Blueberry', 'i_blueberry', 'Arándanos helados', 'Serbetli'),
(71, 'I Granny', 'i_granny', 'Manzana verde dulce', 'Darkside'),
(42, 'Icbdrumm', 'icbdrumm', 'Mandarina helada', 'Serbetli'),
(33, 'Ice Bird', 'ice_bird', 'Kiwi helado', 'Serbetli'),
(34, 'Ice Pin', 'ice_pin', 'Piña helada', 'Serbetli'),
(43, 'Iceber', 'iceber', 'Frutas del bosque heladas', 'Serbetli'),
(44, 'Ime Spiced Pinch', 'ime_spiced_pinch', 'Lima y melocotón a la parrilla', 'Serbetli'),
(45, 'Imliciblerry', 'imliciblerry', 'Lima, lichi y arándanos', 'Serbetli'),
(181, 'Istanblue', 'istanblue', 'Uva, arándano y menta.', 'Blue Horse'),
(46, 'Istanbul Nights', 'istanbul_nights', 'Frambuesa, arándanos y fresa', 'Serbetli'),
(88, 'Jelly Bear', 'jelly_bear', 'Osito de gominola', 'Dozaj'),
(202, 'Joker', 'joker', 'Ice banana y fresa', 'Apocalypse'),
(143, 'Kaffa Yayo', 'kaffa_yayo', 'El mejor postre con sabor a coco. Coco de Hawai cubierto por una fina crema de almendras con vainilla bourbon.', 'Hookain'),
(210, 'Karnaval', 'karnaval', '¡Que empiece la fiesta! Baila con esta jugosa mezcla entre sandía, pera y melón.', 'Smyrna'),
(169, 'Khamseen', 'khamseen', 'Una compleja composición de bayas que tocará una fibra sensible en cada corazón.', 'Element'),
(203, 'King Leonidas', 'king_leonidas', 'Violeta, arándanos y chocolate blanco.', 'Apocalypse'),
(151, 'Kivi King', 'kivi_king', 'Kiwi afrutado intenso sobre una cama de lima. Agradablemente fresco con un toque de menta y mentol.', 'Hookain'),
(96, 'Kush', 'kush', 'Sabor CBD', 'Dumanji'),
(97, 'Kush Na3ne', 'kush_ne3ne', 'Sabor CBD con menta', 'Dumanji'),
(190, 'La Beirut', 'la_beirut', 'Café con caramelo.', 'Blue Horse'),
(205, 'La Force', 'la_force', 'Ice fresa y melón.', 'Apocalypse'),
(174, 'Lambada', 'lambada', '¡Baila al ritmo del famoso gofre holandés! Redondos con caramelo por dentro. ¡Qué buenos están, madre mía!', 'Dozaj'),
(80, 'Land Of Fire', 'land_of_fire', 'Vodka, café, licor, nata', 'Dozaj'),
(132, 'Laoz', 'laoz', 'Jugo dulce de cereza, afrutado e intenso combinado con arándanos. Añadimos mentol para hacerlo más fresco. Sabor afrutado y fresco. ', 'Hookain'),
(146, 'Lemenciaga', 'lemenciaga', 'Un sabor refrescante de limón y esencia de té verde con el indispensable toque de menta fresca.', 'Hookain'),
(164, 'Lena', 'lena', 'Este es el sabor suave a galletas, con fresas silvestres al horno.', 'Element'),
(72, 'LM Blast', 'lm_blast', 'Refrescante y agrio sabor de limón maduro', 'Darkside'),
(191, 'London Fog', 'london_fog', 'Pomelo, rosa negra y menta dulce.', 'Blue Horse'),
(67, 'Los Locos', 'los_locos', 'Deliciosa y cremosa irish cream', 'Aloha'),
(106, 'Lover', 'lover', 'Melón, bayas, especias y fresas', 'Dumanji'),
(81, 'Marshall', 'marshall', 'Brownie, naranja, menta', 'Dozaj'),
(68, 'Maverick', 'maverick', 'Limonada con hielo, refrescante, única e incomparable', 'Aloha'),
(215, 'Mediterranean Punch', 'mediterranean_punch', 'Experimenta la emoción tropical de este refrescante sabor. Una deliciosa combinación de lima especiada con naranja dulce y menta.', 'Afzal'),
(162, 'Mekong', 'mekong', 'Desprende un intenso aroma a Calamansi. Creado mezclando limón, lima y Kumquat.', 'Element'),
(103, 'Meridian', 'meridian', 'Sandía, melón y manzana', 'Dumanji'),
(73, 'MG Assi', 'mg_assi', 'Batido con pulpa de mango', 'Darkside'),
(193, 'Mi Amor', 'mi_amor', 'Plátano, mezcla de bayas y hielo.', 'Blue Horse'),
(165, 'Mississippi', 'mississippi', 'Sabor a carne de cerezas maduras, jugosas y dulces, que se complementan con la ligera astringencia del hueso.', 'Element'),
(82, 'Mito', 'mito', 'Caramelo, canela, toque helado', 'Dozaj'),
(130, 'Mng Loco', 'mng_loco', 'Una combinación de diferentes tipos de mango, un toque de energía y nuestro nuevo y aún más fresco sabor a mentol.', 'Hookain'),
(192, 'Moscow Evenings', 'moscow_evenings', 'Sandía, melocotón y menta.', 'Blue Horse'),
(93, 'Na3ne', 'na3ne', 'Menta', 'Dumanji'),
(172, 'Nairobi', 'nairobi', '¿La sensación? ¡Creemos que sí!, ¿Quién no conoce el sabor del cola cao? ¡Este sabe igual!', 'Dozaj'),
(62, 'Nazaré', 'nazare', 'Mezcla única de melón, sandía, fruta de la pasión, chicle y tres sabores adicionales', 'Aloha'),
(182, 'No Woman No Cry', 'no_woman_no_cry', 'Pera, fresa y menta.', 'Blue Horse'),
(58, 'Ola Zapata', 'ola_zapata', 'CocaCola con canela', 'Revoshi'),
(200, 'Ommy Shelby', 'ommy_shelby', 'Tarta de limón', 'Apocalypse'),
(133, 'Original Vanta Zotic', 'original_vanta_zotic', 'Batido afrutado de maracuyá, durazno y zumo de naranja, recuerda a un limonada muy famosa con un toque exótico.', 'Hookain'),
(173, 'Orko', 'orko', '¡Sabor simplemente espectacular! Prueba este increíble mix de suave cascara de limón, lima y frescor de menta. ', 'Dozaj'),
(57, 'Orng Mnt', 'orng_mnt', 'Naranja helada', 'Revoshi'),
(135, 'Orogina', 'orogina', 'Naranja y mandarina combinadas con un toque de White Caek.', 'Hookain'),
(1, 'Pablo', 'pablo', 'Lima y arándanos', 'Nameless'),
(64, 'Pacific', 'pacific', 'Suave, aterciopelado y refrescante. Helado cremoso de frutos del bosque', 'Aloha'),
(59, 'Pancho Villa', 'pancho_villa', 'Mix frutal con melón y limón', 'Revoshi'),
(138, 'Pic Zkittlez', 'pic_zkittlez', 'Refrescante té helado de melocotón salvaje y albaricoque. Mezclado con menta y unos ingredientes especiales que no te contamos.', 'Hookain'),
(100, 'Pink Kiss', 'pink_kiss', 'Frutas exóticas dulces', 'Dumanji'),
(177, 'Pink Lemenciaga', 'pink_lemenciaga', 'El pomelo rosado se encuentra con Lemenciaga.', 'Hookain'),
(155, 'Pinkman', 'pinkman', 'Pomelo rosa, sirope de frambuesa y fresa', 'Musthave'),
(147, 'Punani', 'punani', 'Jugoso, jugosísimo, mango y maracuyá fusionado con naranja y piña.', 'Hookain'),
(157, 'Raspi', 'raspi', 'Mermelada de frambuesa', 'Musthave'),
(89, 'Rio Lady', 'rio_lady', 'Piña, melón, chicle y toque helado', 'Dozaj'),
(47, 'Rotana', 'rotana', 'Melón con nata y fresa', 'Serbetli'),
(83, 'Royal Style', 'royal_style', 'Muffin de arándano', 'Dozaj'),
(69, 'Shaka Shaka', 'shaka_shaka', 'Menta dulce, penetrante y agradable. Adictiva.', 'Aloha'),
(168, 'Sirocco', 'sirocco', 'Sabor agridulce de la exótica fruta del tamarindo con un tinte cítrico.', 'Element'),
(140, 'Sm!nt', 'smint', 'Experimenta el sabor refrescante de nuestro caramelo de menta a la tic tac. Fresco y dulce.', 'Hookain'),
(150, 'Soleiro Spliff', 'soleiro_spliff', 'Una explosión de sabores. Marakuyá, caramelo de naranja y helado de vainilla. ', 'Hookain'),
(170, 'Southerly Buster', 'southerly_buster', 'Un cóctel tropical con mango dulce y jugosa fruta de la pasión con la dulzura aterciopelada del melocotón.', 'Element'),
(159, 'Space Flavour', 'space_flavour', 'Mango, lichi, fruta de la pasión y pétalos de rosa', 'Musthave'),
(158, 'Space Force', 'space_force', 'Tarta de pistacho con frambuesa', 'Musthave'),
(156, 'Space Invaders', 'space_invaders', 'Pistacho', 'Musthave'),
(66, 'Sparrow', 'sparrow', 'Mezcal de piña y mango con efecto frío', 'Aloha'),
(61, 'Splash', 'splash', 'Naranja picante, fresca y cremosa', 'Aloha'),
(153, 'Stellar', 'stellar', 'Lima & Limón', 'Musthave'),
(48, 'Stra Shark', 'stra_shark', 'Batido de fresa', 'Serbetli'),
(217, 'Strong Freezy Lemon', 'strong_freezy_lemon', 'Una fuerte combinación refrescante, limón con un toque helado que te llevará a una gran experiencia cachimbera.', 'Afzal'),
(218, 'Strong Mango Magic', 'strong_mango_magic', 'Un sabor fuerte preparado para todos los amantes del mango. Fuma y permite que este sabor produzca una explosión de sabor en tu paladar.', 'Afzal'),
(98, 'Sun Beach', 'sun_beach', 'Kiwi, piña y melón', 'Dumanji'),
(74, 'Supernova', 'supernova', 'Impresionante mentol frío', 'Darkside'),
(90, 'Sweet Night', 'sweet_night', 'Guayaba, melón, kiwi, lima y fruta nefelio (rambutan)', 'Dozaj'),
(35, 'T-Ber', 't-ber', 'Frutos rojos tostados', 'Serbetli'),
(65, 'T.Riko', 'triko', 'Deliciosa té con leche, cacao y canela', 'Aloha'),
(75, 'Tear', 'tear', 'Rico sabor de limonada dulce de pera', 'Darkside'),
(194, 'The Coldest Green', 'the_coldest_green', 'Lima Fuerte.', 'Blue Horse'),
(195, 'The Perfect Storm', 'the_perfect_storm', '6 ingredientes secretos, hielo y menta.', 'Blue Horse'),
(187, 'Thor\'s Flash', 'thors_flash', 'Menta fuerte.', 'Blue Horse'),
(176, 'Tokio', 'tokio', 'Déjate llevar por este auténtico sabor conseguido y delicioso! Combinando melocotón y lima con los extraordinario del jazmín y el toque helado. ', 'Dozaj'),
(185, 'Tokio Desire', 'tokio_desire', 'Mango, melón y cereza. ', 'Blue Horse'),
(105, 'Touty Red', 'touty_red', 'Frutos rojos', 'Dumanji'),
(216, 'Tropical Explosion', 'tropical_explosion', 'Extractos florales que despertarán tus sentidos con cada bocanada de humo. Los matices dulces, almizclados y mentolados rodearán tu paladar con su encantador efecto.', 'Afzal'),
(99, 'Tsunami', 'tsunami', 'Sandía, arándanos y menta', 'Dumanji'),
(209, 'Ugly King', 'ugly_king', 'Disfruta de la magia tropical de las frutas prohibidas: melocotón y mango helado.', 'Smyrna'),
(160, 'Uranus', 'uranus', 'Frutas del bosque', 'Musthave'),
(60, 'Vamos Ernesto', 'vamos_ernesto', 'Chicle de canela', 'Revoshi'),
(137, 'Vantanaz', 'vantanaz', 'El fuerte sabor a piña se mezcla con una combinación de mango, pomelo y zumo de durazno. Idéntico a Vanta Piña.', 'Hookain'),
(186, 'Venezia Serenata', 'venezia_serenata', 'Limoncello, fresa y lima. ', 'Blue Horse'),
(91, 'Vip 44', 'vip_44', 'Cactus, lima y pepino', 'Dozaj'),
(163, 'Volta', 'volta', 'Esta es una combinación de sandía madura y fresas tiernas con regusto a limón.', 'Element'),
(148, 'White Caek', 'white_caek', 'El más sabroso! tarta de queso con un toque de caramelo.', 'Hookain'),
(196, 'Wind Of Amazon', 'wind_of_amazon', 'Albaricoque, melocotón, menta dulce y hielo.', 'Blue Horse'),
(199, 'Yodda', 'yodda', 'Menta verde.', 'Apocalypse'),
(131, 'Zenter Schox', 'zenter_schox', 'El sabor más agrio del mundo a partir de aromas de lima y limón. Es tan agrio que te volverá loco. ', 'Hookain'),
(207, 'Zeus', 'zeus', 'La menta oscura más poderosa del Olimpo. Incluso los dioses se sorprenderán de tal frescura.', 'Smyrna'),
(166, 'Zonda', 'zonda', 'Una mezcla de frutas tropicales donde la agridulce piña se combina con el sabor exótico de una tierna y jugosa papaya.', 'Element');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` varchar(256) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `PASSWORD` varchar(70) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `PASSWORD`, `enabled`) VALUES
('cd4fa027-36b6-4639-86b8-834fe83b2e4a', 'enriquecabe300@gmail.com', 'EnriqueCaBe', '{bcrypt}$2a$10$Hm0L1XIsrWDkeWNjbMUCmOhd7qRYJXeM4hQ1kOHrWVd1tMzqIpU3i', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoracion_mezcla`
--

CREATE TABLE `valoracion_mezcla` (
  `id` varchar(256) NOT NULL,
  `nota` double NOT NULL,
  `comentario` varchar(256) DEFAULT NULL,
  `usuario` varchar(256) NOT NULL,
  `mezcla` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoracion_tabaco`
--

CREATE TABLE `valoracion_tabaco` (
  `id` varchar(256) NOT NULL,
  `nota` double NOT NULL,
  `usuario` varchar(256) NOT NULL,
  `tabaco` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`authority_id`),
  ADD UNIQUE KEY `uni_username_role` (`role`,`username`),
  ADD KEY `username` (`username`);

--
-- Indices de la tabla `formato`
--
ALTER TABLE `formato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tabaco` (`tabaco`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`NAME`),
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
  ADD KEY `mezcla` (`mezcla`),
  ADD KEY `tabaco` (`tabaco`);

--
-- Indices de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  ADD PRIMARY KEY (`name_tabaco`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `marca` (`marca`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `valoracion_mezcla`
--
ALTER TABLE `valoracion_mezcla`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario` (`usuario`),
  ADD KEY `mezcla` (`mezcla`);

--
-- Indices de la tabla `valoracion_tabaco`
--
ALTER TABLE `valoracion_tabaco`
  ADD KEY `usuario` (`usuario`),
  ADD KEY `tabaco` (`tabaco`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authorities`
--
ALTER TABLE `authorities`
  MODIFY `authority_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Filtros para la tabla `formato`
--
ALTER TABLE `formato`
  ADD CONSTRAINT `formato_ibfk_1` FOREIGN KEY (`tabaco`) REFERENCES `tabaco` (`name_tabaco`) ON DELETE CASCADE;

--
-- Filtros para la tabla `porcentaje`
--
ALTER TABLE `porcentaje`
  ADD CONSTRAINT `porcentaje_ibfk_1` FOREIGN KEY (`tabaco`) REFERENCES `tabaco` (`name_tabaco`) ON DELETE CASCADE,
  ADD CONSTRAINT `porcentaje_ibfk_2` FOREIGN KEY (`mezcla`) REFERENCES `mezcla` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tabaco`
--
ALTER TABLE `tabaco`
  ADD CONSTRAINT `tabaco_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `marca` (`NAME`) ON DELETE CASCADE;

--
-- Filtros para la tabla `valoracion_mezcla`
--
ALTER TABLE `valoracion_mezcla`
  ADD CONSTRAINT `valoracion_mezcla_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `users` (`username`) ON DELETE CASCADE,
  ADD CONSTRAINT `valoracion_mezcla_ibfk_2` FOREIGN KEY (`mezcla`) REFERENCES `mezcla` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `valoracion_tabaco`
--
ALTER TABLE `valoracion_tabaco`
  ADD CONSTRAINT `valoracion_tabaco_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `users` (`username`) ON DELETE CASCADE,
  ADD CONSTRAINT `valoracion_tabaco_ibfk_2` FOREIGN KEY (`tabaco`) REFERENCES `tabaco` (`name_tabaco`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
