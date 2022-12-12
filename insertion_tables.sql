-- trigger auto maj lib_nationalites

Create or replace function trig_UpperLib()
returns trigger as $$

begin

new.lib_nationalite = upper(new.lib_nationalite);
return new;

end;
$$ language plpgsql;

CREATE TRIGGER trig_UpperLib
BEFORE INSERT ON Nationalites
FOR EACH ROW
EXECUTE PROCEDURE trig_UpperLib();


-- id nationalité -- lib nationalité --

INSERT INTO Nationalites VALUES(1,'rus');  --team spirit -- Outsiders --
INSERT INTO Nationalites VALUES(2,'ukr'); -- Natus Vincere (navi) -- 
INSERT INTO Nationalites VALUES(3,'fin'); -- ENCE -- 
INSERT INTO Nationalites VALUES(4,'sue'); -- Ninjas in Pyjamas -- 
INSERT INTO Nationalites VALUES(5,'usa'); -- could9 -- faze Clan --
INSERT INTO Nationalites VALUES(6,'den'); -- Heroic -- Copenhagen Flames-- 
INSERT INTO Nationalites VALUES(7,'bra'); -- imperial esports -- furia --
INSERT INTO Nationalites VALUES(8,'esp'); -- G2 Esport --
INSERT INTO Nationalites VALUES(9,'fra'); -- Team Vitality --
INSERT INTO Nationalites VALUES(10,'ger'); -- BIG --
INSERT INTO Nationalites VALUES(11,'kos'); -- bad new eagle --
INSERT INTO Nationalites VALUES(12,'ned'); -- team liquid --

-- id stat -- kill --  death --  assist --

