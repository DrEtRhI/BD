spool req1voyage
prompt Donner le numéro, les villes de départ et d arrivée des ciruits qui démarrent après une date donnée.
ACCEPT uneDate prompt 'Donnez moi une date (ex 01-DEC-10) :';
select C.numc, vdep, varr
from agence.lescircuits C join agence.lesprogrammations P on (C.numc = P.numc)
where datedep > '&uneDate';
spool off;
