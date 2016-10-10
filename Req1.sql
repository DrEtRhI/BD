-- le titre des livres de la bilbiotheque
spool ResReq2
select titre
from biblio.LeCatalogue;
spool off;
