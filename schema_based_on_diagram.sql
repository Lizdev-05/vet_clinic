CREATE DATABASE clinic;

CREATE TABLE patients (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE medical_histories (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    admitted_at timestamp,
    patient_id BIGINT REFERENCES patients (id)
);


CREATE TABLE invoices (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    total_amount DECIMAL,
    generated_at timestamp,
    payed_at timestamp,
    medical_histories_id BIGINT REFERENCES medical_histories (id)
);

CREATE TABLE treatment(
      id BIGSERIAL NOT NULL PRIMARY KEY,
      type VARCHAR,
      name VARCHAR
);

CREATE TABLE invoice_items (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    unit_price DECIMAL,
    quantity INT,
    total_price DECIMAL,
    invoice_id BIGINT REFERENCES invoices (id)
    treatment_id BIGINT REFERENCES treatment (id)
);







