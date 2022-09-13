/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL
    escape_attempt INT,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

ALTER TABLE animal ADD COLUMN specie VARCHAR;
