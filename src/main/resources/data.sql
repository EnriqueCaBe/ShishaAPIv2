INSERT INTO users (id, username, email, password)
VALUES ('cd4fa027-36b6-4639-86b8-834fe83b2e4a', 'EnriqueCaBe', 'enriquecabe300@gmail.com',
        '{bcrypt}$2a$10$Hm0L1XIsrWDkeWNjbMUCmOhd7qRYJXeM4hQ1kOHrWVd1tMzqIpU3i');

INSERT INTO authorities (username, role)
VALUES ('EnriqueCaBe', 'ROLE_ADMIN');


--NAMELESS
insert into marca(name,pais,descripcion,imagen) values('Nameless','Alemania','Tabaco rubio','https://i.ibb.co/Jys8s36/nameless.png');
insert into tabaco (name,descripcion,marca) values('Pablo','Lima y arándanos','Nameless');
insert into formato(gramos,precio,tabaco) values(200.0,12.90,'Pablo');
insert into formato(gramos,precio,tabaco) values(50.0,3.60,'Pablo');
insert into tabaco (name,descripcion,marca) values('Blacknana','Uva moscatel y menta','Nameless');
insert into formato(gramos,precio,tabaco) values(200.0,12.90,'Blacknana');
insert into formato(gramos,precio,tabaco) values(50.0,3.60,'Blacknana');


--Tangiers
insert into marca(name,pais,descripcion,imagen) values('Tangiers','USA','Tabaco negro','https://i.ibb.co/LPWDd6j/tangiers.png');
insert into tabaco (name,descripcion,marca) values('C6 Pineapple','Piña','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C6 Pineapple');
insert into tabaco (name,descripcion,marca) values('C111 Ololiuqui','Cola y vainilla','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C111 Ololiuqui');
insert into tabaco (name,descripcion,marca) values('C16 Pink Grapefruit','Pomelo','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C16 Pink Grapefruit');
insert into tabaco (name,descripcion,marca) values('C27 Cocoa','Cacao','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C27 Cocoa');
insert into tabaco (name,descripcion,marca) values('C3 Strawberry','Fresa','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C3 Strawberry');
insert into tabaco (name,descripcion,marca) values('C34 Its like that one breakfast cereal','Cereales americanos de colores','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C34 Its like that one breakfast cereal');
insert into tabaco (name,descripcion,marca) values('C38 kashmir Peach','Melocotón con toques florales','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C38 kashmir Peach');
insert into tabaco (name,descripcion,marca) values('C4 Blitzsturm','Lavanda con mentol','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C4 Blitzsturm');
insert into tabaco (name,descripcion,marca) values('C5 Lemon Blossom','Limón con toques florales','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C5 Lemon Blossom');
insert into tabaco (name,descripcion,marca) values('C57 Sevilla Orange','Naranja dulce','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C57 Sevilla Orange');
insert into tabaco (name,descripcion,marca) values('C58 Welch Cream','Crema de whisky','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C58 Welch Cream');
insert into tabaco (name,descripcion,marca) values('C59 Blackberry','Mora','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C59 Blackberry');
insert into tabaco (name,descripcion,marca) values('C62 Strawberry Kiwi','Fresa y Kiwi','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C62 Strawberry Kiwi');
insert into tabaco (name,descripcion,marca) values('C74 Lemon Lime','Lima y limón','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C74 Lemon Lime');
insert into tabaco (name,descripcion,marca) values('C76 Apricot Spring Blend','Albaricoque floral','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C76 Apricot Spring Blend');
insert into tabaco (name,descripcion,marca) values('C77 Tropical Revenge','Piña, pera y naranja','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C77 Tropical Revenge');
insert into tabaco (name,descripcion,marca) values('C78 Horchata','Horchata','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C78 Horchata');
insert into tabaco (name,descripcion,marca) values('C9 Melon Blend','Melon y sandia','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C9 Melon Blend');
insert into tabaco (name,descripcion,marca) values('C90 Peach Iced Tea','Té helado de melocotón','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C90 Peach Iced Tea');
insert into tabaco (name,descripcion,marca) values('C92 Mimon','Limon y menta','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C92 Mimon');
insert into tabaco (name,descripcion,marca) values('C94 Maraschino Cherry','Frutas mixtas con énfasis de cereza','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C94 Maraschino Cherry');
insert into tabaco (name,descripcion,marca) values('C96 Cane Mint','Para muchos la mejor menta del mundo','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C96 Cane Mint');
insert into tabaco (name,descripcion,marca) values('C96a Cane Mint Vault','Fórmula inicial de Cane Mint','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C96a Cane Mint Vault');
insert into tabaco (name,descripcion,marca) values('C119 Kosmik','Dos manzanas','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C119 Kosmik');
insert into tabaco (name,descripcion,marca) values('C69 PassionFruit','Fruta de la pasión','Tangiers');
insert into formato(gramos,precio,tabaco) values(250.0,35.0,'C69 PassionFruit');


