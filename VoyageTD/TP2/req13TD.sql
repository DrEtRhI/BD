
SELECT numC, datedep, pays, (NVL(nbj,0) + datedep) AS dateEntree
FROM (SELECT A1.numC, A1.rang, A1.pays
		FROM (SELECT numC, rang, pays
				FROM AGENCE.LesEtapes JOIN AGENCE.LesVilLes ON (vEtape = nomV))A1
		JOIN (SELECT numC, rang, pays
				FROM AGENCE.LesEtapes JOIN AGENCE.LesVilLes ON (vEtape = nomV))A2 ON (A1.pays <> A2.pays AND A2.rang = (A1.rang - 1) AND A1.numC = A2.numC)
		UNION
		SELECT numC, rang, pays
		FROM AGENCE.LesEtapes JOIN AGENCE.LesVilLes ON (vEtape = nomV)
		where rang = 1)D NATURAL LEFT OUTER JOIN (SELECT E1.numC, E1.rang, SUM(E2.nbJours) AS nbJ
													FROM AGENCE.LesEtapes E1 JOIN AGENCE.LesEtapes E2 ON (E1.rang > E2.rang AND E1.numC = E2.numC)
													GROUP BY E1.numC, E1.rang)C NATURAL JOIN AGENCE.LesProgrammations P
UNION
SELECT numC, dateDep, pays, dateDep AS dateEntree
FROM agence.LesCircuits NATURAL JOIN agence.LesProgrammations JOIN agence.LesVilles ON ( vDep=nomV )
UNION
SELECT numC, dateDep, pays, (dateDep+nbJ) AS dateEntree
FROM (SELECT numC, sum(nbJours) as nbJ
		FROM agence.LesEtapes
		GROUP BY numC )
NATURAL JOIN agence.LesCircuits NATURAL JOIN agence.LesProgrammations
JOIN agence.LesVilles ON ( vArr=nomV )
ORDER BY numC, dateDep, dateEntree;



with X as (
	select numC, rang, pays
	from (
	select numC, rang, vEtape as ville
	from agence.LesEtapes
	union
	select numC, (rmin-1) as rang, vDep
	from agence.LesCircuits
	natural join ( select numC, min(rang) as rmin
	               from agence.LesEtapes
	               group by numC )
	union
	select numC, (rmax+1) as rang, vArr
	from agence.LesCircuits
	natural join ( select numC, max(rang) as rmax
	               from agence.LesEtapes
	               group by numC ) )
	join agence.LesVilles on ( ville=nomV )
	),
     Y as (
	select numC, rang, vEtape as ville, nbJours
	from agence.LesEtapes
	union
	select numC, (rmin-1) as rang, vDep, 0 as nbJours
	from agence.LesCircuits
	natural join ( select numC, min(rang) as rmin
	               from agence.LesEtapes
	               group by numC )
	union
	select numC, (rmax+1) as rang, vArr, 0 as nbJours
	from agence.LesCircuits
	natural join ( select numC, max(rang) as rmax
	               from agence.LesEtapes
	               group by numC )
	)
select numC, dateDep, pays, (dateDep+nvl(nbJ,0)) as dateEntree
from (
	select X1.numC, X1.rang, X1.pays
	from ( X ) X1
	join ( X ) X2
	on ( X1.numC=X2.numC and X1.pays!=X2.pays and X2.rang=(X1.rang-1) )
	union
	select numC, rang, pays
	from X
	where rang=0 ) A
natural left outer join (
	select Y1.numC, Y1.rang, sum(Y2.nbJours) as nbJ
	from ( Y ) Y1
	join ( Y ) Y2
	on ( Y1.numC=Y2.numC and Y1.rang>Y2.rang )
	group by Y1.numC, Y1.rang ) B
natural join agence.LesProgrammations
order by numC, dateDep, dateEntree;


WITH X AS (
	SELECT numC, rang, pays
	FROM (
	SELECT numC, rang, vEtape AS ville
	FROM AGENCE.LesEtapes
	UNION
	SELECT numC, (rmin-1) AS rang, vDep
	FROM AGENCE.LesCircuits
	NATURAL JOIN ( SELECT numC, min(rang) AS rmin
	               FROM AGENCE.LesEtapes
	               GROUP BY numC )
	UNION
	SELECT numC, (rmax+1) AS rang, vArr
	FROM AGENCE.LesCircuits
	NATURAL JOIN ( SELECT numC, max(rang) AS rmax
	               FROM AGENCE.LesEtapes
	               GROUP BY numC ) )
	JOIN AGENCE.LesVilles ON ( ville=nomV )
	),
     Y AS (
	SELECT numC, rang, vEtape AS ville, nbJours
	FROM AGENCE.LesEtapes
	UNION
	SELECT numC, (rmin-1) AS rang, vDep, 0 AS nbJours
	FROM AGENCE.LesCircuits
	NATURAL JOIN ( SELECT numC, min(rang) AS rmin
	               FROM AGENCE.LesEtapes
	               GROUP BY numC )
	UNION
	SELECT numC, (rmax+1) AS rang, vArr, 0 AS nbJours
	FROM AGENCE.LesCircuits
	NATURAL JOIN ( SELECT numC, max(rang) AS rmax
	               FROM AGENCE.LesEtapes
	               GROUP BY numC )
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
	FROM ( Y ) Y1
	JOIN ( Y ) Y2
	ON ( Y1.numC=Y2.numC AND Y1.rang>Y2.rang )
	GROUP BY Y1.numC, Y1.rang ) B
NATURAL JOIN AGENCE.LesProgrammations
ORDER BY numC, dateDep, dateEntree;
