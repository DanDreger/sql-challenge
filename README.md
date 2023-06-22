# sql-challenge
This code is a research project about people whom Pewlett Hackard (a fictional company) employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

This code involves:
* designing the tables to hold the data from the CSV files
* importing the CSV files into a SQL database
* answer questions about the data

# File Structure
* The schemata lives in the EmployeeSQL directory
* Queries live in the queries.sql file in the EmployeeSQL directory
* ERD images live in the root directory

# Tech Stack
* PostgreSQL
* pgAdmin
* https://app.quickdatabasediagrams.com/

Sr Leadership asked to provide the following queries, which are included as part of the queries.sql file.

* List the employee number, last name, first name, sex, and salary of each employee (2 points)
* List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
* List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
* List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
* List each employee in the Sales department, including their employee number, last name, and first name (2 points)
* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
* List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