--Serbetli
insert into marca(name,pais,descripcion,imagen) values('Serbetli','Alemania','Tabaco rubio premium','https://i.ibb.co/cTzSKqY/serbetli.png');
insert into tabaco (name,descripcion,marca) values('Banastra','Banana y fresa','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Banastra');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Banastra');
insert into tabaco (name,descripcion,marca) values('Blueerry','Arándanos','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Blueerry');
insert into tabaco (name,descripcion,marca) values('Double Effect','Cola y limón','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Double Effect');
insert into tabaco (name,descripcion,marca) values('Elon','Melón','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Elon');
insert into tabaco (name,descripcion,marca) values('Green Flash','Menta','Serbetli');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Green Flash');
insert into tabaco (name,descripcion,marca) values('Ice Bird','Kiwi helado','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Ice Bird');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Ice Bird');
insert into tabaco (name,descripcion,marca) values('Ice Pin','Piña helada','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Ice Pin');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Ice Pin');
insert into tabaco (name,descripcion,marca) values('T-Ber','Frutos rojos tostados','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'T-Ber');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'T-Ber');
insert into tabaco (name,descripcion,marca) values('Hate 69','Mezcla de frutas heladas','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Hate 69');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Hate 69');
insert into tabaco (name,descripcion,marca) values('Blue Tropic','Curaçao','Serbetli');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Blue Tropic');
insert into tabaco (name,descripcion,marca) values('Emon Ke','Pastel de limón','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Emon Ke');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Emon Ke');
insert into tabaco (name,descripcion,marca) values('Grapic','Manzana verde helada','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Grapic');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Grapic');
insert into tabaco (name,descripcion,marca) values('Green Mix','Lima, manzana verde, kiwi y menta','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Green Mix');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Green Mix');
insert into tabaco (name,descripcion,marca) values('I Blueberry','Arándanos helados','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'I Blueberry');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'I Blueberry');
insert into tabaco (name,descripcion,marca) values('Icbdrumm','Mandarina helada','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Icbdrumm');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Icbdrumm');
insert into tabaco (name,descripcion,marca) values('Iceber','Frutas del bosque heladas','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Iceber');
insert into tabaco (name,descripcion,marca) values('Ime Spiced Pinch','Lima y melocotón a la parrilla','Serbetli');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Ime Spiced Pinch');
insert into tabaco (name,descripcion,marca) values('Imliciblerry','Lima, lichi y arándanos','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Imliciblerry');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Imliciblerry');
insert into tabaco (name,descripcion,marca) values('Istanbul Nights','Frambuesa, arándanos y fresa','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Istanbul Nights');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Istanbul Nights');
insert into tabaco (name,descripcion,marca) values('Rotana','Melón con nata y fresa','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Rotana');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Rotana');
insert into tabaco (name,descripcion,marca) values('Stra Shark','Batido de fresa','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Stra Shark');
insert into formato(gramos,precio,tabaco) values(50.0,2.95,'Stra Shark');
insert into tabaco (name,descripcion,marca) values('Duses','Pera fresca','Serbetli');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Duses');


--Revoshi
insert into marca(name,pais,descripcion,imagen) values('Revoshi','Turquia','Tabaco rubio','https://i.ibb.co/b69zGrb/revoshi.png');
insert into tabaco (name,descripcion,marca) values('Blck Grp','Uva negra','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Blck Grp');
insert into tabaco (name,descripcion,marca) values('D´App Strng','Dos manzanas intenso','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'D´App Strng');
insert into tabaco (name,descripcion,marca) values('Eskimo Cndy','Caramelos helados','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Eskimo Cndy');
insert into tabaco (name,descripcion,marca) values('Eskimo Lmn','Limón helado','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Eskimo Lmn');
insert into tabaco (name,descripcion,marca) values('Eskimo P´App','Piña helada','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Eskimo P´App');
insert into tabaco (name,descripcion,marca) values('Eskimo Wtrmln','Sandía helada','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Eskimo Wtrmln');
insert into tabaco (name,descripcion,marca) values('Free Spartacus','Mix de flor de saúco','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Free Spartacus');
insert into tabaco (name,descripcion,marca) values('Orng Mnt','Naranja helada','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Orng Mnt');
insert into tabaco (name,descripcion,marca) values('Ola Zapata','CocaCola con canela','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Ola Zapata');
insert into tabaco (name,descripcion,marca) values('Pancho Villa','Mix frutal con melón y limón','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Pancho Villa');
insert into tabaco (name,descripcion,marca) values('Vamos Ernesto','Chicle de canela','Revoshi');
insert into formato(gramos,precio,tabaco) values(50.0,3.30,'Vamos Ernesto');


--Aloha
insert into marca(name,pais,descripcion,imagen) values('Aloha','España','Tabaco rubio','https://i.ibb.co/9vqTK57/aloha.png');
insert into tabaco (name,descripcion,marca) values('Splash','Naranja picante, fresca y cremosa','Aloha');
insert into formato(gramos,precio,tabaco) values(100.0,7.50,'Splash');
insert into formato(gramos,precio,tabaco) values(200.0,13.50,'Splash');
insert into tabaco (name,descripcion,marca) values('Nazaré','Mezcla única de melón, sandía, fruta de la pasión, chicle y tres sabores adicionales','Aloha');
insert into formato(gramos,precio,tabaco) values(100.0,7.50,'Nazaré');
insert into formato(gramos,precio,tabaco) values(200.0,13.50,'Nazaré');
insert into tabaco (name,descripcion,marca) values('Atlantic','Fresco y refrescante caramelo de cereza','Aloha');
insert into formato(gramos,precio,tabaco) values(100.0,7.50,'Atlantic');
insert into formato(gramos,precio,tabaco) values(200.0,13.50,'Atlantic');
insert into tabaco (name,descripcion,marca) values('Pacific','Suave, aterciopelado y refrescante. Helado cremoso de frutos del bosque','Aloha');
insert into formato(gramos,precio,tabaco) values(100.0,7.50,'Pacific');
insert into formato(gramos,precio,tabaco) values(200.0,13.50,'Pacific');
insert into tabaco (name,descripcion,marca) values('T.Riko','Deliciosa té con leche, cacao y canela','Aloha');
insert into formato(gramos,precio,tabaco) values(100.0,7.50,'T.Riko');
insert into formato(gramos,precio,tabaco) values(200.0,13.50,'T.Riko');
insert into tabaco (name,descripcion,marca) values('Sparrow','Mezcal de piña y mango con efecto frío','Aloha');
insert into formato(gramos,precio,tabaco) values(100.0,7.50,'Sparrow');
insert into formato(gramos,precio,tabaco) values(200.0,13.50,'Sparrow');
insert into tabaco (name,descripcion,marca) values('Los Locos','Deliciosa y cremosa irish cream','Aloha');
insert into formato(gramos,precio,tabaco) values(100.0,7.50,'Los Locos');
insert into formato(gramos,precio,tabaco) values(200.0,13.50,'Los Locos');
insert into tabaco (name,descripcion,marca) values('Maverick','Limonada con hielo, refrescante, única e incomparable','Aloha');
insert into formato(gramos,precio,tabaco) values(100.0,7.50,'Maverick');
insert into formato(gramos,precio,tabaco) values(200.0,13.50,'Maverick');
insert into tabaco (name,descripcion,marca) values('Shaka Shaka','Menta dulce, penetrante y agradable. Adictiva.','Aloha');
insert into formato(gramos,precio,tabaco) values(100.0,7.50,'Shaka Shaka');
insert into formato(gramos,precio,tabaco) values(200.0,13.50,'Shaka Shaka');


--Darkside
insert into marca(name,pais,descripcion,imagen) values('Darkside','Rusia','Tabaco negro','https://i.ibb.co/1TpbsMG/darkside.png');
insert into tabaco (name,descripcion,marca) values('Darkside Hola','Cola con limón','Darkside');
insert into formato(gramos,precio,tabaco) values(30.0,3.85,'Darkside Hola');
insert into tabaco (name,descripcion,marca) values('I Granny','Manzana verde dulce','Darkside');
insert into formato(gramos,precio,tabaco) values(30.0,3.85,'I Granny');
insert into tabaco (name,descripcion,marca) values('LM Blast','Refrescante y agrio sabor de limón maduro','Darkside');
insert into formato(gramos,precio,tabaco) values(30.0,3.85,'LM Blast');
insert into tabaco (name,descripcion,marca) values('MG Assi','Batido con pulpa de mango','Darkside');
insert into formato(gramos,precio,tabaco) values(30.0,3.85,'MG Assi');
insert into tabaco (name,descripcion,marca) values('Supernova','Impresionante mentol frío','Darkside');
insert into formato(gramos,precio,tabaco) values(30.0,3.85,'Supernova');
insert into tabaco (name,descripcion,marca) values('Tear','Rico sabor de limonada dulce de pera','Darkside');
insert into formato(gramos,precio,tabaco) values(30.0,3.85,'Darkside Hola');


--Dozaj
insert into marca(name,pais,descripcion,imagen) values('Dozaj','Turquia','Tabaco rubio','');
insert into tabaco (name,descripcion,marca) values('90+','Limón y menta','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'90+');
insert into tabaco (name,descripcion,marca) values('Black Star','Maracuyá, chicle, melocotón y menta','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Black Star');
insert into tabaco (name,descripcion,marca) values('Blade','Mezcla de bayas, fruta del dragon y menta','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Blade');
insert into tabaco (name,descripcion,marca) values('Eternal','Puro de vainilla','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Eternal');
insert into tabaco (name,descripcion,marca) values('Land Of Fire','Vodka, café, licor, nata','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Land Of Fire');
insert into tabaco (name,descripcion,marca) values('Marshall','Brownie, naranja, menta','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Marshall');
insert into tabaco (name,descripcion,marca) values('Mito','Caramelo, canela, toque helado','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Mito');
insert into tabaco (name,descripcion,marca) values('Royal Style','Muffin de arándano','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Royal Style');
insert into tabaco (name,descripcion,marca) values('Carnival','Mezcla de frutas exóticas','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Carnival');
insert into formato(gramos,precio,tabaco) values(200.0,11.25,'Carnival');
insert into tabaco (name,descripcion,marca) values('Casablanca','Té especiado, jenjibre, nata y toque de canela','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Casablanca');
insert into formato(gramos,precio,tabaco) values(200.0,11.25,'Casablanca');
insert into tabaco (name,descripcion,marca) values('Cuba Dream','Exótic tropical fruits','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Cuba Dream');
insert into tabaco (name,descripcion,marca) values('Dead Sea','Coca cola con cereza helada','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Dead Sea');
insert into formato(gramos,precio,tabaco) values(200.0,11.25,'Dead Sea');
insert into tabaco (name,descripcion,marca) values('Jelly Bear','Osito de gominola','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Jelly Bear');
insert into tabaco (name,descripcion,marca) values('Rio Lady','Piña, melón, chicle y toque helado','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Rio Lady');
insert into tabaco (name,descripcion,marca) values('Sweet Night','Guayaba, melón, kiwi, lima y fruta nefelio (rambutan)','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Sweet Night');
insert into tabaco (name,descripcion,marca) values('Vip 44','Cactus, lima y pepino','Dozaj');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Vip 44');

--Dumanji
insert into marca(name,pais,descripcion,imagen) values('Dumanji','Francia','Tabaco rubio','');
insert into tabaco (name,descripcion,marca) values('Adam & Eve','Dos Manzanas','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Adam & Eve');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Adam & Eve');
insert into tabaco (name,descripcion,marca) values('Na3ne','Menta','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Na3ne');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Na3ne');
insert into tabaco (name,descripcion,marca) values('Cane Na3ne','Azúcar de caña y menta','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Cane Na3ne');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Cane Na3ne');
insert into tabaco (name,descripcion,marca) values('French Rivera','Chicle y melón','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'French Rivera');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'French Rivera');
insert into tabaco (name,descripcion,marca) values('Kush','Sabor CBD','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Kush');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Kush');
insert into tabaco (name,descripcion,marca) values('Kush Na3ne','Sabor CBD con menta','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Kush Na3ne');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Kush Na3ne');
insert into tabaco (name,descripcion,marca) values('Sun Beach','Kiwi, piña y melón','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Sun Beach');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Sun Beach');
insert into tabaco (name,descripcion,marca) values('Tsunami','Sandía, arándanos y menta','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Tsunami');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Tsunami');
insert into tabaco (name,descripcion,marca) values('Pink Kiss','Frutas exóticas dulces','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Pink Kiss');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Pink Kiss');
insert into tabaco (name,descripcion,marca) values('Heaven','Fruta tropical, melón y menta','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Heaven');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Heaven');
insert into tabaco (name,descripcion,marca) values('Bahamas','Piña, melón y frescor','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Bahamas');
insert into formato(gramos,precio,tabaco) values(200.0,11.50,'Bahamas');
insert into tabaco (name,descripcion,marca) values('Meridian','Sandía, melón y manzana','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Meridian');
insert into tabaco (name,descripcion,marca) values('Blue mix','Uvas, arándanos, piña y coco','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Blue mix');
insert into tabaco (name,descripcion,marca) values('Touty Red','Frutos rojos','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Touty Red');
insert into tabaco (name,descripcion,marca) values('Lover','Melón, bayas, especias y fresas','Dumanji');
insert into formato(gramos,precio,tabaco) values(50.0,3.00,'Lover');

insert into marca(name,pais,descripcion,imagen) values('Hookain','Alemania','Tabaco rubio','');
insert into tabaco (name,descripcion,marca) values('American Pei','Cremosa tarta de manzana a la americana coon toffee. Receta increiblemente deliciosa de la abuela.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'American Pei');
insert into tabaco (name,descripcion,marca) values('Mng Loco','Una combinación de diferentes tipos de mango, un toque de energía y nuestro nuevo y aún más fresco sabor a mentol.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Mng Loco');
insert into tabaco (name,descripcion,marca) values('Zenter Schox','El sabor más agrio del mundo a partir de aromas de lima y limón. Es tan agrio que te volverá loco. ','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Zenter Schox');
insert into tabaco (name,descripcion,marca) values('Laoz','Jugo dulce de cereza, afrutado e intenso combinado con arándanos. Añadimos mentol para hacerlo más fresco. Sabor afrutado y fresco. ','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Laoz');
insert into tabaco (name,descripcion,marca) values('Original Vanta Zotic','Batido afrutado de maracuyá, durazno y zumo de naranja, recuerda a un limonada muy famosa con un toque exótico.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Original Vanta Zotic');
insert into tabaco (name,descripcion,marca) values('Cotton Candy Craem','Algodón de azúcar, sandía, mango y arándanos.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Cotton Candy Craem');
insert into formato(gramos,precio,tabaco) values(200.0,13.80,'Cotton Candy Craem');
insert into tabaco (name,descripcion,marca) values('Orogina','Naranja y mandarina combinadas con un toque de White Caek.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Orogina');
insert into tabaco (name,descripcion,marca) values('Eyez Kalt','Muy frío. Caramelo de menta refinado con plátano y lima.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Eyez Kalt');
insert into tabaco (name,descripcion,marca) values('Vantanaz','El fuerte sabor a piña se mezcla con una combinación de mango, pomelo y zumo de durazno. Idéntico a Vanta Piña.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Vantanaz');
insert into tabaco (name,descripcion,marca) values('Pic Zkittlez','Refrescante té helado de melocotón salvaje y albaricoque. Mezclado con menta y unos ingredientes especiales que no te contamos.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Pic Zkittlez');
insert into tabaco (name,descripcion,marca) values('Ch3ri Zkittlez','Sabor intenso a cereza y fruta de dragón. Mejor de lo que te puedas imaginar.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Ch3ri Zkittlez');
insert into tabaco (name,descripcion,marca) values('Sm!nt','Experimenta el sabor refrescante de nuestro caramelo de menta a la tic tac. Fresco y dulce.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Sm!nt');
insert into tabaco (name,descripcion,marca) values('Fellatio','Batido de sandía, melón dulce, maracuyá y frutas el bosque.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Fellatio');
insert into tabaco (name,descripcion,marca) values('Green Lean','La mejor lima que jamás hayas probado, convertida en zumo de lima. Siente el sabor y el frescor de miles de limas que explotarán en tu cazoleta.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Green Lean');
insert into formato(gramos,precio,tabaco) values(200.0,13.80,'Green Lean');
insert into tabaco (name,descripcion,marca) values('Kaffa Yayo','El mejor postre con sabor a coco. Coco de Hawai cubierto por una fina crema de almendras con vainilla bourbon.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Kaffa Yayo');
insert into tabaco (name,descripcion,marca) values('Bubblenciaga','El típico chicle americano en su momento de mayor sabor. Dulce y duradero hasta dejarte boquiabierto.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Bubblenciaga');
insert into formato(gramos,precio,tabaco) values(200.0,13.80,'Bubblenciaga');
insert into tabaco (name,descripcion,marca) values('Cactopus','Dulce y cremoso al mismo tiempo. El sabor dulce a cactus con la fresa y vainilla hacen un trio delicioso e intenso. ','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Cactopus');
insert into tabaco (name,descripcion,marca) values('Lemenciaga','Un sabor refrescante de limón y esencia de té verde con el indispensable toque de menta fresca.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Lemenciaga');
insert into formato(gramos,precio,tabaco) values(200.0,13.80,'Lemenciaga');
insert into tabaco (name,descripcion,marca) values('Punani','Jugoso, jugosísimo, mango y maracuyá fusionado con naranja y piña.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Punani');
insert into tabaco (name,descripcion,marca) values('White Caek','El más sabroso! tarta de queso con un toque de caramelo.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'White Caek');
insert into formato(gramos,precio,tabaco) values(200.0,13.80,'White Caek');
insert into tabaco (name,descripcion,marca) values('Big Black Barries','Intenso sabor a uva moscatel con esencia de mentol..','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Big Black Barries');
insert into formato(gramos,precio,tabaco) values(200.0,13.80,'Big Black Barries');
insert into tabaco (name,descripcion,marca) values('Soleiro Spliff','Una explosión de sabores. Marakuyá, caramelo de naranja y helado de vainilla. ','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Soleiro Spliff');
insert into tabaco (name,descripcion,marca) values('Kivi King','Kiwi afrutado intenso sobre una cama de lima. Agradablemente fresco con un toque de menta y mentol.','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'Kivi King');



/*insert into tabaco (name,descripcion,marca) values('','','Hookain');
insert into formato(gramos,precio,tabaco) values(50.0,3.95,'');
insert into formato(gramos,precio,tabaco) values(200.0,13.80,'');*/

--Mixes
insert into mezcla(id,name) values('cd4fa027-36b6-4639-86b8-83wretw3b2e4a','Ou mama');
insert into porcentaje(tabaco,porcentaje,mezcla) values('Pablo',50.0,'cd4fa027-36b6-4639-86b8-83wretw3b2e4a');
insert into porcentaje(tabaco,porcentaje,mezcla) values('Blacknana',50.0,'cd4fa027-36b6-4639-86b8-83wretw3b2e4a');

