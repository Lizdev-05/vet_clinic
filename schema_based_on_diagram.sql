CREATE DATABASE clinic;

CREATE TABLE patients (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE medical_histories (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    admitted_at timestamp,
    patient_id BIGINT REFERENCES patients (id),
    status VARCHAR(50)
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

CREATE TABLE med_histories_and_treatments (
    med_history_id INT REFERENCES medical_histories (id),
    treatment_id INT REFERENCES treatment (id)
);

CREATE INDEX patient_index ON medical_histories(patient_id);
CREATE INDEX medical_history_index ON invoices(medical_history_id);
CREATE INDEX invoice_index ON invoice_items(invoice_id);
CREATE INDEX treatment_index ON invoice_items(treatment_id);
CREATE INDEX medical_history_index ON medial_treatments(medical_history_id);
CREATE INDEX treatment_index ON medial_treatments(treatment_id);




