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

SELECT nom_bataille, nom_lieu, date_format(date_bataille, "%d/%m/%Y")
FROM lieu
JOIN bataille
ON lieu.id_lieu = bataille.id_lieu
ORDER BY date_bataille DESC

[5]Nom des potions + coût de réalisation de la potion (trié par coût décroissant)
SELECT nom_potion, cout_ingredient
FROM potion
JOIN ingredient
ON potion.id_potion = ingredient.id_ingredient
ORDER BY cout_ingredient DESC