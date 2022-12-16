DROP TABLE IF EXISTS Nationalites CASCADE;
DROP TABLE IF EXISTS Joueurs CASCADE;
DROP TABLE IF EXISTS Stats CASCADE;
DROP TABLE IF EXISTS Equipes CASCADE;
DROP TABLE IF EXISTS Matchs CASCADE;
DROP TABLE IF EXISTS Maps CASCADE;
DROP TABLE IF EXISTS Commentateurs CASCADE;
DROP TABLE IF EXISTS Jouer_match CASCADE;

 

CREATE TABLE Nationalites (id_nationalite INT NOT NULL, lib_nationalite VARCHAR(3), PRIMARY KEY (id_nationalite) );

CREATE TABLE Joueurs (id_personne INT NOT NULL,id_equipe INT NOT NULL, date_join DATE,id_stat INT NOT NULL, id_nationalite INT NOT NULL, pseudo VARCHAR(50),nom VARCHAR(50), prenom VARCHAR(50), age INT, PRIMARY KEY (id_personne) );

CREATE TABLE Stats (id_stat INT NOT NULL, s_kill real, death real, KD real, PRIMARY KEY (id_stat) );

CREATE TABLE Equipes (id_equipe INT NOT NULL, nom_equipe VARCHAR(50), nb_victoire INT, PRIMARY KEY (id_equipe));

CREATE TABLE Matchs (id_match INT NOT NULL,id_commentateur INT NOT NULL, id_map INT NOT NULL, scores VARCHAR(5),PRIMARY KEY (id_match) );

CREATE TABLE Maps (id_map INT NOT NULL, nom_map VARCHAR(50), PRIMARY KEY(id_map));

CREATE TABLE Commentateurs (id_commentateur INT NOT NULL, nom VARCHAR(50), prenom VARCHAR(50), PRIMARY KEY (id_commentateur) );

CREATE TABLE Jouer_match (id_equipe INT NOT NULL, id_equipe_1 INT NOT NULL, id_equipe_2 INT NOT NULL, id_match INT NOT NULL, m_date DATE );



ALTER TABLE Joueurs ADD CONSTRAINT FK_Joueurs_id_nationalite FOREIGN KEY (id_nationalite) REFERENCES Nationalites (id_nationalite);

ALTER TABLE Matchs ADD CONSTRAINT FK_Matchs_id_commentateur FOREIGN KEY (id_commentateur) REFERENCES Commentateurs (id_commentateur);

ALTER TABLE Joueurs ADD CONSTRAINT FK_Joueurs_id_stat FOREIGN KEY (id_stat) REFERENCES Stats (id_stat);

ALTER TABLE Joueurs ADD CONSTRAINT FK_Joueurs_id_equipe FOREIGN KEY (id_equipe) REFERENCES Equipes (id_equipe);

ALTER TABLE Jouer_match ADD CONSTRAINT FK_Jouer_match_id_equipe FOREIGN KEY (id_equipe) REFERENCES Equipes (id_equipe);

ALTER TABLE Jouer_match ADD CONSTRAINT FK_Jouer_match_id_equipe_1 FOREIGN KEY (id_equipe_1) REFERENCES Equipes (id_equipe);

ALTER TABLE Jouer_match ADD CONSTRAINT FK_Jouer_match_id_equipe_2 FOREIGN KEY (id_equipe_2) REFERENCES Equipes (id_equipe);

ALTER TABLE Jouer_match ADD CONSTRAINT FK_Jouer_match_id_match FOREIGN KEY (id_match) REFERENCES Matchs (id_match);

ALTER TABLE Matchs ADD CONSTRAINT FK_Matchs_id_map FOREIGN KEY (id_map) REFERENCES Maps (id_map);


