spool req2voyage
prompt Donner le nom des clients qui ne visitent aucun monument
select nomc
from (select numc
     from agence.lescircuits
     minus
     select numc
     from agence.lesetapes)X
join agence.lesreservations R on (X.numc = R.numc);
spool off;
