Spool req11voyage
prompt 'Donner le numéro, le prix de base, la date de départ et le nombre de places disponibles des programmations de circuits qui ont encore des places disponibles et dont le nombre de jours est inférieur ou égale à un entier'
ACCEPT nbJourChoix number prompt 'Entrer un nombre de jour maximum pour le voyage : ';
Select R1.numc as numerocircuit, prix, datedep as datedepart, placedispo
from agence.lescircuits C join (select P.numc, P.datedep, (nbplaces - R.nbres) as placedispo
      from agence.lesprogrammations P join agence.lesreservations R on (P.numc = R.numc)
      where (nbplaces > nbres))R1 on (C.numc = R1.numc)  join (Select numc, sum(nbjours) as nbJourSejour
                                                                 from agence.lesetapes
					                         group by numc)R2 on (R1.numc = R2.numc)
where nbJourSejour <= '&nbJourChoix';
spool off; 
