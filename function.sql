-- Fonction qui return les noms des joueurs en fonction du nom de l'equipe données

CREATE OR REPLACE FUNCTION select_equipe(nom_E Equipes.nom_equipe%type)
RETURNS void AS $$
DECLARE
    nom_joueur Joueurs.nom%type;
    prenom_joueur Joueurs.prenom%type;
BEGIN

    for i in 1..5
    loop 
    SELECT nom, prenom INTO nom_joueur, prenom_joueur FROM Joueurs as j
    INNER JOIN Equipes AS e ON j.id_equipe = e.id_equipe
    WHERE nom_equipe = nom_E offset i-1 limit i ;
    raise notice 'nom : %, prenom : %',nom_joueur, prenom_joueur;
    end loop;

    
END;
$$LANGUAGE plpgsql;


