select nomA
from zoo.LesAnimaux natural join zoo.LesMaladies
where (nomM = 'grippe' and pays = 'Kenya');

