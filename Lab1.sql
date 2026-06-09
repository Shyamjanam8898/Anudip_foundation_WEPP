/*● Create a database with the name StudentManagementSystem. 
  ●Create a table with named Student with attributes: ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone
  ●Insert 5 Records in students table */

mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.07 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> create table Student(
    -> Student_id varchar(40) not null primary key,
    -> FirstName varchar(30) not null,
    -> LastName varchar(30) not null,
    -> DateOfBirth datetime not null,
    -> Gender varchar(10) not null,
    -> Email varchar(100) not null,
    -> Phone varchar(10) not null);
Query OK, 0 rows affected (0.10 sec)

mysql> desc Student;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| Student_id  | varchar(40)  | NO   | PRI | NULL    |       |
| FirstName   | varchar(30)  | NO   |     | NULL    |       |
| LastName    | varchar(30)  | NO   |     | NULL    |       |
| DateOfBirth | datetime     | NO   |     | NULL    |       |
| Gender      | varchar(10)  | NO   |     | NULL    |       |
| Email       | varchar(100) | NO   |     | NULL    |       |
| Phone       | varchar(10)  | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.05 sec)

mysql> insert into Student values('S101','Shyam','Prajapati','2006/01/09','Male','shyamjanamprajapati@gmail.com','8898669750');
Query OK, 1 row affected, 1 warning (0.02 sec)

mysql> insert into Student values('S102','Mohan','Panthagani','2000/01/29','Male','mohan@gmail.com','4578986515');
Query OK, 1 row affected, 1 warning (0.04 sec)

mysql> insert into Student values('S103','Nihal','Yadav','2004/04/03','Male','nihal@gmail.com','1547896524'),('S104','Akash','Yadav','2005/05/25','Male','akashyadav@gmail.com','8978456512'),('S105','Akanksha','Tiwari','2005/06/15','Female','tiwariakanksha@gmail.com','4578653215');
Query OK, 3 rows affected, 3 warnings (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 3

mysql> select * from Student;
+------------+-----------+------------+---------------------+--------+-------------------------------+------------+
| Student_id | FirstName | LastName   | DateOfBirth         | Gender | Email                         | Phone      |
+------------+-----------+------------+---------------------+--------+-------------------------------+------------+
| S101       | Shyam     | Prajapati  | 2006-01-09 00:00:00 | Male   | shyamjanamprajapati@gmail.com | 8898669750 |
| S102       | Mohan     | Panthagani | 2000-01-29 00:00:00 | Male   | mohan@gmail.com               | 4578986515 |
| S103       | Nihal     | Yadav      | 2004-04-03 00:00:00 | Male   | nihal@gmail.com               | 1547896524 |
| S104       | Akash     | Yadav      | 2005-05-25 00:00:00 | Male   | akashyadav@gmail.com          | 8978456512 |
| S105       | Akanksha  | Tiwari     | 2005-06-15 00:00:00 | Female | tiwariakanksha@gmail.com      | 4578653215 |
+------------+-----------+------------+---------------------+--------+-------------------------------+------------+
5 rows in set (0.01 sec)