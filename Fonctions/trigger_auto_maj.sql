-- trigger auto majuscule lib_nationalites

Create or replace function trig_UpperLib()
returns trigger as $$

begin

-- mise en majuscule de lib_nationalite
new.lib_nationalite = upper(new.lib_nationalite);
return new;

end;
$$ language plpgsql;

-- creation du trigger
CREATE TRIGGER trig_UpperLib
BEFORE INSERT ON Nationalites
FOR EACH ROW
EXECUTE PROCEDURE trig_UpperLib();


------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

-- trigger de calcule et d'insertion auto du ration kill/death (KD) des joueurs

-- Qu'es ce que le KD ?
-- Le KD est un ration clalculé en fonction du nombre de joueurs adverse tué et le nombre de fois que ce joueur à été tué
-- il est calculé en faisant  -> nombre de kills / nombre de mort 
-- ce qui nous donne le ration moyen d'un joueur
-- le KD est utilisé dans de nombreux jeux, notamment dans les FPS (first person shooter)


create or replace function KD()
returns trigger as $$

DECLARE
    v_kd real;

BEGIN
    
    -- le nombre de kill est divisé par le nombre de mort pour donner le ratio K/D 
    v_kd := new.s_kill/new.death;
    -- il est 
    Update Stats set KD = v_kd where id_ stat = new.id_stat;
    
    return new;

end;
$$ LANGUAGE plpgsql;

-- creation du trigger 
create trigger kd 
after insert on Stats 
for each row 
EXECUTE PROCEDURE KD();



------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

-- trigger d'auto maj du nom des commentateurs

Create or replace function trig_UpperNomCommentateur()
returns trigger as $$

begin
-- mise en majuscule du nom des commentateurs 
new.nom = upper(new.nom);
return new;

end;
$$ language plpgsql;

-- creation du trigger
CREATE TRIGGER trig_UpperNomCommentateur
BEFORE INSERT ON Commentateurs
FOR EACH ROW
EXECUTE PROCEDURE trig_UpperNomCommentateur();

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------


-- trigger d'auto maj des noms des maps

Create or replace function trig_UpperNomMaps()
returns trigger as $$

begin

-- mise en majuscule du nom des maps
new.nom_map = upper(new.nom_map);
return new;

end;
$$ language plpgsql;

-- creation du trigger 
CREATE TRIGGER trig_UpperNomMaps
BEFORE INSERT ON Maps
FOR EACH ROW
EXECUTE PROCEDURE trig_UpperNomMaps();


------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------


-- trigger d'auto maj des noms des Joueurs

Create or replace function trig_UpperNomJoueurs()
returns trigger as $$

begin

-- mise en majuscule du nom des joueurs 
new.nom = upper(new.nom);
return new;

end;
$$ language plpgsql;

-- creation du trigger
CREATE TRIGGER trig_UpperNomJoueurs
BEFORE INSERT ON Joueurs
FOR EACH ROW
EXECUTE PROCEDURE trig_UpperNomJoueurs();

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------