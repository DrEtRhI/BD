spool req6voyage
prompt Donner les noms des villes visitées par Milou et le nombre de monuments dans chaque ville (affiche les villes n'ayant pas de monuments)
select B.vetape, count(nomm) as nbMonument
from (select distinct vetape
     from agence.lesetapes E join (select distinct numc
				  from agence.lesreservations
				  where nomc = 'Milou')A on (E.numc = A.numc))B left outer join agence.lesmonuments M on (B.vetape = M.nomv)
group by B.vetape;
spool off;
