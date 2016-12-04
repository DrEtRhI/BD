spool req2voyage
prompt Donner le nom des clients qui ne visitent aucun monument
select nomc
from agence.LesReservations 
minus
select nomc 
from agence.LesReservations R join (select numc
     from agence.LesEtapes join agence.LesMonuments on (Vetape = nomV)) R1 on (R1.numc = R.numc); 
spool off;
