spool req5voyage
prompt Donner les noms des villes et des monuments visités par Milou (affiche toutes les villes étapes memes celles où aucun monuments n'est visité)
select B.vetape, nomm
from (select distinct vetape
     from agence.lesetapes E join (select distinct numc
				  from agence.lesreservations
				  where nomc = 'Milou')A on (E.numc = A.numc))B left outer join agence.lesmonuments M on (B.vetape = M.nomv);
spool off;
