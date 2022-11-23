[1] Nombre de gaulois par lieu (trié par nombre de gaulois décroissant)

SELECT id_lieu, SUM(id_lieu) 
FROM personnage
GROUP BY id_lieu
ORDER BY SUM(id_lieu) DESC