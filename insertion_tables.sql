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

-- id personne -- id equipe -- date join -- id stat -- id nationalité -- nom -- prenom -- pseudo -- age --

INSERT INTO Joueurs VALUES(1,1,'2019-03-03',1,1,'Leonid','Vishnyakov','chopper',25);
INSERT INTO Joueurs VALUES(2,1,'2019-09-26',2,1,'Boris','Vorobyev','magixx',19);
INSERT INTO Joueurs VALUES(3,1,'2022-02-06',3,1,'Robert','Isyanov','Patsi',19);
INSERT INTO Joueurs VALUES(4,1,'2022-02-06',4,1,'Pavel','Ogloblin','s1ren',20);
INSERT INTO Joueurs VALUES(5,1,'2022-06-21',5,1,'Ihor','Zhdanov','w0nderful	',17);

INSERT INTO Joueurs VALUES(6,2,'2016-08-04',6,2,'s1mple','Oleksandr','Kostyliev	',25);
INSERT INTO Joueurs VALUES(7,2,'2017-11-06',7,2,'electroNic','Sharipov','Denis',24);
INSERT INTO Joueurs VALUES(8,2,'2020-01-24',8,2,'Perfecto','Zalutskiy','Ilya',23);
INSERT INTO Joueurs VALUES(9,2,'2020-12-20',9,2,'b1t','Valerii','Vakhovskyi',19);
INSERT INTO Joueurs VALUES(10,2,'2022-06-03',10,2,'sdy','Orudzhev','Viktor',25);

INSERT INTO Joueurs VALUES(11,3,'2021-01-21',11,3,'Snappi','Pfeiffer','Marco',32);
INSERT INTO Joueurs VALUES(12,3,'2021-01-21',12,3,'Dycha','Dycha','Paweł',25);
INSERT INTO Joueurs VALUES(13,3,'2022-01-21',13,3,'maden','Bošković','Pavle',24);
INSERT INTO Joueurs VALUES(14,3,'2022-08-20',14,3,'SunPayus','Garcia','Alvaro',24);
INSERT INTO Joueurs VALUES(15,3,'2022-08-20',15,3,'valde','Vangså','Valdemar',27);

INSERT INTO Joueurs VALUES(16,4,'2017-06-12',16,4,'REZ','Sterner','Fredrik',24);
INSERT INTO Joueurs VALUES(17,4,'2020-05-19',17,4,'hampus','Poser','Hampus',24);
INSERT INTO Joueurs VALUES(18,4,'2021-11-17',18,4,'es3tag','Hansen','Patrick',27);
INSERT INTO Joueurs VALUES(19,4,'2022-03-22',19,4,'Brollan','Brolin','Ludvig',20);
INSERT INTO Joueurs VALUES(20,4,'2022-09-08',20,4,'Aleksib','Virolainen','Aleksi',25);

INSERT INTO Joueurs VALUES(21,5,'2016-01-20',21,5,'rain','Nygaard','Håvard',28);
INSERT INTO Joueurs VALUES(22,5,'2019-09-26',22,5,'broky','Saukants','Helvijs',21);
INSERT INTO Joueurs VALUES(23,5,'2021-01-30',23,5,'Twistzz','Van Dulken','Russel',23);
INSERT INTO Joueurs VALUES(24,5,'2021-02-15',24,5,'karrigan','Andersen','Finn',32);
INSERT INTO Joueurs VALUES(25,5,'2022-01-03',25,5,'ropz','Kool','Robin',22);

INSERT INTO Joueurs VALUES(26,6,'2016-01-20',26,6,'rain','Nygaard','Håvard',28);
INSERT INTO Joueurs VALUES(27,6,'2019-09-26',27,6,'broky','Saukants','Helvijs',21);
INSERT INTO Joueurs VALUES(28,6,'2021-01-30',28,6,'Twistzz','Van Dulken','Russel',23);
INSERT INTO Joueurs VALUES(29,6,'2021-02-15',29,6,'karrigan','Andersen','Finn',32);
INSERT INTO Joueurs VALUES(30,6,'2022-01-03',30,6,'ropz','Kool','Robin',22);

INSERT INTO Joueurs VALUES(31,7,'2022-08-13',31,7,'birdfromsky','Due Frederiksen','Thomas',29);
INSERT INTO Joueurs VALUES(32,7,'2022-08-13',32,7,'regali','Harjău','Iulian',20);
INSERT INTO Joueurs VALUES(33,7,'2022-08-13',33,7,'raalz','Steensborg','Rasmus',27);
INSERT INTO Joueurs VALUES(34,7,'2022-08-13',34,7,'TMB','Bundsbæk','Thomas',20);
INSERT INTO Joueurs VALUES(35,7,'2022-08-13',35,7,'b0RUP','Borup','Johannes',23);

INSERT INTO Joueurs VALUES(36,8,'2020-04-05',36,8,'stavn','Lund','Martin',20);
INSERT INTO Joueurs VALUES(37,8,'2020-04-05',37,8,'cadiaN','Møller','Casper',27);
INSERT INTO Joueurs VALUES(38,8,'2020-04-08',38,8,'TeSeS','Madsen','René',21);
INSERT INTO Joueurs VALUES(39,8,'2021-02-26',39,8,'sjuush','Beck','Rasmus',23);
INSERT INTO Joueurs VALUES(40,8,'2022-06-21',40,8,'Jabbi','Nygaard','Jakob',19);

INSERT INTO Joueurs VALUES(41,9,'2017-11-08',41,9,'yuurih','Boian','Yuri',22);
INSERT INTO Joueurs VALUES(42,9,'2018-02-06',42,9,'arT','Piovezan','Andrei',26);
INSERT INTO Joueurs VALUES(43,9,'2018-02-06',43,9,'KSCERATO','Cerato','Kaike',23);
INSERT INTO Joueurs VALUES(44,9,'2021-08-23',44,9,'drop','Abreu','André',18);
INSERT INTO Joueurs VALUES(45,9,'2022-01-06',45,9,'saffee','Costa','Rafael',27);







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
















































