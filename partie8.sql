-- Partie8

-- Exercice1 : Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
-- on fait en sorte d'afficher la colonne name de la table languages et le name de la table frameworks
-- grâce au LEFT JOIN on demande à la partie frameworks de ce lier à la partie languages en alignant les id de chacune et en lui applicant un ORDER BY afin que le classement ce fasse en fonction de l'ordre alphabétique de la colonne name de la table languages
SELECT languages.name,frameworks.name FROM languages LEFT JOIN frameworks ON frameworks.languagesID=languages.id ORDER BY languages.name, frameworks.name;

-- Exercice2 : Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
SELECT languages.name,frameworks.name FROM languages LEFT JOIN frameworks ON frameworks.languagesID=languages.id WHERE frameworks.name IS NOT NULL ORDER BY languages.name, frameworks.name;

-- Exercice3 : Afficher le nombre de framework qu'a un langage.
-- COUNT va nous servir à compter le nombre de name dans la table frameworks similaire entre eux et ensuite on les mets sous un alias avec AS
SELECT languages.name, COUNT(frameworks.name) AS frameworksCounter FROM frameworks RIGHT JOIN languages ON languages.id=frameworks.languagesID GROUP BY name;

-- Exercice4 : Afficher les langages ayant plus de 3 frameworks.
SELECT languages.name, COUNT(frameworks.name) AS frameworksCounter FROM frameworks RIGHT JOIN languages ON languages.id=frameworks.languagesID GROUP BY name HAVING frameworksCounter>3;
