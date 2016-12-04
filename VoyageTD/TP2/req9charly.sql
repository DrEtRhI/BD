accept prays prompt 'le pays';
select Cpays.numc from
(select numc, count(distinct nomv) as nbvilleC 
from (select *
	from (select numc, vetape as nv from agence.lesetapes 
	      union
	      select numc, vdep as nv from agence.lescircuits
	      union
	      select numc, varr as nv from agence.lescircuits)TvillesC
	join
	     (select nomv from agence.lesvilles where pays='&prays')villeP
	on TvillesC.nv = villeP.nomv
group by numc))Cpays
join
 (select count(nomv) as nbvilles  from agence.lesvilles where pays ='&prays') R 
on Cpays.nbvilleC = R.nbvilles;gence.lesreservations join (select numc
                                  
