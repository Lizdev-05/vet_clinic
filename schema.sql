/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempt INT,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

ALTER TABLE animals ADD COLUMN specie VARCHAR;

-- relational
CREATE TABLE owners (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    age INT
);

CREATE TABLE species (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

ALTER TABLE animals  DROP COLUMN specie; 

ALTER TABLE animals ADD COLUMN species_id BIGINT REFERENCES species (id);
ALTER TABLE animals ADD COLUMN owners_id BIGINT REFERENCES owners (id);

-- JOIN Table
CREATE TABLE vets (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    date_of_graduation DATE NOT NULL
);

CREATE TABLE specialization (
    vets_id BIGINT REFERENCES vets (id),
    species_id BIGINT REFERENCES species (id)
);

CREATE TABLE visits (
    vets_id BIGINT REFERENCES vets (id),
    animals_id BIGINT REFERENCES animals (id),
    date_of_visit DATE NOT NULL
);


-- Perfomance
ALTER TABLE owners ADD COLUMN email VARCHAR(120);
 
CREATE INDEX ON  owners (email);

CREATE INDEX ON visits (vets_id);

CREATE INDEX ON visits (animals_id);

