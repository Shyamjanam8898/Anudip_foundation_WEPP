/* Consider a simple database  Demo with one tables: Employee Employee Table:

 ● Columns:emp_id (Primary Key), first_name, last_name, age, email 

Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years. 

Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25

 Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignment2.sql" Provide comments above each query to indicate the task number and the query's purpose
___________________________________________________________________________________________________________________________________________________________________________________________
*/
mysql> create database Demo;
Query OK, 1 row affected (0.01 sec)

mysql> use Demo;
Database changed
mysql> create table Employee
    -> (emp_id varchar(20) not null primary key,
    -> first_name varchar(10) not null,
    -> last_name varchar(10) not null,
    -> age int(10) not null,
    -> email varchar(100) not null);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> desc employee;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| emp_id     | varchar(20)  | NO   | PRI | NULL    |       |
| first_name | varchar(10)  | NO   |     | NULL    |       |
| last_name  | varchar(10)  | NO   |     | NULL    |       |
| age        | int          | NO   |     | NULL    |       |
| email      | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into employee values
    -> ("E101","Shyam","Prajapati",20,"shyamjanam@gmail.com"),
    -> ("E102","Nilesh","Prajapati",31,"nilesh@gmail.com"),
    -> ("E103","Supriya","Yadav",21,"supriya@gmail.com"),
    -> ("E104","Sonu","Kannaujiya",32,"sonu@gmail.com"),
    -> ("E105","Nikhil","Mourya",33,"nikhil@gmail.com");
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name from employee;
+------------+------------+
| first_name | last_name  |
+------------+------------+
| Shyam      | Prajapati  |
| Nilesh     | Prajapati  |
| Supriya    | Yadav      |
| Sonu       | Kannaujiya |
| Nikhil     | Mourya     |
+------------+------------+
5 rows in set (0.00 sec)

mysql> select first_name,last_name,age from employee where age>30;
+------------+------------+-----+
| first_name | last_name  | age |
+------------+------------+-----+
| Nilesh     | Prajapati  |  31 |
| Sonu       | Kannaujiya |  32 |
| Nikhil     | Mourya     |  33 |
+------------+------------+-----+
3 rows in set (0.00 sec)

mysql> update employee set age=age+1 where age>2;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from employee;
+--------+------------+------------+-----+----------------------+
| emp_id | first_name | last_name  | age | email                |
+--------+------------+------------+-----+----------------------+
| E101   | Shyam      | Prajapati  |  21 | shyamjanam@gmail.com |
| E102   | Nilesh     | Prajapati  |  32 | nilesh@gmail.com     |
| E103   | Supriya    | Yadav      |  22 | supriya@gmail.com    |
| E104   | Sonu       | Kannaujiya |  33 | sonu@gmail.com       |
| E105   | Nikhil     | Mourya     |  34 | nikhil@gmail.com     |
+--------+------------+------------+-----+----------------------+
5 rows in set (0.00 sec)