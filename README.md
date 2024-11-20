# Database Systems Midterm Answer
The midterm was tested using Microsoft SQL Server. 

Entity Relationship Diagram:
![ERD_Diagram_UTS](https://github.com/user-attachments/assets/5d0c6a2a-f73d-4f07-9882-d38164ce3bdf)

## 1
Create a database and insert all the data to the table
-> Use CREATE DATABASE to make a new database and INSERT query to input all the data.

## 2
Update the MenteeName in MenteeTable to 'Margareta Meta Surya', where the previous name is 'Mahenda Metta Surya'. After that, display all data from MenteeTable.
-> Use UPDATE query and WHERE clause to search 'Mahenda Metta Surya', after that use SELECT query to display the MenteeTable.

Result:
![jawaban_mssql_no_2](https://github.com/user-attachments/assets/b7c536e0-8641-4ccd-88b4-b69673d34c94)


## 3
Update the semester in MentorTable to semester minus 1 where mentor teaches more than 6 credits. After that, display all data from MentorTable.
-> Use UPDATE query and JOIN all related tables, filter the data using WHERE to filter all mentor that teaches more than 6 credits, after that use SELECT query to display the MentorTable.

Result:
![jawaban_mssql_no_3](https://github.com/user-attachments/assets/878cb8ad-d17c-4848-a041-f3bb5f39c216)
