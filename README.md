# Project 2: DBT

This project run Postgres with Docker and the tag release of poostgres is 12. You don't need created a Dockerfile to pull postgres like in folder postgress, unless you need customize or automation. You can pull image Postgres 12 from Docker Hub.

``` bash
docker pull postgres:12
```
Sample data that used in this project from https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/
The DVD rental database represents the business processes of a DVD rental store. The DVD rental database has many objects, including:

*  15 tables
* 1 trigger
* 7 views
* 8 functions
* 1 domain
* 13 sequences
![image](https://github.com/user-attachments/assets/ad68bc74-5093-4d51-b879-e92eb1ab9020)


## Objective
The whole project is create schema modelling with dbt. Then, we required to create schema medallion architecture:
* raw: raw data
* intermediate: Fact and dim table
* gold: Mart

For Mart dev, there are three model to answer the questions:
* How much monthly total revenue?
* What is the best selling film?
* Who is the actor who plays the most roles in films?

# DBT
DBT run on local host:8081
![image](https://github.com/user-attachments/assets/2b1b687d-0014-4420-89c5-ec4c7951672c)

## raw model

