fpool req9TD
ACCEPT nomPays prompt 'Donner un nom de pays (ex : France) : '
Select numC
From (Select numc, count(ville) as villeVisitee
		from (select nomV as ville
			  from agence.lesvilles
			  where pays ='&nomPays')R1
	    natural join (select numc, vDep as ville
					  from agence.lescircuits
				      union
					  select numc, vArr
					  from agence.lescircuits
					  union
					  select numC, vEtape
					  from agence.lesEtapes)R2
	    group by numc)R3 join (select count(nomV) as nbville
							   from agence.lesvilles
							   where pays = '&nomPays')R on (nbville = villeVisitee);
spool off;