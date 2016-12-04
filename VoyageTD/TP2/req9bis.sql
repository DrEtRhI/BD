accept nomPays prompt'Donnez un nom de pays : ';
select numc
from ((select numc, vetape
from agence.lesetapes
union
select numc, vdep
from agence.lescircuits
union 
select numc, varr
from agence.lescircuits) R1 join (select count(distinct numc) as villecircuit
from R1 join (select nomv
from agence.lesvilles
where pays = 'nomPays') R3 on (R1.vetape = R3.nomv))) R4 join (select count(nomV) as totville
from agence.lesvilles
where pays ='nomPays') R2 on (totville = villecircuit);