INSERT INTO Stats VALUES( 0 , 2990 , 1513 , 2875 );
INSERT INTO Stats VALUES( 1 , 2337 , 480 , 1920 );
INSERT INTO Stats VALUES( 2 , 1379 , 536 , 1600 );
INSERT INTO Stats VALUES( 3 , 507 , 1023 , 143 );
INSERT INTO Stats VALUES( 4 , 2526 , 1856 , 771 );
INSERT INTO Stats VALUES( 5 , 235 , 1104 , 590 );
INSERT INTO Stats VALUES( 6 , 926 , 551 , 2873 );
INSERT INTO Stats VALUES( 7 , 2640 , 1159 , 2226 );
INSERT INTO Stats VALUES( 8 , 2093 , 158 , 1174 );
INSERT INTO Stats VALUES( 9 , 1857 , 2831 , 1135 );
INSERT INTO Stats VALUES( 10 , 1943 , 1060 , 568 );
INSERT INTO Stats VALUES( 11 , 1958 , 363 , 677 );
INSERT INTO Stats VALUES( 12 , 657 , 2286 , 1984 );
INSERT INTO Stats VALUES( 13 , 524 , 2368 , 108 );
INSERT INTO Stats VALUES( 14 , 204 , 597 , 1241 );
INSERT INTO Stats VALUES( 15 , 1099 , 380 , 892 );
INSERT INTO Stats VALUES( 16 , 2769 , 1103 , 1382 );
INSERT INTO Stats VALUES( 17 , 356 , 2330 , 1312 );
INSERT INTO Stats VALUES( 18 , 507 , 533 , 434 );
INSERT INTO Stats VALUES( 19 , 2029 , 657 , 2142 );
INSERT INTO Stats VALUES( 20 , 2505 , 848 , 25 );
INSERT INTO Stats VALUES( 21 , 2163 , 1300 , 165 );
INSERT INTO Stats VALUES( 22 , 431 , 2977 , 2574 );
INSERT INTO Stats VALUES( 23 , 2580 , 2633 , 793 );
INSERT INTO Stats VALUES( 24 , 1855 , 2532 , 468 );
INSERT INTO Stats VALUES( 25 , 2561 , 1247 , 226 );
INSERT INTO Stats VALUES( 26 , 913 , 309 , 452 );
INSERT INTO Stats VALUES( 27 , 505 , 1199 , 679 );
INSERT INTO Stats VALUES( 28 , 1821 , 511 , 1690 );
INSERT INTO Stats VALUES( 29 , 1701 , 1026 , 1028 );
INSERT INTO Stats VALUES( 30 , 2089 , 1027 , 662 );
INSERT INTO Stats VALUES( 31 , 2861 , 2239 , 1695 );
INSERT INTO Stats VALUES( 32 , 1340 , 1724 , 2462 );
INSERT INTO Stats VALUES( 33 , 2035 , 1207 , 2685 );
INSERT INTO Stats VALUES( 34 , 17 , 2619 , 2169 );
INSERT INTO Stats VALUES( 35 , 1819 , 509 , 440 );
INSERT INTO Stats VALUES( 36 , 698 , 602 , 1011 );
INSERT INTO Stats VALUES( 37 , 436 , 782 , 1025 );
INSERT INTO Stats VALUES( 38 , 2418 , 1505 , 2696 );
INSERT INTO Stats VALUES( 39 , 2243 , 782 , 441 );
INSERT INTO Stats VALUES( 40 , 2163 , 251 , 1916 );
INSERT INTO Stats VALUES( 41 , 90 , 1640 , 1714 );
INSERT INTO Stats VALUES( 42 , 1702 , 2069 , 2670 );
INSERT INTO Stats VALUES( 43 , 860 , 2197 , 1088 );
INSERT INTO Stats VALUES( 44 , 2870 , 852 , 633 );
INSERT INTO Stats VALUES( 45 , 2285 , 2795 , 1070 );
INSERT INTO Stats VALUES( 46 , 1730 , 768 , 2874 );
INSERT INTO Stats VALUES( 47 , 99 , 286 , 1084 );
INSERT INTO Stats VALUES( 48 , 1196 , 2889 , 705 );
INSERT INTO Stats VALUES( 49 , 1268 , 2593 , 1796 );
INSERT INTO Stats VALUES( 50 , 2864 , 1523 , 402 );
INSERT INTO Stats VALUES( 51 , 1227 , 283 , 1341 );
INSERT INTO Stats VALUES( 52 , 1334 , 1572 , 249 );
INSERT INTO Stats VALUES( 53 , 2546 , 602 , 115 );
INSERT INTO Stats VALUES( 54 , 1701 , 1196 , 1654 );
INSERT INTO Stats VALUES( 55 , 2126 , 1543 , 457 );
INSERT INTO Stats VALUES( 56 , 1506 , 564 , 2874 );
INSERT INTO Stats VALUES( 57 , 1070 , 1235 , 2165 );
INSERT INTO Stats VALUES( 58 , 2007 , 2956 , 154 );
INSERT INTO Stats VALUES( 59 , 304 , 1452 , 2451 );
INSERT INTO Stats VALUES( 60 , 1702 , 256 , 1975 );
INSERT INTO Stats VALUES( 61 , 2686 , 2595 , 456 );
INSERT INTO Stats VALUES( 62 , 2874 , 2865 , 943 );
INSERT INTO Stats VALUES( 63 , 1467 , 2018 , 1279 );
INSERT INTO Stats VALUES( 64 , 1657 , 2897 , 2514 );
INSERT INTO Stats VALUES( 65 , 579 , 2838 , 950 );
INSERT INTO Stats VALUES( 66 , 1245 , 1506 , 668 );
INSERT INTO Stats VALUES( 67 , 1926 , 2113 , 879 );
INSERT INTO Stats VALUES( 68 , 1169 , 2633 , 1460 );
INSERT INTO Stats VALUES( 69 , 733 , 1947 , 960 );
INSERT INTO Stats VALUES( 70 , 917 , 716 , 359 );
INSERT INTO Stats VALUES( 71 , 2126 , 234 , 1265 );
INSERT INTO Stats VALUES( 72 , 304 , 2944 , 115 );
INSERT INTO Stats VALUES( 73 , 425 , 1913 , 1889 );
INSERT INTO Stats VALUES( 74 , 2424 , 2109 , 2007 );
INSERT INTO Stats VALUES( 75 , 2306 , 650 , 1028 );
INSERT INTO Stats VALUES( 76 , 2238 , 2449 , 2765 );
INSERT INTO Stats VALUES( 77 , 2686 , 327 , 1313 );
INSERT INTO Stats VALUES( 78 , 2373 , 540 , 2882 );
INSERT INTO Stats VALUES( 79 , 1104 , 1597 , 1174 );
INSERT INTO Stats VALUES( 80 , 2312 , 1263 , 2047 );


