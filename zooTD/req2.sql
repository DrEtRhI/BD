select nomA, type 
from zoo.LesAnimaux
minus
Select nomA, type 
from zoo.LesMaladies natural join zoo.LesAnimaux;
