spool req11bisvoyage
accept nbJourChoix prompt 'Donnez la durée maximum en jour du séjour ? : ';
Select R1.numc as numerocircuit, prix, datedep as datedepart, placedispo
from agence.lescircuits C join (select distinct P.numc, P.datedep, (nbplaces - totalRes) as placedispo
      from agence.lesprogrammations P join (select distinct numc, datedep, sum(nbRes) as totalRes
from agence.lesreservations
group by numc, datedep)R2 on (P.numc = R2.numc)
      where (nbplaces > totalRes))R1 on (C.numc = R1.numc) join (Select numc, sum(nbjours) as nbJourSejour
from agence.lesetapes
group by numc)R3 on (R1.numc = R3.numc)
where nbJourSejour <= '&nbJourChoix'
order by R1.numc, datedep; 
spool off;
