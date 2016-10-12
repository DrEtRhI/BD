spool ResGBreq8
Select distinct nomI
from 
		 (Select distinct nomA, pref.nomP 
			from REPAS.LesPreferences Pref join REPAS.LesPlats P on (Pref.nomP = P.nomP)
			where typeP = 'dessert') X join REPAS.LeMenu M on (X.nomP = M.nomP) join REPAS.LesRepas R on (M.dateR = R.dateR)
where nomI = nomA;
spool off;
