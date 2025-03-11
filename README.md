# E-commerce Back End Starter Code
# PostgreSQL Assignment - Employee Tracker

This repository contains the steps and SQL commands to set up a PostgreSQL database for tracking employee information. The database includes a table for employees with attributes such as name, position, and salary.

## Requirements

- macOS (or any system that supports PostgreSQL)
- PostgreSQL version 14 or higher
- Homebrew (for installation on macOS)

## Steps to Set Up and Run the Database Locally

### 1. Install Homebrew (if not installed)

Homebrew is a package manager for macOS. To install Homebrew, open your terminal and run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

After installing Homebrew, install PostgreSQL version 14 by running:
brew install postgresql@14
To start the PostgreSQL server, run the following command:
pg_ctl -D /opt/homebrew/var/postgresql@14 start
Connect to the PostgreSQL database as the postgres user:
psql -h localhost -U postgres
Once connected, create the employee_tracker database:
CREATE DATABASE employee_tracker;
Switch to the employee_tracker database:
\c employee_tracker
Run the following SQL command to create the employees table:
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL
);
Insert some sample employee data into the table:
INSERT INTO employees (name, position, salary)
VALUES ('John Doe', 'Manager', 60000),
       ('Jane Smith', 'Developer', 50000);
To verify that the data was inserted successfully, run:
SELECT * FROM employees;
You should see the following output:
 id |    name    | position  | salary
----+------------+-----------+--------
  1 | John Doe   | Manager   |  60000
  2 | Jane Smith | Developer |  50000
  When you’re done, you can stop the PostgreSQL server with the following command:
  pg_ctl -D /opt/homebrew/var/postgresql@14 stop

  Troubleshooting
	•	PostgreSQL not starting: If the server doesn’t start, make sure the PostgreSQL service isn’t already running. You can stop any running instances with: 
    sudo pkill -9 postgres
    Then try starting the server again.

	•	Missing .s.PGSQL.5432 file: If you encounter a “file in use” error, delete the file manually:
    sudo rm /tmp/.s.PGSQL.5432