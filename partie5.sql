-- Partie5

-- Exercice1 : Dans la table languages, afficher toutes les données de la table.
-- "*" signifie "all"
SELECT * FROM languages;

-- Exercice2 : Dans la table languages, afficher toutes les versions de PHP.
SELECT version FROM languages WHERE language='PHP';

-- Exercice3 : Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
-- OR va nous permettre de demander les versions d'un autre langage
SELECT version FROM languages WHERE language='PHP' OR language='JavaScript';

-- Exercice4 : Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
-- * pour avoir toutes les lignes et WHERE id= pour choisir quels id je veux afficher
SELECT * FROM languages WHERE id=3 OR id=5 OR id=7;

-- Exercice5 : Dans la table languages,afficher les deux première entrées de JavaScript.
-- LIMIT permet de limiter les résultats a un nombre demandé
SELECT * FROM languages WHERE language='JavaScript' LIMIT 2;

-- Exercice6 : Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP
SELECT * FROM languages WHERE language!='PHP';

-- Exercice7 : Dans la table languages,afficher toutes les données par ordre alphabétique.
-- ORDER BY permet de trier par ordre alphabétique en prenant une colonne définie
SELECT * FROM languages ORDER BY language;
