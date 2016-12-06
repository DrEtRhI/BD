spool req11TD
ACCEPT choixJour PROMPT 'Choisissez le nombre de jours pour votre voyage :';
SELECT numC, dateDep, prix, Dispo, totaljour
FROM (SELECT numC, datedep, prix, (nbplaces - NVL(nbReserve, 0)) AS Dispo
	  FROM AGENCE.LesProgrammations NATURAL LEFT OUTER JOIN (SELECT numC, datedep, SUM(nbRes) AS nbReserve
													         FROM AGENCE.LesReservations
													         GROUP BY numC, datedep)A 
	  NATURAL JOIN AGENCE.LesCircuits
	  WHERE (nbplaces - NVL(nbReserve, 0)) > 0)B NATURAL JOIN (SELECT numC, SUM(nbjours) AS totaljour
											                   FROM AGENCE.LesEtapes
															   GROUP BY numC
															   HAVING SUM(nbjours) <= &choixJour)C
ORDER BY numC, dateDep;
spool off;															   

