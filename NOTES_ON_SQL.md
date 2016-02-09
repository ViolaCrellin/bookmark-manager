# Bookmark Manager Video
Database interaction on add link, sign up, sign in
​
Database will have a URL
​
SQL - structured query Language
​
SQL select syntax -
​
SELECT column_name, column_name
FROM table_name
​
_and_
​
SELECT * FROM table_name
​
### What is SQL?
​
* Stands for structured query language
* Lets you access and manipulate databases
* is an ANSI (American National Standards Institute) standard
​
### What can SQL do?
​
* It can execute queries against a database
* It can insert records in a database (*C*rud) CREATE
* It can retrieve data from a database (c*R*ud) RETRIEVE
* It can update records in a database (cr*U*d) UPDATE
* It can delete records in a database (cru*D*) DELETE
* It can create new databases
* It can create new tables in a database
* It can create stored procedures in a database
* It can create views in a database
* It can set permissions on tables, procedures and views
​
Postgres - free, open source, powerful, favoured within community
​
psql postgres to enter the psql command line
​
​
### What is a table?
Like a spreadsheet in excel
Stores data
Big table
Each one stores data for a particular website
​
​
\l lists all your databases <br>
\q to quit psql <br>
\c _database-name_ to connect to a database <br>
\dt to list tables in the database <br>
​
SELECT * FROM _table-name_; to view table <br>
** in this case is a wildcard, says to select all users <br>
Can replace the star with a column name
​
Can also say SELECT * FROM _table-name_ WHERE _column-name_ = _column-id_;
DO NOT FORGET ; EVER
​
For example when logging in to a website, the website will say:
SELECT * FROM database WHERE _your-email_ = _your-email_
​
We do not want to be so close our data
​
We want to be able to say things like Users.all or Users.first.email
​
ORMs are a way to do that
​
### Some of the most important SQL Commands
__SELECT__ - extracts data from a database <br>
__UPDATE__ - updates data in a database <br>
__DELETE__ - deletes data in a database <br>
__INSERT INTO__ - inserts new data in a database <br>
__CREATE DATABASE__ - creates a new database <br>
__ALTER DATABASE__ - modifies a database <br>
__CREATE TABLE__ - creates a new table <br>
__ALTER TABLE__ - modifies a table <br>
__DROP TABLE__ - deletes a table <br>
__CREATE INDEX__ - creates an index (search key) <br>
__DROP INDEX__ - deletes an index
​
18 mins in
