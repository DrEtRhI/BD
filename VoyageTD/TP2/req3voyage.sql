spool req3voyage
prompt Donner le numéro, le nombre total de jours et le prix de base des circuits qui n'ont aucune réservation
select C.numc, nbjour, prix
from agence.lescircuits C join (select numc, sum(nbjours) as nbjour
     from agence.lesetapes
     group by numc)A on (C.numc = A.numc) join (select numc
                          from agence.lescircuits
                          minus
                          select numc
			  from agence.lesreservations)B on (A.numc = B.numc);
spool off;
