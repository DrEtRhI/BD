spool req9voyage
prompt Donner la liste des numéros des circuits qui passent dans toutes les villes d'un pays donné
ACCEPT nomPays prompt 'Entrez un nom de pays (ex: Angleterre) : ';
select pays, numc as NumeroCircuit
from (select pays, count(pays) as nbrvillepays
      from agence.lesvilles
      where pays = '&nomPays'
      group by pays)A join (select numc, count(numc) as nbrvillecircuit
                           from (select numc, vetape
                                from agence.lesetapes
                                union
                                select numc, vdep
                                from agence.lescircuits
                                union
                                select numc,varr
                                from agence.lescircuits) join agence.lesvilles V on (V.nomv = vetape)
                           where pays = '&nomPays'
                           group by numc)B on (nbrvillepays = nbrvillecircuit);
