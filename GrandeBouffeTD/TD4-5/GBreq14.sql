spool ResGBreq14
with X as (Select nomI, count(dateR) as nbI
				From repas.LesRepas
				group by nomI)
select nomI, nomP
from X natural join repas.LeMenu;
spool off;
