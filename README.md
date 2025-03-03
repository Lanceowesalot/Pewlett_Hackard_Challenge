# Pewlett_Hackard_Challenge
# "Pewlett Hackard" Employee Analysis
In this Challenge "Pewlett Hackard" we were tasked to create and analyze a database of employees between 1980 and 2000. For this project, I modeled the data in an entity relationship diagram, engineered the data by creating a database in pgAdmin using SQL language, and then analyzed the data. 

## Data Modeling
Using QuickDBD (https://www.quickdatabasediagrams.com/) to create an ERD which allowed me to visualize the primary keys, the foreign keys, and other relationships, which aided me in creating the different table schemas in the database in pgAdmin. I also found this very useful for visualizing realtionships while writing queries.

![entity_relationship_diagram](https://github.com/wanderfarther/sql-challenge/assets/132155105/58f7ae90-e02f-41e5-8455-8251f7876208)

## Data Engineering
I used SQL in pgAdmin to create a database of the employees using 6 CVS files. After reviewing the ERD, I used the following table schema to create the tables in the pgAdmin database. This required assigning the correct data type to each data column and creating the correct connections through primary and foreign key assignments. 

![table_schema](https://github.com/wanderfarther/sql-challenge/assets/132155105/31df3d34-8f22-4391-b64f-db3dccef6200)

## Data Analysis
I used SQL to analyze the data in the pgAdmin database I created. I querried for the following data:

Employee number, last name, first name, sex, and salary
![query_1](https://github.com/wanderfarther/sql-challenge/assets/132155105/0c54fe92-b0e8-4f20-94fa-9050ab71c164)

Employee first name, last name, and hire date for the employees who were hired in 1986
![query_2](https://github.com/wanderfarther/sql-challenge/assets/132155105/045a10d2-62b9-4a0f-95a5-de51d43ec282)

Manager of each department, their department number, department name, employee number, last name, and first name
![query_3](https://github.com/wanderfarther/sql-challenge/assets/132155105/fc8e0a55-f2bf-4a12-80b9-e3aa034f32ea)

Employee department number, employee number, last name, first name, and department name
![query_4](https://github.com/wanderfarther/sql-challenge/assets/132155105/33b6bf49-1093-45ac-a417-d88e9b75b2c5)

All employees who's first name is Hercules, last name beings with 'B', and their sex
![query_5](https://github.com/wanderfarther/sql-challenge/assets/132155105/a379e348-b483-41bf-ad18-81056fab1a27)

Employees in the Sales department, their employee number, last name, and first name
![query_6](https://github.com/wanderfarther/sql-challenge/assets/132155105/6b65f1fb-5642-43d8-b084-634d735df0d5)

Employees in the Sales and Development departments, their employee number, last name, first name, and department name
![query_7](https://github.com/wanderfarther/sql-challenge/assets/132155105/2cea8544-7a81-47b6-b447-2d41744eb991)

Frequency counts, in descending order, of all the employee last names
![query_8](https://github.com/wanderfarther/sql-challenge/assets/132155105/699d2720-1fa7-4551-8b12-0282916af8e9)
