USE myrames-prod-db;

-- Création de la table voies
CREATE TABLE voies (
    num_voie INT(11) NOT NULL,
    interdite TINYINT(1) NOT NULL,
    PRIMARY KEY (num_voie)
);

-- Création de la table rames
CREATE TABLE rames (
    num_serie VARCHAR(12) NOT NULL,
    type_rame VARCHAR(50) NOT NULL,
    voie INT(11) UNIQUE,
    conducteur_entrant VARCHAR(50) NOT NULL,
    PRIMARY KEY (num_serie),
    FOREIGN KEY (voie) REFERENCES voies(num_voie)
);

-- Création de la table Tache
CREATE TABLE taches (
    num_serie VARCHAR(12) NOT NULL,
    num_tache INT(11) NOT NULL,
    tache TEXT NOT NULL,
    PRIMARY KEY (num_serie, num_tache),
    FOREIGN KEY (num_serie) REFERENCES rames(num_serie)
);
