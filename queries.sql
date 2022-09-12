/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animal;
SELECT name FROM animal WHERE name LIKE '%mon';
SELECT name FROM animal WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animal WHERE neutered is true AND escape_attempt < 3;
SELECT date_of_birth FROM animal WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempt FROM animal WHERE weight_kg > 10.5;
SELECT * FROM animal WHERE neutered is true;
SELECT * FROM animal WHERE name != 'Gabumon';
SELECT * FROM animal WHERE weight_kg BETWEEN 10.4 AND 17.3;