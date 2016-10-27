spool req2voyage
select C.numc, vdep, varr
from agence.lescircuits C join agence.lesprogrammations P on (C.numc = P.numc)
where datedep > '25-APR-10';
spool off;
