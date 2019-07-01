-- Partie2

-- SHOW TABLES; peut être utile dans cette partie afin de voir quels tableaux nous avons dans la base de données actuelle

-- Exercice1 : Dans la base de données webDevelopment, créer la table languages avec les colonnes :
    -- -id (type INT, auto-incrémenté, clé primaire)
    -- -language (type VARCHAR)
-- Voir doc technique pour les différents types et options !!!
USE webDevelopment;
CREATE TABLE languages
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    language VARCHAR(30)
);

-- Exercice2 : Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
    -- -id (type INT, auto-incrémenté, clé primaire)
    -- -tool (type VARCHAR)
CREATE TABLE tools
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tool VARCHAR(30)
);

-- Exercice3 : Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
--     -id (type INT, auto-incrémenté, clé primaire)
--     -name (type VARCHAR)
CREATE TABLE frameworks
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20)
);

-- Exercice4 : Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
--     -id (type INT, auto-incrémenté, clé primaire)
--     -library (type VARCHAR)
CREATE TABLE libraries
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    library Varchar(30)
);

-- Exercice5 : Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
--     -id (type INT, auto-incrémenté, clé primaire)
--     -ideName (type VARCHAR)
CREATE TABLE ide
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    ideName Varchar(30)
);

-- Exercice6 : Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
--     -id (type INT, auto-incrémenté, clé primaire)
--     -name (type VARCHAR)
CREATE TABLE IF NOT EXISTS frameworks
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name Varchar(30)
);

-- Exercice7 : Supprimer la table tools si elle existe.
DROP TABLE IF EXISTS tools;

-- Exercice8 : Supprimer la table libraries
DROP TABLE libraries;

-- Exercice9 : Supprimer la table ide
DROP TABLE ide;

-- TP : Créer la base codex. Y créer une table clients qui aura comme colonnes : voir le lien https://github.com/la-manu-amiens-promo-2/Exercices-SQL-partie-2
CREATE DATABASE codex;
USE codex;
CREATE TABLE clients
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    lastname Varchar(30),
    firstname Varchar(30),
    birthDate DATE,
    adress VARCHAR(100),
    firstPhoneNumber INT,
    secondPhoneNumber INT,
    mail VARCHAR(50)
);