-- id equipe -- nom d'equipe --

INSERT INTO Equipes VALUES(1,'Team Spirit');
INSERT INTO Equipes VALUES(2,'Natus Vincere'); 
INSERT INTO Equipes VALUES(3,'ENCE'); 
INSERT INTO Equipes VALUES(4,'Ninjas in Pyjamas'); 
INSERT INTO Equipes VALUES(5,'FaZe Clan'); 
INSERT INTO Equipes VALUES(6,'Copenhagen Flames'); 
INSERT INTO Equipes VALUES(7,'Heroic'); 
INSERT INTO Equipes VALUES(8,'FURIA Esports'); 
INSERT INTO Equipes VALUES(9,'G2 Esports'); 
INSERT INTO Equipes VALUES(10,'Team Vitality'); 
INSERT INTO Equipes VALUES(11,'Imperial Esports'); 
INSERT INTO Equipes VALUES(12,'BIG');
INSERT INTO Equipes VALUES(13,'Cloud9');
INSERT INTO Equipes VALUES(14,'Outsiders'); 
INSERT INTO Equipes VALUES(15,'Bad News Eagles');
INSERT INTO Equipes VALUES(16,'Team Liquid');

-- trigger auto maj nom commentateur

Create or replace function trig_UpperNomCommentateur()
returns trigger as $$

begin

new.nom = upper(new.nom);
return new;

end;
$$ language plpgsql;

CREATE TRIGGER trig_UpperNomCommentateur
BEFORE INSERT ON Commentateurs
FOR EACH ROW
EXECUTE PROCEDURE trig_UpperNomCommentateur();

-- id comment -- nom -- prenom --

INSERT INTO Commentateurs VALUES(1,'Matthew','Stott');
INSERT INTO Commentateurs VALUES(2,'Jamie','Stewart');
INSERT INTO Commentateurs VALUES(3,'Kevin','Pellegrino');
INSERT INTO Commentateurs VALUES(4,'Stuart','Saw');
INSERT INTO Commentateurs VALUES(5,'Leigh','Smith');
INSERT INTO Commentateurs VALUES(6,'Michael','Cassidy');
INSERT INTO Commentateurs VALUES(7,'Alex','Ellenberg');
INSERT INTO Commentateurs VALUES(8,'César','Santcovsky');


-- trigger auto maj nom des maps

Create or replace function trig_UpperNomMaps()
returns trigger as $$

begin

new.nom_map = upper(new.nom_map);
return new;

end;
$$ language plpgsql;

CREATE TRIGGER trig_UpperNomMaps
BEFORE INSERT ON Maps
FOR EACH ROW
EXECUTE PROCEDURE trig_UpperNomMaps();


-- id map -- nom map --

INSERT INTO Maps VALUES(1,'Dust 2');
INSERT INTO Maps VALUES(2,'Mirage');
INSERT INTO Maps VALUES(3,'Inferno');
INSERT INTO Maps VALUES(4,'Nuke');
INSERT INTO Maps VALUES(5,'Overpass');
INSERT INTO Maps VALUES(6,'Cache');
INSERT INTO Maps VALUES(7,'Vertigo');
INSERT INTO Maps VALUES(8,'Ancient');
INSERT INTO Maps VALUES(9,'Train');

-- id match -- id commentateur -- id map -- scores --

INSERT INTO Matchs VALUES(1,7,1,'16/19');
INSERT INTO Matchs VALUES(2,5,7,'16/8');
INSERT INTO Matchs VALUES(3,4,3,'16/5');
INSERT INTO Matchs VALUES(4,1,9,'22/19');
INSERT INTO Matchs VALUES(5,3,1,'16/13');
INSERT INTO Matchs VALUES(6,8,2,'16/12');
INSERT INTO Matchs VALUES(7,2,3,'16/13');
INSERT INTO Matchs VALUES(8,7,6,'16/2');
INSERT INTO Matchs VALUES(9,6,7,'16/12');
INSERT INTO Matchs VALUES(10,8,5,'16/10');
INSERT INTO Matchs VALUES(11,4,4,'16/12');
INSERT INTO Matchs VALUES(12,2,3,'16/8');
INSERT INTO Matchs VALUES(13,6,1,'16/13');
INSERT INTO Matchs VALUES(14,7,1,'16/7');
INSERT INTO Matchs VALUES(15,1,3,'19/16');


