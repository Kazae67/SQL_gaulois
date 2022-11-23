[1] Nombre de gaulois par lieu (trié par nombre de gaulois décroissant)

SELECT id_lieu, SUM(id_lieu) 
FROM personnage
GROUP BY id_lieu
ORDER BY SUM(id_lieu) DESC

[2] Nom des gaulois + spécialité + village

SELECT nom_personnage, nom_lieu
FROM personnage
FULL JOIN lieu ON nom_lieu = lieu.nom_lieu
