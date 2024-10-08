

CREATE TABLE clients (
    _id TEXT PRIMARY KEY,  -- Change VARCHAR to TEXT for flexible length
    client_name VARCHAR,   -- Example field; add all relevant fields here
    contract_start TIMESTAMP  -- Add other fields, use TIMESTAMP for date fields
);


-- Create Suppliers Table
CREATE TABLE suppliers (
    _id VARCHAR PRIMARY KEY,
    supplier_name VARCHAR -- Add other supplier-specific fields
);

-- Create Sonar Runs Table
CREATE TABLE sonar_runs (
    _id VARCHAR PRIMARY KEY,
    client_id VARCHAR,
    date TIMESTAMP,
    status VARCHAR,
    FOREIGN KEY (client_id) REFERENCES clients(_id)
);

-- Create Supplier-Run Table (many-to-many relationship)
CREATE TABLE supplier_run (
    sonar_run_id VARCHAR,
    supplier_id VARCHAR,
    FOREIGN KEY (sonar_run_id) REFERENCES sonar_runs(_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(_id)
);

-- Create Sonar Results Table
CREATE TABLE sonar_results (
    _id VARCHAR PRIMARY KEY,  -- Assuming each result is unique, but use UUID if necessary
    sonar_run_id VARCHAR,
    supplier_id VARCHAR,
    price_norm NUMERIC, -- Price data from the sonar run
    part_id VARCHAR,
    FOREIGN KEY (sonar_run_id) REFERENCES sonar_runs(_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(_id)
);
