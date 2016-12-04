spool req8voyage
prompt Donner les noms des clients qui ont réservé au moins un circuit qui passe par un pays donné
accept paysChoisi prompt'Donnez un pays : ';
select distinct nomC
from agence.lesreservations R join
(select numc, vetape
from agence.lesetapes
union
select numc, vdep
from agence.lescircuits
union
select numc,varr
from agence.lescircuits)B on (R.numc = B.numc) join agence.lesvilles V on (V.nomv = B.vetape)
where pays = '&paysChoisi';
spool off;
