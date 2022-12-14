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


END;
$$LANGUAGE plpgsql;


select select_equipe('BIG');


-- premiere fonction d'affichage du ratio tué / mort 

CREATE OR REPLACE FUNCTION affiche_kd_joueur()
RETURNS void as $$
DECLARE

    donnee record;
    
    v_kd real;
    v_kill real;
    v_death real;

BEGIN
    
    
    for donnee in select pseudo, s_kill, death  from Stats as S inner join Joueurs as J on S.id_stat = J.id_personne

    loop
    v_kd = donnee.s_kill/donnee.death;
    raise notice 'le kd de % est de % ',donnee.pseudo,v_kd;
    end loop;

end;
$$ LANGUAGE plpgsql;



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
    raise notice 'le kd de % est de % ', v_pseudo, v_kd;
    end loop;

end;
$$ LANGUAGE plpgsql;

select affiche_kd_joueur();


-- fonction qui retourne le kd de chaque joueur mais avec un curseur

CREATE OR REPLACE FUNCTION affiche_kd_joueur()
RETURNS void as $$
DECLARE
    mon_curseur cursor for select  pseudo, s_kill, death from Stats as S inner join Joueurs as J on S.id_stat = J.id_personne;
    v_pseudo Joueurs.pseudo%type;
    v_kd real;
    v_kill real;
    v_death real;

BEGIN

    raise notice 'voici le pseudo et le kd des joueurs :';

    open mon_curseur;
    loop
    fetch mon_curseur into v_pseudo, v_kill, v_death;
    exit when not found;
    v_kd := v_kill/v_death;
    raise notice 'le kd de % est de % ', v_pseudo, v_kd;
    end loop;
    close mon_curseur;

end;
$$ LANGUAGE plpgsql;

select affiche_kd_joueur();






