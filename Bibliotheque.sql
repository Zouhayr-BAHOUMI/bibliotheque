create table Membre (
    id_membre  SERIAL PRIMARY KEY,
    nom VARCHAR(55) NOT NULL,
    prenom VARCHAR NOT NULL,
    email  VARCHAR NOT NULL,
    phone  VARCHAR(155) NOT NULL,
    cin  VARCHAR(155) NOT NULL,
    adresse  VARCHAR(155) NOT NULL
);

create table Livre (
    id_livre  SERIAL PRIMARY KEY,
    titre VARCHAR(55) NOT NULL,
    auteur VARCHAR NOT NULL,
    editeur  VARCHAR NOT NULL,
    annee_publication  Date NOT NULL
);

CREATE TABLE Emprunts (
    id_Emprunt SERIAL PRIMARY KEY,
    id_membre INT NOT NULL,
    id_livre INT NOT NULL,
    fullName VARCHAR(55) NOT NULL,
    dateEmprunt DATE NOT NULL,
    dateRetour DATE NOT NULL,
    CONSTRAINT fk_membre
        FOREIGN KEY (id_membre)
        REFERENCES Membre(id_membre)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_livre
        FOREIGN KEY (id_livre)
        REFERENCES Livre(id_livre)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);