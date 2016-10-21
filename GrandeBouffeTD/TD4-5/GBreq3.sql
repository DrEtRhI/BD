spool ResGBreq3
Select nomP, nomV
from REPAS.LeMenu
where dateR = TO_DATE('21/10/2003','DD/MM/YYYY');
spool off;
