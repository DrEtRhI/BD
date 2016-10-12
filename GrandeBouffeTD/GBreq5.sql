spool ResGBreq5
Select nomA
from REPAS.LesPreferences
minus
Select nomI
from REPAS.LesRepas;
spool off;
