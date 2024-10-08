# ETL Pipeline 

This project implements an ETL (Extract, Transform, Load) pipeline that processes data from MongoDB collections and loads it into a PostgreSQL database with the help of python. 

## Table of Contents
- [Data Description](#data-description)
- [Installation](#installation)
- [Usage](#usage)
- [About Files](#files)



## Data Description

The data set consists of anonymized sample data in JSON format. It includes the following collections:
- **clients**: Information about our clients.
- **suppliers**: Information on the web shops we search for pricing data.
- **sonar_runs**: Price research for a client, performed by our scraping framework, Sonar.
- **sonar_results**: Price information found in a sonar run.

## Installation

- Python 3.x
- PostgreSQL
- Required Python packages:
    - pandas
    - matplotlib
    - networkx
    - sqlalchemy
    - python-dotenv

## Usage
Clone the repository to your local machine.
Modify the PostgreSQL connection settings in the ETL script to include your database credentials.

## About Files
- **jsonfiles** :Contains the MongoDB collections data in JSON format.
- **Extract.ipynb** :Jupyter notebook for data analysis, visualizations, extracting and transforming.
- **db_script.sql** :SQL script to create the necessary tables in PostgreSQL.
- **db_load.sql** :Testing and validating data after loading.
- **db_que(1,2,3,4).sql** :SQL query files for various analytical tasks.