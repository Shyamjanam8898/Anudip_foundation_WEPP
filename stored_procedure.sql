/* Stored Procedure 
Commands *\

mysql> create database Store_pro;
Query OK, 1 row affected (0.11 sec)

mysql> use Store_pro;
Database changed

mysql> create table employee(
    -> id int(10) not null primary key,
    -> name varchar(20) not null,
    -> department varchar(20) not null,
    -> salary int(10) not null);
Query OK, 0 rows affected, 2 warnings (0.16 sec)

mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| id         | int         | NO   | PRI | NULL    |       |
| name       | varchar(20) | NO   |     | NULL    |       |
| department | varchar(20) | NO   |     | NULL    |       |
| salary     | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.10 sec)

mysql> insert into employee values
    -> (1,'Shyam','HR',200000),
    -> (2,'Nilesh','Manager',50000),
    -> (3,'Rohit','HR',400000),
    -> (4,'Mohan','Tester',60000),
    -> (5,'Akanksha','HR',80000);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+----+----------+------------+--------+
| id | name     | department | salary |
+----+----------+------------+--------+
|  1 | Shyam    | HR         | 200000 |
|  2 | Nilesh   | Manager    |  50000 |
|  3 | Rohit    | HR         | 400000 |
|  4 | Mohan    | Tester     |  60000 |
|  5 | Akanksha | HR         |  80000 |
+----+----------+------------+--------+
5 rows in set (0.01 sec)

mysql> delimiter //
mysql> create procedure get_all_emp()
    -> begin
    -> select * from Employee;
    -> end //
Query OK, 0 rows affected (0.04 sec)

mysql> delimiter ;
mysql> call get_all_emp();
+----+----------+------------+--------+
| id | name     | department | salary |
+----+----------+------------+--------+
|  1 | Shyam    | HR         | 200000 |
|  2 | Nilesh   | Manager    |  50000 |
|  3 | Rohit    | HR         | 400000 |
|  4 | Mohan    | Tester     |  60000 |
|  5 | Akanksha | HR         |  80000 |
+----+----------+------------+--------+
5 rows in set (0.05 sec)

Query OK, 0 rows affected (0.06 sec)

mysql> delimiter //
mysql> create procedure get_emp_by_dept(IN emp_name varchar(10) )
    -> begin
    -> select * from employee where department=emp_name;
    -> end //
Query OK, 0 rows affected (0.06 sec)

mysql> delimiter ;

mysql> call get_emp_by_dept('HR');
+----+----------+------------+--------+
| id | name     | department | salary |
+----+----------+------------+--------+
|  1 | Shyam    | HR         | 200000 |
|  3 | Rohit    | HR         | 400000 |
|  5 | Akanksha | HR         |  80000 |
+----+----------+------------+--------+
3 rows in set (0.01 sec)

Query OK, 0 rows affected (0.03 sec)

mysql> delimiter //
mysql> create procedure get_emp_count( OUT Total int)
    -> begin
    -> select count(*) into total from employee;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call get_emp_count(@Total)
    -> ;
Query OK, 1 row affected (0.03 sec)

mysql> select @Total;
+--------+
| @Total |
+--------+
|      5 |
+--------+
1 row in set (0.00 sec)

mysql> delimiter //
mysql> create procedure add_employee(IN emp_id int, IN emp_name varchar(20), IN emp_dept varchar(20), In emp_salary int )
    -> begin
    -> insert into employee values(emp_id,emp_name,emp_dept,emp_salary);
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call add_employee(6,'Nikhil','Manager',50000);
Query OK, 1 row affected (0.02 sec)

mysql> select * from employee;
+----+----------+------------+--------+
| id | name     | department | salary |
+----+----------+------------+--------+
|  1 | Shyam    | HR         | 200000 |
|  2 | Nilesh   | Manager    |  50000 |
|  3 | Rohit    | HR         | 400000 |
|  4 | Mohan    | Tester     |  60000 |
|  5 | Akanksha | HR         |  80000 |
|  6 | Nikhil   | Manager    |  50000 |
+----+----------+------------+--------+
6 rows in set (0.00 sec)

mysql> delimiter //
mysql> create procedure call_other_pro(IN emp_name varchar(10) )
    -> begin
    -> select * from employee where name=emp_name;
    -> call get_all_emp();
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call call_other_pro('Shyam');
+----+-------+------------+--------+
| id | name  | department | salary |
+----+-------+------------+--------+
|  1 | Shyam | HR         | 200000 |
+----+-------+------------+--------+
1 row in set (0.01 sec)

+----+----------+------------+--------+
| id | name     | department | salary |
+----+----------+------------+--------+
|  1 | Shyam    | HR         | 200000 |
|  2 | Nilesh   | Manager    |  50000 |
|  3 | Rohit    | HR         | 400000 |
|  4 | Mohan    | Tester     |  60000 |
|  5 | Akanksha | HR         |  80000 |
|  6 | Nikhil   | Manager    |  50000 |
+----+----------+------------+--------+
6 rows in set (0.01 sec)

Query OK, 0 rows affected (0.03 sec)

mysql>