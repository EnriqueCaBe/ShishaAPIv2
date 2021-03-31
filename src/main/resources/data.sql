INSERT INTO users (id, username, email, password)
VALUES ('cd4fa027-36b6-4639-86b8-834fe83b2e4a', 'EnriqueCaBe', 'enriquecabe300@gmail.com',
        '{bcrypt}$2a$10$Hm0L1XIsrWDkeWNjbMUCmOhd7qRYJXeM4hQ1kOHrWVd1tMzqIpU3i');

INSERT INTO authorities (username, role)
VALUES ('EnriqueCaBe', 'ROLE_ADMIN');

--NAMELESS
insert into marca(name,pais,descripcion) values('Nameless','Alemania','Tabaco rubio');
insert into tabaco (name,descripcion,marca) values('Pablo','Lima y arándanos','Nameless');
insert into formato(gramos,precio,tabaco) values(200.0,12.90,'Pablo');
insert into formato(gramos,precio,tabaco) values(50.0,3.60,'Pablo');
insert into tabaco (name,descripcion,marca) values('Blacknana','Uva moscatel y menta','Nameless');
insert into formato(gramos,precio,tabaco) values(200.0,12.90,'Blacknana');
insert into formato(gramos,precio,tabaco) values(50.0,3.60,'Blacknana');

--Tangiers
insert into marca(name,pais,descripcion) values('Tangiers','USA','Tabaco negro');
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
insert into marca(name,pais,descripcion) values('Serbetli','Alemania','Tabaco rubio premium');
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
insert into marca(name,pais,descripcion) values('Revoshi','Turquia','Tabaco rubio');
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
insert into marca(name,pais,descripcion) values('Aloha','España','Tabaco rubio');
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





--Mixes
insert into mezcla(name) values('Ou mama');
insert into porcentaje(tabaco,porcentaje,mezcla) values('Pablo',50.0,'Ou mama');
insert into porcentaje(tabaco,porcentaje,mezcla) values('Blacknana',50.0,'Ou mama');

