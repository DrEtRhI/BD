spool req1voyage
prompt Donner le numéro, les villes de départ et d'arrivée des ciruits qui démarrent après une date donnée.
select C.numc, vdep, varr
from agence.lescircuits C join agence.lesprogrammations P on (C.numc = P.numc)
where datedep > '25-APR-10';
spool off;
