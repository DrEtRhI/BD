spool ResGBreq1
Select nomI
from repas.LesRepas
where dateR = TO_DATE('31/12/2004', 'DD/MM/YYYY');
spool off;
