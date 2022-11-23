exercice 1

SELECT adresse_personnage, COUNT(id_personnage)
FROM personnage
GROUP BY id_personnage
