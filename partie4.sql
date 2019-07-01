-- Partie4

-- Exercice1 : Insérez les données suivantes dans la table languages de la base webDevelopment :
--     -JavaScript, version 5
--     -PHP, version 5.2
--     -PHP, version 5.4
--     -HTML, version 5.1
--     -JavaScript, version 6
--     -JavaScript, version 7
--     -JavaScript, version 8
--     -PHP, version 7
USE webDevelopment;
-- on utilise INSERT INTO afin de dire où on va insérer les données demandées
INSERT INTO languages(language,version)
-- le VALUE va servir à écrire nos données dans la table qu'on aura décider avec le INSERT INTO
VALUE      ('Javascript',5),
    	   ('PHP',5.2),
    	   ('PHP',5.4),
    	   ('HTML',5.1),
    	   ('Javascript',6),
    	   ('Javascript',7),
    	   ('Javascript',8),
           ('PHP',7);
-- vérification des données
SELECT language, version FROM languages;

-- Exercice2 : Insérez les données suivantes dans la table frameworks de la base webDevelopment :
--     -Symfony, version 2.8
--     -Symfony, version 3
--     -Jquery, version 1.6
--     -Jquery, version 2.10
INSERT INTO frameworks(framework,version)
VALUE       ('Symfony',2.8),
            ('Symfony',3),
            ('Jquery',1.6),
            ('Jquery',2.10);
-- vérification des données
SELECT framework, version FROM frameworks;
