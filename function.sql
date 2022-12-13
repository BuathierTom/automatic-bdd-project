-- Fonction qui return les noms des joueurs en fonction du nom de l'equipe données

CREATE OR REPLACE FUNCTION select_equipe(nom_E Equipes.nom_equipe%type)
RETURNS void AS $$
DECLARE
    nom_joueur Joueurs.nom%type;
    prenom_joueur Joueurs.prenom%type;
    pseudo_joueur Joueurs.pseudo%type;
BEGIN

    raise notice 'les noms, prenoms et pseudos des joueurs de l equipe % sont:', nom_E;
    raise notice '';
    
    for i in 1..5
    loop 
    SELECT nom, prenom, pseudo INTO nom_joueur, prenom_joueur, pseudo_joueur FROM Joueurs as j
    INNER JOIN Equipes AS e ON j.id_equipe = e.id_equipe
    WHERE nom_equipe = nom_E offset i-1 limit i ;
    raise notice 'nom: %, | prenom: %, | pseudo : %',nom_joueur, prenom_joueur, pseudo_joueur;
    end loop;

    
END;
$$LANGUAGE plpgsql;


select select_equipe('BIG');

-- Fonction qui retourne le raport entre le nombre d'ennemie tué et le nombre de mort qu'a chaque joueur


CREATE OR REPLACE FUNCTION affiche_kd_joueur()
RETURNS void as $$
DECLARE
    v_pseudo Joueurs.pseudo%type;
    v_kd real;
    v_kill real;
    v_death real;

BEGIN

    raise notice 'voici le pseudo et le kd des joueurs :';

    for i in 1..80
    loop
    select  pseudo, s_kill, death into v_pseudo, v_kill, v_death from Stats as S
    inner join Joueurs as J on S.id_stat = J.id_personne
    offset i-1 limit i;
    v_kd := v_kill/v_death;
    raise notice 'kill -> % | mort -> %', v_kill , v_death;
    raise notice 'le kd de % est de % ', v_pseudo, v_kd;
    end loop;

end;
$$ LANGUAGE plpgsql;



