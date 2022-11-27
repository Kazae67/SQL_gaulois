[1] Nombre de gaulois par lieu (trié par nombre de gaulois décroissant)
SELECT nom_lieu, count(nom_personnage)
FROM lieu
JOIN personnage
ON lieu.id_lieu = personnage.id_lieu
GROUP BY nom_lieu
ORDER BY COUNT(nom_personnage) DESC

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
JOIN composer
ON ingredient.id_ingredient = composer.id_potion
ORDER BY cout_ingredient DESC

[6]Nom des ingrédients + coût + quantité
de chaque ingrédient qui composent la potion 'Potion V'
 /* 'Potion V' remplacé par 'Miel'*/
SELECT nom_ingredient, cout_ingredient, qte
FROM ingredient
JOIN composer
ON ingredient.id_ingredient = composer.qte
WHERE nom_ingredient = 'Miel'

[7]Nom du ou des villageois qui ont pris le plus de casques dans la bataille 'Bagarre du siècle'
SELECT nom_personnage, nom_bataille, qte
FROM personnage, prendre_casque, bataille
WHERE personnage.id_personnage = prendre_casque.id_personnage
AND prendre_casque.id_personnage = bataille.id_bataille
AND bataille.nom_bataille = 'Bagarre du siècle'

-- SELECT nom_personnage, qte, nom_bataille
-- FROM personnage
-- JOIN prendre_casque
-- ON personnage.id_personnage = prendre_casque.qte
-- JOIN bataille
-- ON bataille.id_bataille = personnage.id_personnage
-- WHERE nom_bataille = 'Bagarre du siècle'
-- GROUP BY qte
-- ORDER BY qte DESC


-- SELECT nom_personnage, id_personnage, nom_bataille
-- FROM personnage
-- INNER JOIN prendre_casque
-- ON personnage.id_personnage = prendre_casque.id_personnage
-- INNER JOIN bataille
-- ON bataille.id_bataille = prendre_casque.id_bataille
-- WHERE nom_bataille = 'Bagarre du siècle'
-- GROUP BY qte
-- ORDER BY qte DESC