-- id equipe -- id equipe 1 -- id equipe 2 -- id match -- date --

INSERT INTO Jouer_match VALUES(1,1,9,1,'2022-12-08');
INSERT INTO Jouer_match VALUES(8,8,10,2,'2022-12-08');
INSERT INTO Jouer_match VALUES(5,5,11,3,'2022-12-08');
INSERT INTO Jouer_match VALUES(4,4,12,4,'2022-12-08');
INSERT INTO Jouer_match VALUES(3,3,13,5,'2022-12-08');
INSERT INTO Jouer_match VALUES(6,6,14,6,'2022-12-08');
INSERT INTO Jouer_match VALUES(7,7,16,7,'2022-12-08');
INSERT INTO Jouer_match VALUES(2,2,15,8,'2022-12-08');
INSERT INTO Jouer_match VALUES(1,1,8,9,'2022-12-08');
INSERT INTO Jouer_match VALUES(5,5,4,10,'2022-12-08');
INSERT INTO Jouer_match VALUES(3,3,6,11,'2022-12-08');
INSERT INTO Jouer_match VALUES(7,7,2,12,'2022-12-08');
INSERT INTO Jouer_match VALUES(1,1,5,13,'2022-12-08');
INSERT INTO Jouer_match VALUES(3,3,2,14,'2022-12-08');
INSERT INTO Jouer_match VALUES(5,5,2,15,'2022-12-08');

-- trigger auto maj nom Joueurs

Create or replace function trig_UpperNomJoueurs()
returns trigger as $$

begin

new.nom = upper(new.nom);
return new;

end;
$$ language plpgsql;

CREATE TRIGGER trig_UpperNomJoueurs
BEFORE INSERT ON Joueurs
FOR EACH ROW
EXECUTE PROCEDURE trig_UpperNomJoueurs();

-- id personne -- id equipe -- date join -- id stat -- id nationalité -- nom -- prenom -- pseudo -- age --

-- team spirit
INSERT INTO Joueurs VALUES(1,1,'2019-03-03',1,1,'chopper','Vishnyakov','Leonid',25);
INSERT INTO Joueurs VALUES(2,1,'2019-09-26',2,1,'magixx','Vorobyev','Boris',19);
INSERT INTO Joueurs VALUES(3,1,'2022-02-06',3,1,'Patsi','Isyanov','Robert',19);
INSERT INTO Joueurs VALUES(4,1,'2022-02-06',4,1,'s1ren','Ogloblin','Pavel',20);
INSERT INTO Joueurs VALUES(5,1,'2022-06-21',5,1,'w0nderful','Zhdanov','Ihor',17);

-- navi 
INSERT INTO Joueurs VALUES(6,2,'2016-08-04',6,2,'s1mple','Oleksandr','Kostyliev	',25);
INSERT INTO Joueurs VALUES(7,2,'2017-11-06',7,2,'electroNic','Sharipov','Denis',24);
INSERT INTO Joueurs VALUES(8,2,'2020-01-24',8,2,'Perfecto','Zalutskiy','Ilya',23);
INSERT INTO Joueurs VALUES(9,2,'2020-12-20',9,2,'b1t','Valerii','Vakhovskyi',19);
INSERT INTO Joueurs VALUES(10,2,'2022-06-03',10,2,'sdy','Orudzhev','Viktor',25);

-- ence 
INSERT INTO Joueurs VALUES(11,3,'2021-01-21',11,3,'Snappi','Pfeiffer','Marco',32);
INSERT INTO Joueurs VALUES(12,3,'2021-01-21',12,3,'Dycha','Dycha','Paweł',25);
INSERT INTO Joueurs VALUES(13,3,'2022-01-21',13,3,'maden','Bošković','Pavle',24);
INSERT INTO Joueurs VALUES(14,3,'2022-08-20',14,3,'SunPayus','Garcia','Alvaro',24);
INSERT INTO Joueurs VALUES(15,3,'2022-08-20',15,3,'valde','Vangså','Valdemar',27);

