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

--id personne--id equipe--date join--id stat--id nationalité--nom--prenom--pseudo--age--

INSERT INTO Joueurs VALUES(1,1,'2019-03-03',1,1,'Leonid','Vishnyakov','chopper',25);
INSERT INTO Joueurs VALUES(2,1,'2019-09-26',2,1,'Boris','Vorobyev','magixx',19);
INSERT INTO Joueurs VALUES(3,1,'2022-02-06',3,1,'Robert','Isyanov','Patsi',19);
INSERT INTO Joueurs VALUES(4,1,'2022-02-06',4,1,'Pavel','Ogloblin','s1ren',20);
INSERT INTO Joueurs VALUES(5,1,'2022-06-21',5,1,'Ihor','Zhdanov','w0nderful	',17);

INSERT INTO Joueurs VALUES(6,2,'2016-08-04',6,2,'s1mple','Oleksandr','Kostyliev	',25);
INSERT INTO Joueurs VALUES(7,2,'2017-11-06',7,2,'electroNic','Sharipov','Denis',24);
INSERT INTO Joueurs VALUES(8,2,'2020-01-24',8,2,'Perfecto','Zalutskiy','Ilya',23);
INSERT INTO Joueurs VALUES(9,2,'2020-12-20',9,2,'b1t','Valerii','Vakhovskyi',19);
INSERT INTO Joueurs VALUES(10,2,'2020-12-20',10,2,'b1t','Valerii','Vakhovskyi',19);




-- id stat -- kill --  death --  assist --

INSERT INTO Stats VALUES(1, 2550, 256, 546);

-- id match -- id commentateur -- id map -- scores --

INSERT INTO Matchs VALUES(1,1,1,'16/5');

-- id map -- nom map --

INSERT INTO Maps VALUES(1,'Dust 2');

-- id comment -- nom -- prenom --

INSERT INTO Commentateurs VALUES(1,'test','test');

-- id equipe -- id equipe 1 -- id equipe 2 -- id match -- date --

INSERT INTO Jouer_match VALUES(1,1,5,1,'2022-12-08');
















































