[1] Nombre de gaulois par lieu (trié par nombre de gaulois décroissant)

SELECT adresse_personnage, COUNT(id_personnage)
FROM personnage
GROUP BY id_personnage
ORDER BY id_personnage DESC