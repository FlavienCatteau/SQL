-- Partie6

-- Exercice1 : Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).
-- LIKE et % vont nous permettre de sélectionner les données dont la version est 2.x, si "%" était devant le 2 nous aurions les versions qui finissent par 2
SELECT * FROM frameworks WHERE version LIKE '2%';

-- Exercice2 : Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.
SELECT * FROM frameworks WHERE id=1 OR id=3;

-- Exercice3 : Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.
-- on utilise BETWEEN pour sélectionnerles données entre deux dates ou deux valeurs
SELECT * FROM ide WHERE date BETWEEN '2010-01-01' AND '2011-12-01';
