spool ResGBreq11
Select nomI, count(dateR) as nbRepas
From repas.LesRepas
group by nomI;
spool off;