-- ninjas in pyjamas
INSERT INTO Joueurs VALUES(16,4,'2017-06-12',16,4,'REZ','Sterner','Fredrik',24);
INSERT INTO Joueurs VALUES(17,4,'2020-05-19',17,4,'hampus','Poser','Hampus',24);
INSERT INTO Joueurs VALUES(18,4,'2021-11-17',18,4,'es3tag','Hansen','Patrick',27);
INSERT INTO Joueurs VALUES(19,4,'2022-03-22',19,4,'Brollan','Brolin','Ludvig',20);
INSERT INTO Joueurs VALUES(20,4,'2022-09-08',20,4,'Aleksib','Virolainen','Aleksi',25);

-- faze clan 
INSERT INTO Joueurs VALUES(21,5,'2016-01-20',21,5,'rain','Nygaard','Håvard',28);
INSERT INTO Joueurs VALUES(22,5,'2019-09-26',22,5,'broky','Saukants','Helvijs',21);
INSERT INTO Joueurs VALUES(23,5,'2021-01-30',23,5,'Twistzz','Van Dulken','Russel',23);
INSERT INTO Joueurs VALUES(24,5,'2021-02-15',24,5,'karrigan','Andersen','Finn',32);
INSERT INTO Joueurs VALUES(25,5,'2022-01-03',25,5,'ropz','Kool','Robin',22);

-- flames
INSERT INTO Joueurs VALUES(26,6,'2022-08-13',26,6,'birdfromsky','Due Frederiksen','Thomas',29);
INSERT INTO Joueurs VALUES(27,6,'2022-08-13',27,6,'regali','Harjău','Iulian',20);
INSERT INTO Joueurs VALUES(28,6,'2022-08-13',28,6,'raalz','Steensborg','Rasmus',27);
INSERT INTO Joueurs VALUES(29,6,'2022-08-13',29,6,'TMB','Bundsbæk','Thomas',20);
INSERT INTO Joueurs VALUES(30,6,'2022-08-13',30,6,'b0RUP','Borup','Johannes',23);

-- heroic
INSERT INTO Joueurs VALUES(31,7,'2020-04-05',31,6,'stavn','Lund','Martin',20);
INSERT INTO Joueurs VALUES(32,7,'2020-04-05',32,6,'cadiaN','Møller','Casper',27);
INSERT INTO Joueurs VALUES(33,7,'2020-04-08',33,6,'TeSeS','Madsen','René',21);
INSERT INTO Joueurs VALUES(34,7,'2021-02-26',34,6,'sjuush','Beck','Rasmus',23);
INSERT INTO Joueurs VALUES(35,7,'2022-06-21',35,6,'Jabbi','Nygaard','Jakob',19);

-- furia clan 
INSERT INTO Joueurs VALUES(36,8,'2017-11-08',36,7,'yuurih','Boian','Yuri',22);
INSERT INTO Joueurs VALUES(37,8,'2018-02-06',37,7,'arT','Piovezan','Andrei',26);
INSERT INTO Joueurs VALUES(38,8,'2018-02-06',38,7,'KSCERATO','Cerato','Kaike',23);
INSERT INTO Joueurs VALUES(39,8,'2021-08-23',39,7,'drop','Abreu','André',18);
INSERT INTO Joueurs VALUES(40,8,'2022-01-06',40,7,'saffee','Costa','Rafael',27);

-- g2
INSERT INTO Joueurs VALUES(41,9,'2019-09-30',41,8,'huNter-','Kovač','Nemanja',26);
INSERT INTO Joueurs VALUES(42,9,'2020-10-28',42,8,'NiKo','Kovač','Nikola',25);
INSERT INTO Joueurs VALUES(43,9,'2022-01-03',43,8,'m0NESY','Osipov','Ilya',17);
INSERT INTO Joueurs VALUES(44,9,'2022-08-16',44,8,'jks','Savage','Justin',26);
INSERT INTO Joueurs VALUES(45,9,'2022-08-16',45,8,'HooXi','Nielsen','Rasmus',27);

-- vita 
INSERT INTO Joueurs VALUES(46,10,'2018-10-08',46,9,'apEX-','Madesclaire','Dan',29);
INSERT INTO Joueurs VALUES(47,10,'2018-10-08',47,9,'ZywOo','Herbaut','Mathieu',22);
INSERT INTO Joueurs VALUES(48,10,'2022-01-05',48,9,'dupreeh','Rasmussen','Peter',29);
INSERT INTO Joueurs VALUES(49,10,'2022-01-05',49,9,'Magisk','Reif','Emil',24);
INSERT INTO Joueurs VALUES(50,10,'2022-08-15',50,9,'Spinx','Giladi','Lotan',22);

