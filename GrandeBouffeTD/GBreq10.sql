spool ResGBreq10
Select distinct nomI
from 
		(Select nomA, Pref.nomP 
		 from repas.LesPreferences Pref
		 minus
		 Select nomA, nomP
		 from repas.LesPreferences
  	 where nomP = 'Foie gras') X join repas.LeMenu M on (X.nomP = M.nomP) join repas.LesRepas R on (M.dateR = R.dateR)
where nomI = nomA;
spool off;
