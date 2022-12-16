-- Les 3 prochaines fonctions sont à utiliser à la suite !!!
-- c'est donc pour cela qu'elles sont dans le même fichier 



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


------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------


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

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------


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