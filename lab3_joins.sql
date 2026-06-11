mysql> create database joins;
Query OK, 1 row affected (0.16 sec)

mysql> use joins;
Database changed

mysql> create table department(
    -> dept_id int(10) not null primary key,
    -> dept_name varchar(20) not null);
Query OK, 0 rows affected, 1 warning (0.16 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(20) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.08 sec)

mysql> insert into department values
    -> (1,'HR'),(2,'IT'),(3,'Finanace'),(4,'Marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finanace  |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> create table employee(
    -> emp_id int(10) not null primary key,
    -> emp_name varchar(20) not null,
    -> dept_id int(10) not null,
    -> foreign key (dept_id) references department(dept_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 5
mysql> create table employee(emp_id int(10) not null primary key,emp_name varchar(20) not null,dept_id int(10) not null,foreign key (dept_id) references department(dept_id));
Query OK, 0 rows affected, 2 warnings (0.06 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| dept_id  | int         | NO   | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> alter table employee modify dept_id int(10);
Query OK, 0 rows affected, 1 warning (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> insert into employee values(1,'Shyam',1),(2,'Nilesh',2),(3,'Nikhil',3),(4,'Supriya',null),(5,'Akash',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | Shyam    |       1 |
|      2 | Nilesh   |       2 |
|      3 | Nikhil   |       3 |
|      4 | Supriya  |    NULL |
|      5 | Akash    |       4 |
+--------+----------+---------+
5 rows in set (0.00 sec)

mysql> select * from Department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finanace  |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee inner join department on employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Shyam    | HR        |
| Nilesh   | IT        |
| Nikhil   | Finanace  |
| Akash    | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee left join department on employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Shyam    | HR        |
| Nilesh   | IT        |
| Nikhil   | Finanace  |
| Supriya  | NULL      |
| Akash    | Marketing |
+----------+-----------+
5 rows in set (0.01 sec)

mysql> select * from Department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | Finanace  |
|       4 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> select * from Employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | Shyam    |       1 |
|      2 | Nilesh   |       2 |
|      3 | Nikhil   |       3 |
|      4 | Supriya  |    NULL |
|      5 | Akash    |       4 |
+--------+----------+---------+
5 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee right join department on employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Shyam    | HR        |
| Nilesh   | IT        |
| Nikhil   | Finanace  |
| Akash    | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee cross join department;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Shyam    | Marketing |
| Shyam    | Finanace  |
| Shyam    | IT        |
| Shyam    | HR        |
| Nilesh   | Marketing |
| Nilesh   | Finanace  |
| Nilesh   | IT        |
| Nilesh   | HR        |
| Nikhil   | Marketing |
| Nikhil   | Finanace  |
| Nikhil   | IT        |
| Nikhil   | HR        |
| Supriya  | Marketing |
| Supriya  | Finanace  |
| Supriya  | IT        |
| Supriya  | HR        |
| Akash    | Marketing |
| Akash    | Finanace  |
| Akash    | IT        |
| Akash    | HR        |
+----------+-----------+
20 rows in set (0.00 sec)