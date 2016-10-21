spool ResGBreq12
Select avg(count(nomI)) as nbrInviteMoyenne
From repas.LesRepas
group by dateR;
spool off;
