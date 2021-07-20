-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2021 a las 18:25:36
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
-- Base de datos: `shishacatalogo`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `createEmailList` (IN `var_formato` INT, IN `var_tabaco` VARCHAR(50))  BEGIN
	DECLARE finished INTEGER DEFAULT 0;
	DECLARE emailAddress INTEGER DEFAULT 0;

	-- declare cursor for employee email
	DEClARE curEmail 
		CURSOR FOR 
			SELECT id FROM tabaco where marca=var_tabaco;

	-- declare NOT FOUND handler
	DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;

	OPEN curEmail;

	getEmail: LOOP
		FETCH curEmail INTO emailAddress;
		IF finished = 1 THEN 
			LEAVE getEmail;
		END IF;
        insert into tabaco_formato_asso(formato_id,tabaco_id) values(var_formato,emailAddress);
	END LOOP getEmail;
	CLOSE curEmail;

END$$

DELIMITER ;

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
(22, 50, 3.25);

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
(16, 'Adalya', 'Turquia', 'Turkey', 'Tabaco rubio', NULL, 'https://restcountries.eu/data/tur.svg'),
(17, 'Adalya Black', 'Turquia', 'Turkey', 'Tabaco Negro', NULL, 'https://restcountries.eu/data/tur.svg'),
(15, 'Afzal', 'Índia', 'India', 'Tabaco rubio.', 'https://i.ibb.co/XXrtNZm/afzal.png', 'https://restcountries.eu/data/ind.svg'),
(5, 'Aloha', 'España', 'Spain', 'Tabaco rubio', 'https://i.ibb.co/cwcDsg1/aloha.jpg', 'https://restcountries.eu/data/esp.svg'),
(13, 'Apocalypse', 'Alemania', 'Germany', 'Tabaco rubio.', 'https://i.ibb.co/ct2kcFk/apocalypse-tobacco.jpg', 'https://restcountries.eu/data/deu.svg'),
(12, 'Blue Horse', 'Turquía', 'Turkey', 'Tabaco Rubio', 'https://i.ibb.co/4t0cRT0/blue-horse.png', 'https://restcountries.eu/data/tur.svg'),
(6, 'Darkside', 'Rusia', 'Russian', 'Tabaco negro', 'https://i.ibb.co/1TpbsMG/darkside.png', 'https://restcountries.eu/data/rus.svg'),
(7, 'Dozaj', 'Turquia', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/ZBmV6nP/dozaj.png', 'https://restcountries.eu/data/tur.svg'),
(8, 'Dumanji', 'Francia', 'France', 'Tabaco rubio', 'https://i.ibb.co/mBMcM2j/dumanji.jpg', 'https://restcountries.eu/data/fra.svg'),
(11, 'Element', 'Rusia', 'Russia', 'Tabaco de diferentes gamas', 'https://i.ibb.co/5vnb5BJ/element-tobacco.jpg', 'https://restcountries.eu/data/rus.svg'),
(9, 'Hookain', 'Alemania', 'Germany', 'Tabaco rubio', 'https://i.ibb.co/6mQsXhp/hookain.png', 'https://restcountries.eu/data/deu.svg'),
(18, 'Marif', 'Turquia', 'Turkey', 'Tabaco rubio', NULL, 'https://restcountries.eu/data/tur.svg'),
(10, 'Musthave', 'Rusia', 'Russia', 'Tabaco negro', 'https://i.ibb.co/pLSCjmH/tabak-musthave.png', 'https://restcountries.eu/data/rus.svg'),
(1, 'Nameless', 'Alemania', 'Germany', 'Tabaco rubio', 'https://i.ibb.co/Jys8s36/nameless.png', 'https://restcountries.eu/data/deu.svg'),
(23, 'Overdozz', 'España', 'Spain', 'Tabaco Rubio', NULL, 'https://restcountries.eu/data/esp.svg'),
(19, 'Privilege', 'España', 'Spain', 'Tabaco rubio', NULL, 'https://restcountries.eu/data/esp.svg'),
(4, 'Revoshi', 'Turquia', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/b69zGrb/revoshi.png', 'https://restcountries.eu/data/tur.svg'),
(3, 'Serbetli', 'Alemania', 'Germany', 'Tabaco rubio premium', 'https://i.ibb.co/cTzSKqY/serbetli.png', 'https://restcountries.eu/data/deu.svg'),
(14, 'Smyrna', 'Turquía', 'Turkey', 'Tabaco rubio', 'https://i.ibb.co/HBPTR9f/smyrna.jpg', 'https://restcountries.eu/data/tur.svg'),
(2, 'Tangiers', 'USA', 'usa', 'Tabaco negro', 'https://i.ibb.co/LPWDd6j/tangiers.png', 'https://restcountries.eu/data/usa.svg');

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
(226, 'American', 'american', 'La famosa crema de cacahuete americana.', 'Aloha'),
(129, 'American Pei', 'american_pei', 'Cremosa tarta de manzana a la americana coon toffee. Receta increiblemente deliciosa de la abuela.', 'Hookain'),
(184, 'Amsterdan Lights', 'amsterdan_lights', 'Mezcla de bayas, fresa y cereza.', 'Blue Horse'),
(63, 'Atlantic', 'atlantic', 'Fresco y refrescante caramelo de cereza', 'Aloha'),
(154, 'Atmosphere', 'atmosphere', 'limonada de zumo de sandía, melón y sirope de berberis vulgaris', 'Musthave'),
(212, 'Ay, Carmela!', 'ay_carmela', 'El público exclama, ¡Ay, Carmela! Obra Maestra compuesta de melón, naranja y arándanos.', 'Smyrna'),
(197, 'Babyelya', 'babyelya', 'Granadina, cereza y menta.', 'Apocalypse'),
(102, 'Bahamas', 'bahamas', 'Piña, melón y frescor', 'Dumanji'),
(188, 'Baku Nights', 'baku_nights', 'Chicle, Plátano, Menta y Hielo.', 'Blue Horse'),
(28, 'Balance', 'balance', 'Banana y fresa', 'Serbetli'),
(198, 'Baron Rouge', 'baron_rouge', 'Higos, membrillo, fresa y sandía.', 'Apocalypse'),
(241, 'Berlin Nights', 'berlin_nights', 'Melocotón y menta.', 'Adalya'),
(149, 'Big Black Barries', 'big_black_barries', 'Intenso sabor a uva moscatel con esencia de mentol..', 'Hookain'),
(225, 'Bise', 'bise', 'Jugo de granada fresca.', 'Element'),
(289, 'Black Cane Mnt', 'black_cane_mnt', 'Menta.', 'Adalya Black'),
(285, 'Black Dragan', 'black_dragan', 'Cola.', 'Adalya Black'),
(290, 'Black Horchachi', 'black_horchachi', 'Caramelo, nueces, chocolate y café.', 'Adalya Black'),
(286, 'Black Lem Brry', 'black_lem_brry', 'Frambuesa y limón.', 'Adalya Black'),
(287, 'Black Pych', 'black_pych', 'Melocotón poderoso.', 'Adalya Black'),
(77, 'Black Star', 'black_star', 'Maracuyá, chicle, melocotón y menta', 'Dozaj'),
(288, 'Black Voodoo', 'black_voodoo', 'Sabores a pino, notas de bosque junto con frutas silvestres.', 'Adalya Black'),
(302, 'Blackbeard Soul', 'blackbeard_soul', 'Mojito Waba.', 'Revoshi'),
(2, 'Blacknana', 'blacknana', 'Uva moscatel y menta', 'Nameless'),
(78, 'Blade', 'blade', 'Mezcla de bayas, fruta del dragon y menta', 'Dozaj'),
(50, 'Blck Grp', 'blck_grp', 'Uva negra', 'Revoshi'),
(242, 'Blue Dragan', 'blue_dragan', 'Fruta dragón, arándano y bombón helado.', 'Adalya'),
(243, 'Blue I\'ss', 'blue_iss', 'Arándano y hielo.', 'Adalya'),
(104, 'Blue mix', 'blue_mix', 'Uvas, arándanos, piña y coco', 'Dumanji'),
(37, 'Blue Tropic', 'blue_tropic', 'Curaçao', 'Serbetli'),
(244, 'Blue Yellow', 'blue_yellow', 'Melón y arándanos.', 'Adalya'),
(29, 'Blueberry', 'blueerry', 'Arándanos', 'Serbetli'),
(213, 'Bombay Fuzion', 'bombay_fuzion', 'La tradicional hoja de betel india con el balance perfecto de la dulzura de la nuez de areca.', 'Afzal'),
(214, 'Bombay Nights', 'bombay_nights', 'Refresca tu paladar con este sabor exótico o mézclalo con otro sabor y experimente la magia del verdadero sabor de la India.', 'Afzal'),
(221, 'Brickfielder', 'brickfielder', 'Fresa salvaje y arándano dulce.', 'Element'),
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
(240, 'Carioca', 'carioca', 'El dulce brasileño por excelencia: base de exquisito cacahuete con fondo realmente dulce.', 'Smyrna'),
(84, 'Carnival', 'carnival', 'Mezcla de frutas exóticas', 'Dozaj'),
(85, 'Casablanca', 'casablanca', 'Té especiado, jenjibre, nata y toque de canela', 'Dozaj'),
(139, 'Ch3ri Zkittlez', 'cheri_zkittlez', 'Sabor intenso a cereza y fruta de dragón. Mejor de lo que te puedas imaginar.', 'Hookain'),
(180, 'Chao Bella', 'chao_bella', 'Sabor a fresa.', 'Revoshi'),
(206, 'Chernobyl', 'chernobyl', 'Mandarina helada y arándanos.', 'Apocalypse'),
(294, 'CHM', 'chm', 'El placer de más puro sabor a chocolate con el frescor de la menta.', 'Marif'),
(245, 'Chung Wood Kizz', 'chung_wood_kizz', 'Chicle, canela y menta.', 'Adalya'),
(283, 'Cindy\'s', 'cindys', 'Bayas, hielo, mango, maracuyá, melón y sandía.', 'Adalya'),
(296, 'CM', 'cm', 'Suave sabor a menta fresca ideal para maridar.', 'Marif'),
(178, 'Code In Love', 'code_in_love', 'Sabor exótico de Cactus cremoso con melocotón, sandía y vainilla.', 'Hookain'),
(152, 'Cosmos', 'cosmos', 'Kiwi, manzana y menta', 'Musthave'),
(134, 'Cotton Candy Craem', 'cotton_candy_craem', 'Algodón de azúcar, sandía, mango y arándanos.', 'Hookain'),
(86, 'Cuba Dream', 'cuba_dream', 'Exótic tropical fruits', 'Dozaj'),
(300, 'DAEM', 'daem', 'Matices afrutados de dos manzanas con las florales del saúco y el frescor de la menta.', 'Marif'),
(70, 'Darkside Hola', 'darkside_hola', 'Cola con limón', 'Darkside'),
(87, 'Dead Sea', 'dead_sea', 'Coca cola con cereza helada', 'Dozaj'),
(211, 'Deja Vu', 'deja_vu', 'Revive el flash del Deja Vu. Nunca antes visto: flor de sauco y lemongrass.', 'Smyrna'),
(189, 'Discovery', 'discovery', 'Chicle, Pomelo, Limón y Lima.', 'Blue Horse'),
(291, 'Double A', 'double_a', 'Clásico manzana verde y manzana roja.', 'Marif'),
(30, 'Double Effect', 'double_effect', 'Cola y limón', 'Serbetli'),
(246, 'Dragan Code', 'dragan_code', 'Cola y bebidas energéticas.', 'Adalya'),
(49, 'Duses', 'duses', 'Pera fresca', 'Serbetli'),
(51, 'D´App Strng', 'dapp_strng', 'Dos manzanas intenso', 'Revoshi'),
(161, 'Eclipse', 'eclipse', 'Zumo de piña', 'Musthave'),
(38, 'Ehke', 'ehke', 'Pastel de limón', 'Serbetli'),
(31, 'Elon', 'elon', 'Melón', 'Serbetli'),
(52, 'Eskimo Cndy', 'eskimo_cndy', 'Caramelos helados', 'Revoshi'),
(247, 'Eskimo Leon', 'eskimo_leon', 'Kiwi, limón y hielo.', 'Adalya'),
(53, 'Eskimo Lmn', 'eskimo_lmn', 'Limón helado', 'Revoshi'),
(54, 'Eskimo P´App', 'eskimo_dapp', 'Piña helada', 'Revoshi'),
(55, 'Eskimo Wtrmln', 'eskimo_wtrmln', 'Sandía helada', 'Revoshi'),
(79, 'Eternal', 'eternal', 'Puro de vainilla', 'Dozaj'),
(175, 'Excalibur', 'excalibur', '¡Fresco! ¿A quién no le gustan los cítricos? ¡Aquí los fusionamos con toques florales y menta que te dejará un refrescante regusto!', 'Dozaj'),
(248, 'Exotic Rush', 'exotic_rush', 'Piña y limón.', 'Adalya'),
(136, 'Eyez Kalt', 'eyez_kalt', 'Muy frío. Caramelo de menta refinado con plátano y lima.', 'Hookain'),
(141, 'Fellatio', 'fellatio', 'Batido de sandía, melón dulce, maracuyá y frutas el bosque.', 'Hookain'),
(56, 'Free Spartacus', 'free_spartacus', 'Mix de flor de saúco', 'Revoshi'),
(95, 'French Rivera', 'french_rivera', 'Chicle y melón', 'Dumanji'),
(297, 'G', 'g', 'Elegante y refinado. La magia de la uva con notas dulces de la miel.', 'Marif'),
(295, 'GB', 'gb', 'Galleta de jengibre, sirope y canela.', 'Marif'),
(249, 'Gipsy Kings', 'gipsy_kings', 'Melón dulce, melocotón, sandía y limón.', 'Adalya'),
(201, 'Gobfather', 'gobfather', 'Doble manzana.', 'Apocalypse'),
(39, 'Grapic', 'grapic', 'Manzana verde helada', 'Serbetli'),
(32, 'Green Flash', 'green_flash', 'Menta', 'Serbetli'),
(142, 'Green Lean', 'green_lean', 'La mejor lima que jamás hayas probado, convertida en zumo de lima. Siente el sabor y el frescor de miles de limas que explotarán en tu cazoleta.', 'Hookain'),
(250, 'Green Leon Kizz', 'green_leon_kizz', 'Lima y menta.', 'Adalya'),
(40, 'Green Mix', 'green_mix', 'Lima, manzana verde, kiwi y menta', 'Serbetli'),
(204, 'Halep Boom', 'halep_boom', 'Lichi y arándanos.', 'Apocalypse'),
(36, 'Hate 69', 'hate_69', 'Mezcla de frutas heladas', 'Serbetli'),
(251, 'Hawaii', 'hawaii', 'Piña, mango y menta.', 'Adalya'),
(101, 'Heaven', 'heaven', 'Fruta tropical, melón y menta', 'Dumanji'),
(208, 'Hera', 'hera', 'El sabor preferido de la esposa de Zeus, combinación ganadora de cereza y limón.', 'Smyrna'),
(41, 'I Blueberry', 'i_blueberry', 'Arándanos helados', 'Serbetli'),
(71, 'I Granny', 'i_granny', 'Manzana verde dulce', 'Darkside'),
(252, 'I\'ss', 'iss', 'Hielo', 'Adalya'),
(253, 'I\'ss Boni', 'iss_boni', 'Menta dulce y chicle.', 'Adalya'),
(260, 'I\'ss Kaktu', 'iss_kaktu', 'Cactus y hielo.', 'Adalya'),
(254, 'I\'ss Lie On The Rocks', 'iss_lie_on_the_rocks', 'Hielo, lima, arándano y chicle.', 'Adalya'),
(42, 'Icbodrumm', 'icbdrumm', 'Mandarina helada', 'Serbetli'),
(33, 'Ice Bird', 'ice_bird', 'Kiwi helado', 'Serbetli'),
(34, 'Ice Pin', 'ice_pin', 'Piña helada', 'Serbetli'),
(43, 'Iceber', 'iceber', 'Frutas del bosque heladas', 'Serbetli'),
(227, 'Icertan', 'icertan', 'Frutas del bosque con mandarina helada.', 'Serbetli'),
(228, 'Icitmin', 'icitmin', 'Limón y pomelo con menta.', 'Serbetli'),
(229, 'Icraper', 'icraper', 'Uva y frambuesa helada.', 'Serbetli'),
(45, 'Imcesy', 'imcesy', 'Lima, lichi y arándanos', 'Serbetli'),
(181, 'Istanblue', 'istanblue', 'Uva, arándano y menta.', 'Blue Horse'),
(46, 'Istanbul Nights', 'istanbul_nights', 'Frambuesa, arándanos y fresa', 'Serbetli'),
(88, 'Jelly Bear', 'jelly_bear', 'Osito de gominola', 'Dozaj'),
(202, 'Joker', 'joker', 'Ice banana y fresa', 'Apocalypse'),
(281, 'Jungle Jungle', 'jungle_jungle', 'Naranja, limón y menta.', 'Adalya'),
(143, 'Kaffa Yayo', 'kaffa_yayo', 'El mejor postre con sabor a coco. Coco de Hawai cubierto por una fina crema de almendras con vainilla bourbon.', 'Hookain'),
(210, 'Karnaval', 'karnaval', '¡Que empiece la fiesta! Baila con esta jugosa mezcla entre sandía, pera y melón.', 'Smyrna'),
(169, 'Khamseen', 'khamseen', 'Una compleja composición de bayas que tocará una fibra sensible en cada corazón.', 'Element'),
(203, 'King Leonidas', 'king_leonidas', 'Violeta, arándanos y chocolate blanco.', 'Apocalypse'),
(151, 'Kivi King', 'kivi_king', 'Kiwi afrutado intenso sobre una cama de lima. Agradablemente fresco con un toque de menta y mentol.', 'Hookain'),
(255, 'Kizz', 'kizz', 'Menta.', 'Adalya'),
(282, 'Krosty App', 'krosty_app', 'Manzana asada.', 'Adalya'),
(96, 'Kush', 'kush', 'Sabor CBD', 'Dumanji'),
(97, 'Kush Na3ne', 'kush_ne3ne', 'Sabor CBD con menta', 'Dumanji'),
(190, 'La Beirut', 'la_beirut', 'Café con caramelo.', 'Blue Horse'),
(280, 'La Bonita', 'la_bonita', 'Uva, fresa, maracuyá, manzana y cereza.', 'Adalya'),
(205, 'La Force', 'la_force', 'Ice fresa y melón.', 'Apocalypse'),
(256, 'Lady Killer', 'lady_killer', 'Melocotón, mango, menta y hielo.', 'Adalya'),
(174, 'Lambada', 'lambada', '¡Baila al ritmo del famoso gofre holandés! Redondos con caramelo por dentro. ¡Qué buenos están, madre mía!', 'Dozaj'),
(80, 'Land Of Fire', 'land_of_fire', 'Vodka, café, licor, nata', 'Dozaj'),
(132, 'Laoz', 'laoz', 'Jugo dulce de cereza, afrutado e intenso combinado con arándanos. Añadimos mentol para hacerlo más fresco. Sabor afrutado y fresco. ', 'Hookain'),
(146, 'Lemenciaga', 'lemenciaga', 'Un sabor refrescante de limón y esencia de té verde con el indispensable toque de menta fresca.', 'Hookain'),
(164, 'Lena', 'lena', 'Este es el sabor suave a galletas, con fresas silvestres al horno.', 'Element'),
(257, 'Leon Pi', 'leon_pi', 'Tarta de limón.', 'Adalya'),
(72, 'LM Blast', 'lm_blast', 'Refrescante y agrio sabor de limón maduro', 'Darkside'),
(191, 'London Fog', 'london_fog', 'Pomelo, rosa negra y menta dulce.', 'Blue Horse'),
(67, 'Los Locos', 'los_locos', 'Deliciosa y cremosa irish cream', 'Aloha'),
(258, 'Love 66', 'love_66', 'La receta de oro de hookah de toda la vida. 6 sabores y menta.', 'Adalya'),
(106, 'Lover', 'lover', 'Melón, bayas, especias y fresas', 'Dumanji'),
(261, 'M.M.', 'm_m', 'Perfume de Marilyn Monroe. Pruébalo y lo entenderás.', 'Adalya'),
(262, 'Manko Tanko', 'manko_tanko', 'Mango y maracuyá.', 'Adalya'),
(263, 'Manko Tanko I\'ss', 'manko_tanko_iss', 'Mango, maracuyá y hielo.', 'Adalya'),
(81, 'Marshall', 'marshall', 'Brownie, naranja, menta', 'Dozaj'),
(68, 'Maverick', 'maverick', 'Limonada con hielo, refrescante, única e incomparable', 'Aloha'),
(215, 'Mediterranean Punch', 'mediterranean_punch', 'Experimenta la emoción tropical de este refrescante sabor. Una deliciosa combinación de lima especiada con naranja dulce y menta.', 'Afzal'),
(162, 'Mekong', 'mekong', 'Desprende un intenso aroma a Calamansi. Creado mezclando limón, lima y Kumquat.', 'Element'),
(103, 'Meridian', 'meridian', 'Sandía, melón y manzana', 'Dumanji'),
(230, 'Merry', 'merry', 'Moras del bosque.', 'Serbetli'),
(298, 'MG', 'mg', 'Una ola para los sentidos. Intenso y equilibrado chicle y menta fresca.', 'Marif'),
(73, 'MG Assi', 'mg_assi', 'Batido con pulpa de mango', 'Darkside'),
(193, 'Mi Amor', 'mi_amor', 'Plátano, mezcla de bayas y hielo.', 'Blue Horse'),
(165, 'Mississippi', 'mississippi', 'Sabor a carne de cerezas maduras, jugosas y dulces, que se complementan con la ligera astringencia del hueso.', 'Element'),
(82, 'Mito', 'mito', 'Caramelo, canela, toque helado', 'Dozaj'),
(292, 'Mixed F', 'mixed_f', 'Bomba explosiva que revoluciona los sentidos. Manzana, ciruela, pera y bayas.', 'Marif'),
(130, 'Mng Loco', 'mng_loco', 'Una combinación de diferentes tipos de mango, un toque de energía y nuestro nuevo y aún más fresco sabor a mentol.', 'Hookain'),
(264, 'Moon Dream', 'moon_dream', 'Vainilla, chicle, canela y menta.', 'Adalya'),
(192, 'Moscow Evenings', 'moscow_evenings', 'Sandía, melocotón y menta.', 'Blue Horse'),
(303, 'Mulan Sword', 'mulan_sword', 'Kiwi y mango.', 'Revoshi'),
(93, 'Na3ne', 'na3ne', 'Menta', 'Dumanji'),
(172, 'Nairobi', 'nairobi', '¿La sensación? ¡Creemos que sí!, ¿Quién no conoce el sabor del cola cao? ¡Este sabe igual!', 'Dozaj'),
(62, 'Nazaré', 'nazare', 'Mezcla única de melón, sandía, fruta de la pasión, chicle y tres sabores adicionales', 'Aloha'),
(182, 'No Woman No Cry', 'no_woman_no_cry', 'Pera, fresa y menta.', 'Blue Horse'),
(58, 'Ola Zapata', 'ola_zapata', 'CocaCola con canela', 'Revoshi'),
(299, 'OM', 'om', 'Curiosa combinación de naranja madura y refrescante menta verde.', 'Marif'),
(200, 'Ommy Shelby', 'ommy_shelby', 'Tarta de limón', 'Apocalypse'),
(235, 'Oricman', 'oricman', 'Naranja y mango helado.', 'Serbetli'),
(133, 'Original Vanta Zotic', 'original_vanta_zotic', 'Batido afrutado de maracuyá, durazno y zumo de naranja, recuerda a un limonada muy famosa con un toque exótico.', 'Hookain'),
(173, 'Orko', 'orko', '¡Sabor simplemente espectacular! Prueba este increíble mix de suave cascara de limón, lima y frescor de menta. ', 'Dozaj'),
(57, 'Orng Mnt', 'orng_mnt', 'Naranja helada', 'Revoshi'),
(135, 'Orogina', 'orogina', 'Naranja y mandarina combinadas con un toque de White Caek.', 'Hookain'),
(1, 'Pablo', 'pablo', 'Lima y arándanos', 'Nameless'),
(64, 'Pacific', 'pacific', 'Suave, aterciopelado y refrescante. Helado cremoso de frutos del bosque', 'Aloha'),
(265, 'Pair Kizz', 'pair_kizz', 'Pera y menta.', 'Adalya'),
(59, 'Pancho Villa', 'pancho_villa', 'Mix frutal con melón y limón', 'Revoshi'),
(266, 'Paradiso I\'ss', 'paradiso_iss', 'Pomelo y hielo.', 'Adalya'),
(267, 'Passion Kizz', 'passion_kizz', 'Maracuyá y menta.', 'Adalya'),
(138, 'Pic Zkittlez', 'pic_zkittlez', 'Refrescante té helado de melocotón salvaje y albaricoque. Mezclado con menta y unos ingredientes especiales que no te contamos.', 'Hookain'),
(100, 'Pink Kiss', 'pink_kiss', 'Frutas exóticas dulces', 'Dumanji'),
(177, 'Pink Lemenciaga', 'pink_lemenciaga', 'El pomelo rosado se encuentra con Lemenciaga.', 'Hookain'),
(155, 'Pinkman', 'pinkman', 'Pomelo rosa, sirope de frambuesa y fresa', 'Musthave'),
(236, 'Pistaicrem', 'pistaicrem', 'Helado de pistacho.', 'Serbetli'),
(268, 'Power', 'power', 'Bebida energética.', 'Adalya'),
(147, 'Punani', 'punani', 'Jugoso, jugosísimo, mango y maracuyá fusionado con naranja y piña.', 'Hookain'),
(269, 'Pych Blue Kizz', 'pych_blue_kizz', 'Melocotón, arándanos y menta.', 'Adalya'),
(157, 'Raspi', 'raspi', 'Mermelada de frambuesa', 'Musthave'),
(270, 'Red Alert I\'ss', 'red_alert_iss', 'Fresa, plátano y hielo.', 'Adalya'),
(271, 'Rhapsody', 'rhapsody', 'Melocotón, piña, mora, menta y hielo.', 'Adalya'),
(220, 'Rio Grande', 'rio_grande', 'Efecto de frío amargo que hace helada cualquier mezcla.', 'Element'),
(89, 'Rio Lady', 'rio_lady', 'Piña, melón, chicle y toque helado', 'Dozaj'),
(47, 'Rotana', 'rotana', 'Melón con nata y fresa', 'Serbetli'),
(83, 'Royal Style', 'royal_style', 'Muffin de arándano', 'Dozaj'),
(69, 'Shaka Shaka', 'shaka_shaka', 'Menta dulce, penetrante y agradable. Adictiva.', 'Aloha'),
(168, 'Sirocco', 'sirocco', 'Sabor agridulce de la exótica fruta del tamarindo con un tinte cítrico.', 'Element'),
(272, 'Skyfall', 'skyfall', 'Melocotón, sandía, melón y hielo.', 'Adalya'),
(140, 'Sm!nt', 'smint', 'Experimenta el sabor refrescante de nuestro caramelo de menta a la tic tac. Fresco y dulce.', 'Hookain'),
(150, 'Soleiro Spliff', 'soleiro_spliff', 'Una explosión de sabores. Marakuyá, caramelo de naranja y helado de vainilla. ', 'Hookain'),
(170, 'Southerly Buster', 'southerly_buster', 'Un cóctel tropical con mango dulce y jugosa fruta de la pasión con la dulzura aterciopelada del melocotón.', 'Element'),
(159, 'Space Flavour', 'space_flavour', 'Mango, lichi, fruta de la pasión y pétalos de rosa', 'Musthave'),
(158, 'Space Force', 'space_force', 'Tarta de pistacho con frambuesa', 'Musthave'),
(156, 'Space Invaders', 'space_invaders', 'Pistacho', 'Musthave'),
(66, 'Sparrow', 'sparrow', 'Mezcal de piña y mango con efecto frío', 'Aloha'),
(44, 'Spepinch', 'spepinch', 'Lima y melocotón a la parrilla', 'Serbetli'),
(61, 'Splash', 'splash', 'Naranja picante, fresca y cremosa', 'Aloha'),
(153, 'Stellar', 'stellar', 'Lima & Limón', 'Musthave'),
(48, 'Stra Shark', 'stra_shark', 'Batido de fresa', 'Serbetli'),
(237, 'Stra Yoburt', 'stra_yoburt', 'Yogurt de fresa.', 'Serbetli'),
(217, 'Strong Freezy Lemon', 'strong_freezy_lemon', 'Una fuerte combinación refrescante, limón con un toque helado que te llevará a una gran experiencia cachimbera.', 'Afzal'),
(218, 'Strong Mango Magic', 'strong_mango_magic', 'Un sabor fuerte preparado para todos los amantes del mango. Fuma y permite que este sabor produzca una explosión de sabor en tu paladar.', 'Afzal'),
(238, 'Summer Time', 'summer_time', 'Cítricos y pomelos dulces y frescos.', 'Serbetli'),
(98, 'Sun Beach', 'sun_beach', 'Kiwi, piña y melón', 'Dumanji'),
(74, 'Supernova', 'supernova', 'Impresionante mentol frío', 'Darkside'),
(273, 'Swees Bomb', 'swees_bomb', 'Bombón suizo.', 'Adalya'),
(90, 'Sweet Night', 'sweet_night', 'Guayaba, melón, kiwi, lima y fruta nefelio (rambutan)', 'Dozaj'),
(239, 'SWT Pistacho', 'swt_pistacho', 'Típico sorbete helado junto al cremoso pistacho.', 'Smyrna'),
(35, 'T-Ber', 't-ber', 'Frutos rojos tostados', 'Serbetli'),
(65, 'T.Riko', 'triko', 'Deliciosa té con leche, cacao y canela', 'Aloha'),
(75, 'Tear', 'tear', 'Rico sabor de limonada dulce de pera', 'Darkside'),
(219, 'Tennessee', 'tennessee', 'Cóctel de margarita con aromas de lima limón.', 'Element'),
(194, 'The Coldest Green', 'the_coldest_green', 'Lima Fuerte.', 'Blue Horse'),
(195, 'The Perfect Storm', 'the_perfect_storm', '6 ingredientes secretos, hielo y menta.', 'Blue Horse'),
(187, 'Thor\'s Flash', 'thors_flash', 'Menta fuerte.', 'Blue Horse'),
(274, 'Three Angels', 'three_angels', 'Pomelo, maracuya y hielo.', 'Adalya'),
(176, 'Tokio', 'tokio', 'Déjate llevar por este auténtico sabor conseguido y delicioso! Combinando melocotón y lima con los extraordinario del jazmín y el toque helado. ', 'Dozaj'),
(185, 'Tokio Desire', 'tokio_desire', 'Mango, melón y cereza. ', 'Blue Horse'),
(275, 'Tony\'s Destiny', 'tonys_destiny', 'Melocotón, maracuyá y hielo.', 'Adalya'),
(105, 'Touty Red', 'touty_red', 'Frutos rojos', 'Dumanji'),
(216, 'Tropical Explosion', 'tropical_explosion', 'Extractos florales que despertarán tus sentidos con cada bocanada de humo. Los matices dulces, almizclados y mentolados rodearán tu paladar con su encantador efecto.', 'Afzal'),
(99, 'Tsunami', 'tsunami', 'Sandía, arándanos y menta', 'Dumanji'),
(278, 'Twist Pi', 'twist_pi', 'Tarta de uva.', 'Adalya'),
(276, 'Two App', 'two_app', 'Dos manzanas. Verde y roja.', 'Adalya'),
(259, 'Two Yellow I\'ss', 'two_yellow_iss', 'Melón, sandía y hielo.', 'Adalya'),
(277, 'Tynky Wynky', 'tynky_wynky', 'Uva, limón y cardamomo.', 'Adalya'),
(209, 'Ugly King', 'ugly_king', 'Disfruta de la magia tropical de las frutas prohibidas: melocotón y mango helado.', 'Smyrna'),
(160, 'Uranus', 'uranus', 'Frutas del bosque', 'Musthave'),
(60, 'Vamos Ernesto', 'vamos_ernesto', 'Chicle de canela', 'Revoshi'),
(284, 'Van', 'van', 'Vainilla.', 'Adalya'),
(137, 'Vantanaz', 'vantanaz', 'El fuerte sabor a piña se mezcla con una combinación de mango, pomelo y zumo de durazno. Idéntico a Vanta Piña.', 'Hookain'),
(186, 'Venezia Serenata', 'venezia_serenata', 'Limoncello, fresa y lima. ', 'Blue Horse'),
(91, 'Vip 44', 'vip_44', 'Cactus, lima y pepino', 'Dozaj'),
(163, 'Volta', 'volta', 'Esta es una combinación de sandía madura y fresas tiernas con regusto a limón.', 'Element'),
(279, 'Watermelon Kizz', 'watermelon_kizz', 'Sandía y menta.', 'Adalya'),
(148, 'White Caek', 'white_caek', 'El más sabroso! tarta de queso con un toque de caramelo.', 'Hookain'),
(196, 'Wind Of Amazon', 'wind_of_amazon', 'Albaricoque, melocotón, menta dulce y hielo.', 'Blue Horse'),
(301, 'WM', 'wm', 'Refrescante e intenso sabor de sandía recién cortada.', 'Marif'),
(293, 'WMC', 'wmc', 'Del frescor de la menta y el dulzor de la sandía sale este sabor único.', 'Marif'),
(199, 'Yodda', 'yodda', 'Menta verde.', 'Apocalypse'),
(131, 'Zenter Schox', 'zenter_schox', 'El sabor más agrio del mundo a partir de aromas de lima y limón. Es tan agrio que te volverá loco. ', 'Hookain'),
(207, 'Zeus', 'zeus', 'La menta oscura más poderosa del Olimpo. Incluso los dioses se sorprenderán de tal frescura.', 'Smyrna'),
(166, 'Zonda', 'zonda', 'Una mezcla de frutas tropicales donde la agridulce piña se combina con el sabor exótico de una tierna y jugosa papaya.', 'Element');

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
(388, 303, 20);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT de la tabla `tabaco_formato_asso`
--
ALTER TABLE `tabaco_formato_asso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- Restricciones para tablas volcadas
--

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
