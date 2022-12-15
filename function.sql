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
--------------------------------------------------------------------------------------------------------------------------------------------------------

-- fonction utilisant un curseur qui permet de classé les équipes dans l'ordre de leur nombre de victoires, du plus au moins victorieux
Create or replace function classement_equipe()
returns void as $$
DECLARE
    mon_curseur cursor for select nom_equipe from Equipes order by equipes.nb_victoire desc;
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

--------------------------------------------------------------------------------------------------------------------------------------------------------

-- Fonction d'ajout d'equipe dans la table Equipes avec l'id max + 1
CREATE OR REPLACE FUNCTION ajout_equip(n_equipe VARCHAR)
RETURNS void AS $$
DECLARE
    v_equipe INT;
BEGIN
    -- Recuperation du plus grand id_equipe + 1
    SELECT MAX(id_equipe) INTO v_equipe FROM Equipes;
    v_equipe := v_equipe + 1;

    INSERT INTO Equipes(id_equipe, nom_equipe, nb_victoire) 
    VALUES (v_equipe, n_equipe, 0);

    RAISE NOTICE 'AJOUT EFFECTUE';
END;
$$LANGUAGE plpgsql;

select ajout_equip('Lens');

--------------------------------------------------------------------------------------------------------------------------------------------------------

-- Fonction d'affichage des equipe et de leur ids disponible dans la table equipe pour l'inserion des joueurs 
CREATE OR REPLACE FUNCTION affich_equip()
RETURNS void AS $$
DECLARE
    id INT;
    i INT;
    nom VARCHAR;
BEGIN
    i := 1;

    RAISE NOTICE  'id_equipe  |    nom_equipe';
    RAISE NOTICE '-----------+-------------------';


    WHILE EXISTS(SELECT id_equipe FROM Equipes WHERE id_equipe = i) LOOP
    SELECT id_equipe, nom_equipe INTO id, nom FROM Equipes WHERE id_equipe = i;


    RAISE NOTICE '%          |   %',id, nom;
    i := i + 1;
    END LOOP;
END;
$$LANGUAGE plpgsql;

select affich_equip();

--------------------------------------------------------------------------------------------------------------------------------------------------------

-- Fonction d'ajout de joueur dans la table joueur // Surtout bien mettre l'id de l'equipe que vous voulez avec les fonctions d'avant
CREATE OR REPLACE FUNCTION ajout_joueur(J_nom VARCHAR, J_prenom VARCHAR, J_pseudo VARCHAR, J_age INT, J_nationalite VARCHAR, id_J_equipe INT)
RETURNS VOID AS $$
DECLARE
    v_id INTEGER;
    v_stats INTEGER;
    v_nat INTEGER;
    vdate date;
BEGIN
    -- Recuperation du plus grand id_personne + 1
    SELECT MAX(id_personne) INTO v_id FROM Joueurs;
    v_id := v_id + 1;

    -- Recuperation du plus grand id_stats + 1
    SELECT MAX(id_stat) INTO v_stats FROM Stats;
    v_stats := v_stats + 1;

    INSERT INTO Stats(id_stat, s_kill, death) 
    VALUES (v_stats, 1548, 1354);

    
    -- Recuperation du plus grand id_nationalite + 1
    SELECT id_nationalite INTO v_nat FROM Nationalites
    WHERE J_nationalite = lib_nationalite;

    -- Insertion dans la table joueur
    INSERT INTO Joueurs(id_personne, id_equipe, date_join, id_stat, id_nationalite, pseudo, nom, prenom, age) 
    VALUES (v_id, id_J_equipe, NOW(), v_stats, v_nat, J_pseudo, J_nom, J_prenom, J_age);

    RAISE NOTICE 'AJOUT EFFECTUE';
END;
$$LANGUAGE plpgsql;

select ajout_joueur('Capitaine', 'Dany', 'LensIsBetter', 29, 'FRA', 16);

--------------------------------------------------------------------------------------------------------------------------------------------------------


Create or replace function classement_kd_joueur()
returns void as $$
DECLARE
    mon_curseur cursor for select id_stat, KD from Stats 
    order by Stats.KD desc;
    v_id Stats.id_stat%type; 
    v_stats Stats.KD%type;
    
BEGIN

    open mon_curseur;
    loop
    fetch mon_curseur into v_id, v_stats;
    exit when not found;
    case
    when v_stats> 10 then raise notice 'le joueur % a un ration K/D moyen de % , il est trop chaud !!',v_id ,v_stats;
    when v_stats<10 and v_stats>5 then raise notice 'le joueur % a un ration K/D moyen de % , il est bon !',v_id ,v_stats;
    when v_stats<5 and v_stats>2 then raise notice 'le joueur % a un ration K/D moyen de % , il a un niveau correct.',v_id ,v_stats;
    when v_stats<2 and v_stats>1 then raise notice 'le joueur % a un ration K/D moyen de % , il est pas terrible mais ca va.',v_id ,v_stats;
    Else
    raise notice 'le joueur % a un ration K/D moyen de % , il est vraiment nul !!!',v_id ,v_stats;
    end case;
    end loop;

    close mon_curseur;

end;
$$ language plpgsql;

select classement_kd_joueur();

