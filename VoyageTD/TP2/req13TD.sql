
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
													GROUP BY E1.numC, E1.rang)C NATURAL JOIN AGENCE.LesProgrammations P;