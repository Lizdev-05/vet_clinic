CREATE DATABASE clinic;

CREATE TABLE patients (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
);

CREATE TABLE medical_histories (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    admitted_at timestamp
    patient_id BIGINT REFERENCES patients (id),
);



