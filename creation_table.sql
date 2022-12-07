-- Creer une base de donnée du nom de "CSGO"

create database CSGO;

DROP TABLE IF EXISTS Nationalites CASCADE;
DROP TABLE IF EXISTS Joueurs CASCADE;
DROP TABLE IF EXISTS Stats CASCADE;
DROP TABLE IF EXISTS Equipes CASCADE;
DROP TABLE IF EXISTS Matchs CASCADE;
DROP TABLE IF EXISTS Maps CASCADE;
DROP TABLE IF EXISTS Commentateurs CASCADE;

CREATE TABLE Nationalites (id_nationalite INT NOT NULL, lib_nationalite VARCHAR(3), PRIMARY KEY (id_nationalite) );

CREATE TABLE Joueurs (id_personne INT NOT NULL,id_equipe INT NOT NULL,id_stat INT NOT NULL, id_nationalite INT NOT NULL, nom VARCHAR(50), prenom VARCHAR(50), date_nai DATE, PRIMARY KEY (id_personne) );

CREATE TABLE Stats (id_stat INT NOT NULL, s_kill INT, death INT, assist INT, PRIMARY KEY (id_stat) );

CREATE TABLE Equipes (id_equipe INT NOT NULL, nom_equipe VARCHAR(50), PRIMARY KEY (id_equipe) );

CREATE TABLE Matchs (id_match INT NOT NULL, equipe_1 VARCHAR(50), equipe_2 VARCHAR(50),id_commentateur INT NOT NULL, id_map INT NOT NULL, scors VARCHAR(5), m_date DATE, PRIMARY KEY (id_match) );

CREATE TABLE Maps (id_map INT NOT NULL, nom_map VARCHAR(50), PRIMARY KEY(id_map));

CREATE TABLE Commentateurs (id_commentateur INT NOT NULL, nom VARCHAR(50), prenom VARCHAR(50), PRIMARY KEY (id_commentateur) );

CREATE TABLE Jouer_match( id_equipe INT, id_equipe_1 INT, id_equipe_2 INT, id_match INT, m_date DATE, PRIMARY KEY(id_equipe, id_equipe_1, id_match),
   FOREIGN KEY(id_equipe) REFERENCES Equipes(id_equipe),
   FOREIGN KEY(id_equipe_1) REFERENCES Equipes(id_equipe),
   FOREIGN KEY(id_equipe_2) REFERENCES Equipes(id_equipe),
   FOREIGN KEY(id_match) REFERENCES Matchs(id_match));




ALTER TABLE Joueurs ADD CONSTRAINT FK_Joueurs_id_nationalite FOREIGN KEY (id_nationalite) REFERENCES Nationalites (id_nationalite);

ALTER TABLE Matchs ADD CONSTRAINT FK_Matchs_id_commentateur FOREIGN KEY (id_commentateur) REFERENCES Commentateurs (id_commentateur);

ALTER TABLE Joueurs ADD CONSTRAINT FK_Joueurs_id_stat FOREIGN KEY (id_stat) REFERENCES Stats (id_stat);

ALTER TABLE Joueurs ADD CONSTRAINT FK_Joueurs_id_equipe FOREIGN KEY (id_equipe) REFERENCES Equipes (id_equipe);

ALTER TABLE Matchs ADD CONSTRAINT FK_Matchs_id_match FOREIGN KEY (id_match) REFERENCES Equipes (id_equipe);

ALTER TABLE Matchs ADD CONSTRAINT FK_Matchs_id_map FOREIGN KEY (id_map) REFERENCES Maps (id_map);

