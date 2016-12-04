spool req4voyage
prompt 'Donner les noms des villes visitées par Milou (c est à dire les villes étapes)'
select distinct vetape
from agence.lesetapes E join (select distinct numc
                             from agence.lesreservations
			     where nomc = 'Milou')A on (E.numc = A.numc);
spool off;
