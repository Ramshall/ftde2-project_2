# Project 2: DBT Data Warehouse for DVD Rental Business

This project sets up a data warehouse using DBT (Data Build Tool) with PostgreSQL and Docker. It demonstrates the implementation of a medallion architecture and answers key business questions using the DVD rental sample database.

## Table of Contents
- [Setup](#setup)
- [Sample Data](#sample-data)
- [Project Objectives](#project-objectives)
- [DBT Implementation](#dbt-implementation)
- [Data Models](#data-models)

## Setup

This project uses PostgreSQL 12 running in a Docker container. You don't need to create a custom Dockerfile unless you require specific customizations.

To pull the PostgreSQL 12 image from Docker Hub:

```bash
docker pull postgres:12
```
## Sample Data
We use the DVD rental sample database, which can be found [here.](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/)
The DVD rental database represents the business processes of a DVD rental store. The DVD rental database has many objects, including:

*  15 tables
* 1 trigger
* 7 views
* 8 functions
* 1 domain
* 13 sequences
![image](https://github.com/user-attachments/assets/ad68bc74-5093-4d51-b879-e92eb1ab9020)


## Project Objectives
The main goal is to create a schema model using DBT, implementing a medallion architecture:

* Raw Layer: Contains raw data
* Intermediate Layer: Consists of Fact and Dimension tables
* Gold Layer: Includes Mart models to answer specific business questions

For Mart dev, there are three model to answer the questions:
* How much monthly total revenue?
* What is the best selling film?
* Who is the actor who plays the most roles in films?

## DBT Implementation
DBT runs on local host:8081
![image](https://github.com/user-attachments/assets/2b1b687d-0014-4420-89c5-ec4c7951672c)

To view the query of models, check this [directory.](https://github.com/Ramshall/ftde2-project_2/tree/main/dbt/data_warehouse/models)

## Data Models
### Raw Model
TThe raw model is materialized as tables within the raw schema. It selects all records from the following source tables:
* payment
* rental
* staff
* customer
* address
* inventory
* film
* film_actor
* actor
  
### Intermediate model
This layer divides the data into fact and dimension tables.

### Gold model (solve the objective or question)
The gold layer contains models that answer specific business questions.
1. How much monthly total revenue
![Screenshot 2024-08-13 164750](https://github.com/user-attachments/assets/861a446a-82b3-44a4-95e2-918b3654d156)
2. What is the best selling film?
![Screenshot 2024-08-13 164847](https://github.com/user-attachments/assets/e47095e1-ab75-4851-ac67-6c7bb3309e42)
3. Who is the actor who plays the most roles in films?
![Screenshot 2024-08-13 164811](https://github.com/user-attachments/assets/6a690f0e-8bcf-4f24-b08d-0b71339dc42a)

