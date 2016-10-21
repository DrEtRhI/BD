spool ResGBreq13
with X as (Select nomP, count(dateR) as nbrDessert
From repas.LesPlats natural join repas.LeMenu
where typeP = 'dessert'
group by nomP)
Select nomP
From X
where nbrDessert >= 3;
spool off;
