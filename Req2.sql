-- Numéro, nomn et prénom des adhérents nés après 1960
-- et qui habitent à Grenoble
accept lannee prompt 'Donner une annee de naissance : '
accept laville prompt 'Donner un nom de ville : '
select noAdh, nom, prenom
from biblio.LesAdherents
where adresse = '&laville' and anNais < &lannee;
