-- Fonction qui return les noms des joueurs en fonction du nom de l'equipe données

CREATE OR REPLACE FUNCTION select_equipe(nom_E)
RETURNS void AS $$
DECLARE
    nom_joueur, prenom_joueur VARCHAR;
BEGIN
    SELECT nom, prenom INTO nom_joueur, prenom_joueur FROM Joueurs as j
        INNER JOIN Equipes AS e ON j.id_equipe = e.id_equipe
            WHERE nom_E = nom_equipe;

END;
LANGUAGE plpgsql;


