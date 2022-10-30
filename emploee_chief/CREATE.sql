CREATE TABLE IF NOT EXISTS chief (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
department VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS emploee (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
department VARCHAR(60) NOT NULL,
chief_id INTEGER REFERENCES chief (id)
);


INSERT INTO chief (name,department)
VALUES
('petrov','it'),
('sidorov','sales')


INSERT INTO emploee (name,department,chief_id)
VALUES
('ivanov','it',1),
('vasechkin','it',1),
('koshkin','sales',2),
('krylov','it',1),
('kruglov','sales',2)


