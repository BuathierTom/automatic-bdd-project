-- Cette fonction permet d'afficher le classement du plus haut au plus petit kd avec un message en fonction du kd

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