-- imperial team 
INSERT INTO Joueurs VALUES(51,11,'2022-02-18',51,7,'FalleN','Toledo','Gabriel',31);
INSERT INTO Joueurs VALUES(52,11,'2022-02-18',52,7,'fer','Alvarenga','Fernando',31);
INSERT INTO Joueurs VALUES(53,11,'2022-02-18',53,7,'boltz','Prass','Ricardo',25);
INSERT INTO Joueurs VALUES(54,11,'2022-02-18',54,7,'VINI','Figueiredo','Vinicius',23);
INSERT INTO Joueurs VALUES(55,11,'2022-08-22',55,7,'chelo','Cespedes','Marcelo',24);

-- big 
INSERT INTO Joueurs VALUES(56,12,'2017-01-02',56,10,'tabseN','Wodarz','Johannes',27);
INSERT INTO Joueurs VALUES(57,12,'2020-01-01',57,10,'syrsoN','Rische','Florian',26);
INSERT INTO Joueurs VALUES(58,12,'2021-12-27',58,10,'faveN','Baumann','Josef',22);
INSERT INTO Joueurs VALUES(59,12,'2022-03-19',59,10,'Krimbo','Moussa','Karim',20);
INSERT INTO Joueurs VALUES(60,12,'2022-08-09',60,10,'k1to','Gruhne','Nils',24);

-- could9
INSERT INTO Joueurs VALUES(61,13,'2022-04-24',61,5,'nafany','Gorshkov','Vladislav',21);
INSERT INTO Joueurs VALUES(62,13,'2022-04-24',62,5,'sh1ro','Sokolov','Dmitriy',21);
INSERT INTO Joueurs VALUES(63,13,'2022-04-24',63,5,'interz','Yakushin','Timofey',22);
INSERT INTO Joueurs VALUES(64,13,'2022-04-24',64,5,'Ax1Le','Rykhtorov','Sergey',20);
INSERT INTO Joueurs VALUES(65,13,'2022-04-24',65,5,'HObbit','Hasenov','Abai',28);

-- outsider 
INSERT INTO Joueurs VALUES(66,14,'2022-03-04',66,1,'Qikert','Golubev','Aleksei',23);
INSERT INTO Joueurs VALUES(67,14,'2022-03-04',67,1,'Jame','Ali','Dzhami',24);
INSERT INTO Joueurs VALUES(68,14,'2022-03-04',68,1,'FL1T','Lebedev','Evgeniy',21);
INSERT INTO Joueurs VALUES(69,14,'2022-05-31',69,1,'n0rb3r7','Daniyelyan','David',21);
INSERT INTO Joueurs VALUES(70,14,'2022-05-31',70,1,'fame','Bolyshev','Pyotr',19);

-- bad news eagles 
INSERT INTO Joueurs VALUES(71,15,'2022-02-05',71,11,'SENER1','Mahmuti','Sener',25);
INSERT INTO Joueurs VALUES(72,15,'2022-02-05',72,11,'gxx-','Kolgeci','Genc',23);
INSERT INTO Joueurs VALUES(73,15,'2022-02-05',73,11,'juanflatroo','Halimi','Flatron',25);
INSERT INTO Joueurs VALUES(74,15,'2022-02-05',74,11,'sinnopsyy','Budeci','Dionis',27);
INSERT INTO Joueurs VALUES(75,15,'2022-02-05',75,11,'rigoN','Gashi','Rigon',23);

-- team liquid 
INSERT INTO Joueurs VALUES(76,16,'2015-03-22',76,12,'EliGE','Jablonowski','Jonathan',25);
INSERT INTO Joueurs VALUES(77,16,'2018-02-05',77,12,'NAF','Markovic','Keith',23);
INSERT INTO Joueurs VALUES(78,16,'2021-12-27',78,12,'oSee','Ohm','Joshua',25);
INSERT INTO Joueurs VALUES(79,16,'2022-01-15',79,12,'nitr0','Cannella','Nicholas',27);
INSERT INTO Joueurs VALUES(80,16,'2022-10-18',80,12,'YEKINDAR','Gaļinskis','Mareks',23);

