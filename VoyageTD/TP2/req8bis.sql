accept paysChoisi prompt'Donnez un pays : ';
select nomc
from agence.lesreservations Res join (select numc
				  from agence.lesetapes V join (select nomv
							      from agence.lesvilles
							      where pays = '&paysChoisi') R1 on (V.vetape = R1.nomv)
union
select numc
from agence.lescircuits C1 join (select nomv 
                                 from agence.lesvilles
				 where pays = 'paysChoisi')R2 on (C1.vdep = R2.nomV)
union
select numc
from agence.lescircuits C2 join (Select nomv
				 from agence.lesvilles
				 where pays = 'PaysChoisi')R3 on (C2.varr = R3.nomv))R4 on (R4.numc = Res.numc);

