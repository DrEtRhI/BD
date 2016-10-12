spool ResGBreq6
Select dateR, nomP, nomV
from REPAS.LesRepas natural join REPAS.LeMenu
where nomI = 'Bernard'
intersect
Select dateR, nomP, nomV
from REPAS.LesRepas natural join REPAS.LeMenu
where nomI = 'Philippe';
spool off;
