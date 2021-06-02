-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2021 a las 18:55:58
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  ADD PRIMARY KEY (`name_tabaco`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `marca` (`marca`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tabaco`
--
ALTER TABLE `tabaco`
  ADD CONSTRAINT `tabaco_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `marca` (`NAME`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
