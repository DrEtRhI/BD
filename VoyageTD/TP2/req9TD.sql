spool req9TD
ACCEPT nomPays prompt 'Donner un nom de pays (ex : France) : '
Select numC
From (Select numC, count(ville) as villeVisitee
		from (select nomV as ville
			  from agence.lesvilles
			  where pays ='&nomPays')R1
	    natural join (select numC, vDep as ville
					  from agence.lescircuits
				      union
					  select numC, vArr
					  from agence.lescircuits
					  union
					  select numC, vEtape
					  from agence.lesEtapes)R2
	    group by numC)R3 join (select count(nomV) as nbville
							   from agence.lesvilles
							   where pays = '&nomPays')R on (nbville = villeVisitee);
spool off;
