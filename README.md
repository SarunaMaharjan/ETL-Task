# ETL Pipeline for Market Intelligence

This project implements an ETL (Extract, Transform, Load) pipeline that processes data from MongoDB collections and loads it into a PostgreSQL database. The aim is to provide market intelligence solutions for manufacturing clients by analyzing parts data.

## Table of Contents
- [Introduction](#introduction)
- [Data Description](#data-description)
- [Installation](#installation)
- [Usage](#usage)
- [Files](#files)
- [SQL Queries](#sql-queries)
- [License](#license)

## Introduction

At MARKT-PILOT, we provide market intelligence solutions to ensure complete market pricing transparency for our manufacturing clients. The ETL pipeline extracts data from clients, suppliers, sonar runs, and sonar results collections, performs necessary transformations, and loads it into a PostgreSQL database for further analysis.

## Data Description

The data set consists of anonymized sample data in JSON format. It includes the following collections:
- **clients**: Information about our clients.
- **suppliers**: Information on the web shops we search for pricing data.
- **sonar_runs**: Price research for a client, performed by our scraping framework, Sonar.
- **sonar_results**: Price information found in a sonar run.

## Installation

To run this project, ensure you have the following installed:

- Python 3.x
- PostgreSQL
- Required Python packages:
    - pandas
    - sqlalchemy
    - python-dotenv

You can install the required Python packages using pip:

```bash
pip install pandas sqlalchemy python-dotenv
