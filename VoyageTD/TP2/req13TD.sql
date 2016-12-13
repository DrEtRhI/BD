WITH X AS (
	SELECT numC, rang, pays, nbJours
	FROM (
	SELECT numC, rang, vEtape AS ville, nbJours
	FROM AGENCE.LesEtapes
	UNION
	SELECT numC, 0 AS rang, vDep, 0 AS nbJours
	FROM AGENCE.LesCircuits
	UNION
	SELECT numC, nvl((rmax+1),1) AS rang, vArr, 0 AS nbJours
	FROM AGENCE.LesCircuits
	NATURAL LEFT OUTER JOIN ( SELECT numC, max(rang) AS rmax
	               FROM AGENCE.LesEtapes
	               GROUP BY numC ) )
	JOIN AGENCE.LesVilles ON ( ville=nomV )
	)
SELECT numC, dateDep, pays, (dateDep+nvl(nbJ,0)) AS dateEntree
FROM (
	SELECT X1.numC, X1.rang, X1.pays
	FROM ( X ) X1
	JOIN ( X ) X2
	ON ( X1.numC=X2.numC AND X1.pays!=X2.pays AND X2.rang=(X1.rang-1) )
	UNION
	SELECT numC, rang, pays
	FROM X
	WHERE rang=0 ) A
NATURAL LEFT OUTER JOIN (
	SELECT Y1.numC, Y1.rang, sum(Y2.nbJours) AS nbJ
	FROM ( X ) Y1
	JOIN ( X ) Y2
	ON ( Y1.numC=Y2.numC AND Y1.rang>Y2.rang )
	GROUP BY Y1.numC, Y1.rang ) B
NATURAL JOIN AGENCE.LesProgrammations
ORDER BY numC, dateDep, dateEntree;

