spool ResGBreq7
Select distinct nomA
from REPAS.LesPreferences natural join REPAS.LeMenu natural join REPAS.LesRepas
where nomI = nomA;
spool off;
