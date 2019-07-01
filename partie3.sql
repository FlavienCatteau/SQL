-- Partie3

-- Exercice1 : Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).
SHOW DATABASES;
USE webDevelopment;
ALTER TABLE languages
ADD versions VARCHAR(20);
-- Pour vérifier que la structure du TABLE languages j'utilise DESCRIBE ou DESC
DESC languages;

-- Exercice2 : Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).
ALTER TABLE frameworks
ADD version INT;
DESC languages;

-- Exercice3 : Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.
ALTER TABLE languages
CHANGE versions version VARCHAR(30);
DESC languages;

-- Exercice4 : Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.
ALTER TABLE frameworks
CHANGE name framework VARCHAR(20);
DESC languages;

-- Exercice5 : Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
ALTER TABLE frameworks
MODIFY version VARCHAR(10);

-- TP : Dans la base codex, dans la table clients :
--     -supprimer la colonne secondPhoneNumber
--     -renommer la colonne firstPhoneNumber en phoneNumber
--     -changer le type de la colonne phoneNumber en VARCHAR
--     -ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
USE codex;
--dans la table clients, on supprime la colonne secondPhoneNumber
ALTER TABLE clients
DROP COLUMN secondPhoneNumber;
-- dans la table clients, on renomme la colonne firstPhoneNumber en phoneNumber et on ajoute le type VARCHAR
ALTER TABLE clients
CHANGE firstPhonenumber phoneNumber VARCHAR(15);
-- dans la table clients, on ajoute avec ADD la colonne zipCode et city
ALTER TABLE clients
ADD zipCode VARCHAR(10),
ADD city VARCHAR(20);

-- TP : Version plus rapide
ALTER TABLE clients
DROP COLUMN secondPhoneNumber,
CHANGE firstPhonenumber phoneNumber VARCHAR(15),
ADD zipCode VARCHAR(10),
ADD city VARCHAR(20);
