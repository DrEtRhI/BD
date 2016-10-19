spool ResGBreq10
Select distinct nomI
From repas.LesRepas natural join repas.LeMenu
Where nomP = 'Foie gras'
minus
Select nomA 
From repas.LesPreferences
Where nomP = 'Foie gras';
spool off;
