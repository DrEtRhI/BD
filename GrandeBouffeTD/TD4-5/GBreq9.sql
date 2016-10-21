spool ResGBreq9
Select nomA
from repas.LesPreferences
minus
Select distinct nomA
from REPAS.LesPreferences natural join REPAS.LeMenu natural join REPAS.LesRepas
where nomI = nomA;
spool off;
