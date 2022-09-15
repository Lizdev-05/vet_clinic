/* Populate database with sample data. */

INSERT INTO animals(name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES('Agumon', date '2020-02-03', '0', 'true', '10.23'),
('Gabumon', date '2018-11-15', '2', 'true', '8'),
('Pikachu', date '2021-07-01', '1', 'false', '15.04'),
('Devimon', date '2017-05-12', '5', 'true', '11'),
('Charmander', date '2020-02-08', '2', 'false', '-11'),
('Plantmon', date '2021-11-15', '2', 'true', '-5.7'),
('Squirtle', date '1993-04-02', '1', 'false', '-12.13'),
('Angemon', date '2005-06-12', '1', 'true', '-45'),
('Boarmon', date '2005-06-07', '7', 'true', '20.4'),
('Blossom', date '1998-10-13', '3', 'true', '17'),
('Ditto', date '2022-05-14', '4', 'true', '22');


INSERT INTO owners(full_name, age)
VALUES('Sam Smith', '34'),
('Jennifer Orwell', '19'),
('Bob', '45'),
('Melody Pond', '77'),
('Dean Winchester', '14'),
('Jodie Whittaker', '38');


INSERT INTO species(name)
VALUES('Pokemon'),
('Digimon'); 

UPDATE animals SET species_id = '2' WHERE name LIKE '%mon';
UPDATE animals SET species_id = '1' WHERE name NOT LIKE '%mon';

UPDATE animals SET owners_id = '1' WHERE name = 'Agumon';
UPDATE animals SET owners_id = '2' WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owners_id = '3' WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owners_id = '4' WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owners_id = '5' WHERE name = 'Angemon' OR name = 'Boarmon';

-- JOIN TABLES
INSERT INTO vets(name, age, date_of_graduation)
VALUES('Vet William Tatcher', '45',  date '2000-04-23'),
('Vet Maisy Smith', '26',  date '2019-01-17'),
('Vet Stephanie Mendez', '64',  date '1981-05-04'),
('Vet Jack Harkness', '38',  date '2008-06-08');

INSERT INTO specialization(vets_id, species_id)
VALUES('1', '1'),
('3', '1'),
('3', '2'),
('4', '2');

INSERT INTO visits(animals_id, vets_id, date_of_visit)
VALUES('1', '1', date '2020-05-24'),
('1', '3', date '2020-07-22'),
('2', '4', date '2021-02-02'),
('3', '2', date '2020-01-05'),
('3', '2', date '2020-03-08'),
('3', '2', date '2020-05-14'),
('4', '3', date '2021-05-04'),
('5', '4', date '2021-02-24'),
('6', '2', date '2019-12-21'),
('6', '1', date '2020-08-10'),
('6', '2', date '2021-04-07'),
('7', '3', date '2019-09-29'),
('8', '4', date '2020-10-03'),
('8', '4', date '2020-11-04'),
('9', '2', date '2019-01-24'),
('9', '2', date '2019-05-15'),
('9', '2', date '2020-02-27'),
('9', '2', date '2020-08-03'),
('10', '3', date '2020-05-24'),
('10', '1', date '2021-01-11');











