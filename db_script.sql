
-- Create Clients Table
CREATE TABLE clients (
    _id TEXT PRIMARY KEY,  
    client_name VARCHAR,  
    contract_start TIMESTAMP  
);


-- Create Suppliers Table
CREATE TABLE suppliers (
    _id VARCHAR PRIMARY KEY,
    supplier_name VARCHAR 
);

-- Create Sonar Runs Table
CREATE TABLE sonar_runs (
    _id VARCHAR PRIMARY KEY,
    client_id VARCHAR,
    date TIMESTAMP,
    status VARCHAR,
    FOREIGN KEY (client_id) REFERENCES clients(_id) 
);

-- Create Sonar Results Table
CREATE TABLE sonar_results (
    _id VARCHAR PRIMARY KEY,  
    supplier_id VARCHAR,
    price_norm NUMERIC, 
    part_id VARCHAR,
    FOREIGN KEY (sonar_run_id) REFERENCES sonar_runs(_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(_id)
);
