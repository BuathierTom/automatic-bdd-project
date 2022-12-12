-- Fonction qui return les noms des joueurs en fonction du nom de l'equipe données

CREATE OR REPLACE FUNCTION select_equipe(nom_E Equipes%ROWTYPE)
RETURNS void AS $$
DECLARE
    nom_joueur Joueurs%ROWTYPE;
    prenom_joueur Joueurs%ROWTYPE;
BEGIN
    SELECT nom, prenom INTO nom_joueur, prenom_joueur FROM Joueurs as j
        INNER JOIN Equipes AS e ON j.id_equipe = e.id_equipe
            WHERE nom_equipe = nom_E;

END;
LANGUAGE plpgsql;


