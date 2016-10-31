spool req7voyage
prompt Pour chacune des villes visitées par Milou donner le prix total pour visiter tous les monuments de cette ville (prix nul si pas de monument)

select B.vetape, sum(nvl(M.prix, 0)) as totalVisite
from (select distinct vetape
     from agence.lesetapes E join (select distinct numc
				  from agence.lesreservations
				  where nomc = 'Milou')A on (E.numc = A.numc))B left outer join agence.lesmonuments M on (B.vetape = M.nomv)
group by B.vetape;
spool off;
