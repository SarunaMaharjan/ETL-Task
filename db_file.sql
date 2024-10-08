--Connecting a Database for the datas

CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    contract_start DATE
);

CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(100)
);

CREATE TABLE sonar_runs (
    run_id SERIAL PRIMARY KEY,
    date TIMESTAMP,
    status VARCHAR(50),
    client_id INT REFERENCES clients(client_id)
);

CREATE TABLE sonar_results (
    result_id SERIAL PRIMARY KEY,
    price_norm FLOAT,
    part_id VARCHAR(255),
    supplier_id INT REFERENCES suppliers(supplier_id),
    sonar_run_id INT REFERENCES sonar_runs(run_id)
);
