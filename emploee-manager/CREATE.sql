CREATE TABLE IF NOT EXISTS emploee(
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
department VARCHAR(60) NOT NULL,
manager_id INTEGER REFERENCES emploee(id)
);

INSERT INTO emploee(name,department)
VALUES
('Sidorov','it'),
('Konev','sale'),
('Petrov','it'),
('Zykov','sale'),
('Ivanov','sale');

UPDATE emploee 
    SET manager_id = 3 
    WHERE department = 'it' AND id !=3;

UPDATE emploee 
    SET manager_id = 5 
    WHERE department = 'sale' AND id !=5;
    