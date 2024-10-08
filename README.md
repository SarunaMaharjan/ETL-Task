# ETL Pipeline 

This project implements an ETL (Extract, Transform, Load) pipeline that processes data from MongoDB collections and loads it into a PostgreSQL database with the help of python. 

## Table of Contents
- [Data Description](#data-description)
- [Installation](#installation)
- [Usage](#usage)
- [Files](#files)
- [SQL Queries](#sql-queries)
- [License](#license)


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

