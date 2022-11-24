[1] Nombre de gaulois par lieu (trié par nombre de gaulois décroissant)

SELECT id_lieu, SUM(id_lieu) 
FROM personnage
GROUP BY id_lieu
ORDER BY SUM(id_lieu) DESC

[2] Nom des gaulois + spécialité + village

SELECT nom_personnage, nom_specialite, nom_lieu
FROM personnage
JOIN specialite 
ON nom_specialite = specialite.nom_specialite
JOIN lieu
ON nom_lieu = lieu.nom_lieu


[3] Nom des spécialités avec nombre de gaulois par spécialité 
(trié par nombre de gaulois décroissant)

SELECT nom_specialite, count(nom_personnage)
FROM specialite
JOIN personnage
ON specialite.id_specialite = personnage.id_specialite
GROUP BY nom_specialite
ORDER BY COUNT(nom_personnage) DESC

[4]Nom des batailles + lieu de la plus récente à la plus ancienne 
(dates au format jj/mm/aaaa)

SELECT nom_bataille, nom_lieu, date_bataille
FROM lieu
JOIN bataille
ON lieu.id_lieu = bataille.id_lieu


