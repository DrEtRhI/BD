spool ResGBreq4
Select nomI
from REPAS.LeMenu natural join REPAS.LesREPAS
where nomP = 'Foie gras';
spool off;
