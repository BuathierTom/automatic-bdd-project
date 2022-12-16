-- Fonction utilisant un curseur qui permet de classé les équipes dans l'ordre de leur nombre de victoires, du plus au moins victorieux

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



-- Pour tester
select classement_equipe();
