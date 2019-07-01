-- Partie1
-- Exercice1 : Créer une base de données languages.
CREATE DATABASE languages;

-- Exercice2 : Créer une base de données webDevelopment avec l’encodage UTF-8.
CREATE DATABASE webDevelopment CHARACTER SET 'utf8';

-- Exercice3 : Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.
CREATE DATABASE IF NOT EXISTS frameworks CHARACTER SET 'utf8';

-- Exercice4 : Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.
CREATE DATABASE IF NOT EXISTS languages CHARACTER SET 'utf8';

-- Exercice5 : Supprimer la base de données languages.
DROP DATABASE languages;

-- Exercice6 : Supprimer la base de données frameworks si elle existe.
DROP DATABASE IF EXISTS frameworks;

-- Exercice7 : Supprimer la base de données languages si elle existe.
DROP DATABASE IF EXISTS languages;
