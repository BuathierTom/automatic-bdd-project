-- Fonction qui return les noms des joueurs en fonction du nom de l'equipe données

CREATE OR REPLACE FUNCTION select_equipe(nom_E Equipes.nom_equipe%type)
RETURNS void AS $$
DECLARE
    mon_curseur cursor for SELECT nom, prenom, pseudo FROM Joueurs as j
    INNER JOIN Equipes AS e ON j.id_equipe = e.id_equipe
    WHERE nom_equipe = nom_E;
    nom_joueur Joueurs.nom%type;
    prenom_joueur Joueurs.prenom%type;
    pseudo_joueur Joueurs.pseudo%type;
BEGIN

    raise notice 'les noms, prenoms et pseudos des joueurs de l equipe % sont:', nom_E;
    raise notice '';
    
    open mon_curseur;
    loop 
    fetch mon_curseur into nom_joueur, prenom_joueur, pseudo_joueur;
    exit when not found;
    raise notice 'nom: %, | prenom: %, | pseudo : %',nom_joueur, prenom_joueur, pseudo_joueur;
    end loop;
    close mon_curseur;


END;
$$LANGUAGE plpgsql;

select select_equipe('BIG');


-- fonction utilisant un curseur qui permet de classé les équipes dans l'ordre de leur nombre de victoires, du plus au moins victorieux
Create or replace function classement_equipe()
returns void as $$
DECLARE
    mon_curseur cursor for select nom_equipe from Equipes order by equipes.nb_vitoire desc;
    v_classement Equipes.nom_equipe%type;
    i integer;
BEGIN

    i := 1;
    open mon_curseur;
    loop
    fetch mon_curseur into v_classement;
    exit when not found;
    raise notice '% est numero %',v_classement,i;
    i := i + 1;
    end loop;
    close mon_curseur;

end;
$$ language plpgsql;

select classement_equipe();







