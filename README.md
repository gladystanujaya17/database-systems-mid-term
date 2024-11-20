![jawaban_mssql_no_7_1](https://github.com/user-attachments/assets/462ec935-9394-489b-b2d3-20b1b98484b9)# Database Systems Midterm Answer
The midterm was tested using Microsoft SQL Server. 

Entity Relationship Diagram: <br />
![ERD_Diagram_UTS](https://github.com/user-attachments/assets/5d0c6a2a-f73d-4f07-9882-d38164ce3bdf)

## 1
Create a database and insert all the data to the table. <br />
-> Use CREATE DATABASE to make a new database and INSERT query to input all the data.

## 2
Update the MenteeName in MenteeTable to 'Margareta Meta Surya', where the previous name is 'Mahenda Metta Surya'. After that, display all data from MenteeTable. <br />
-> Use UPDATE query and WHERE clause to search 'Mahenda Metta Surya', after that use SELECT query to display the MenteeTable.

Result: <br />
![jawaban_mssql_no_2](https://github.com/user-attachments/assets/b7c536e0-8641-4ccd-88b4-b69673d34c94)


## 3
Update the semester in MentorTable to semester minus 1 where mentor teaches more than 6 credits. After that, display all data from MentorTable. <br />
-> Use UPDATE query and JOIN all related tables, filter the data using WHERE to filter all mentor that teaches more than 6 credits, after that use SELECT query to display the MentorTable.

Result: <br />
![jawaban_mssql_no_3](https://github.com/user-attachments/assets/878cb8ad-d17c-4848-a041-f3bb5f39c216)

## 4
Update GPA in the MenteeTable to 3.75 where the mentor name contains minimum 2 words and currently is in semester 7. After that, display all data from MentorTable. <br />
-> Use UPDATE query and JOIN all related tables, filter the data using WHERE to filter the GPA to 3.5. Use LIKE '% %' to filter 2 words in mentor name. After that use SELECT query to display the MentorTable.

Result: <br />
![jawaban_mssql_no_4](https://github.com/user-attachments/assets/317391f0-886b-41e3-8c3f-94e7dd4b3e2d)

## 5
Change the Semester in the Mentors table to Semester minus the last one digits of the MentorId where the last three digits of the MentorId are more than or equal to 5, and then display all the data from the Mentor. <br />
-> Use UPDATE query and JOIN all related tables, use RIGHT() method to take the last three digits from MentorID. After that, use SELECT query to display the MentorTable.

Result: <br />
![jawaban_mssql_no_5](https://github.com/user-attachments/assets/735474d2-3172-4614-9e84-5ef9e16332ea)

## 6
Change the Name in the Mentee table to Name plus the word “MID.” where the Mentee is taught by “Rita” and the Semester of the Mentee is 5. Then display all data from the Mentee. <br />
-> Use UPDATE query and JOIN all related tables, use CONCAT() to manipulate string (add MID.). After that, use SELECT query to display the MenteeTable.

Result: <br />
![jawaban_mssql_no_6](https://github.com/user-attachments/assets/a008d0b3-eb5c-46db-b1e2-f4350c3cba69)

## 7
Delete record in Mentee table where Major of Mentee is Information Technology and Mathematics and then display all data from Mentee. <br />
-> DELETE the DetailMentoring first where MenteeID is taking Information Technology and Mathematics since this table is having a relation with MenteeTable, after that DELETE MenteeTable from Information Technology and Mathematics major. Final step, use SELECT query to display the MenteeTable.

Result: <br />
![jawaban_mssql_no_7_1](https://github.com/user-attachments/assets/ede047d7-1324-47cf-9663-95f33dc47cc9)
![jawaban_mssql_no_7_2](https://github.com/user-attachments/assets/67dd26be-4501-4942-9e58-92d2ea41da9d)

## 8
Create a view that displays MentorID, MentorName, MenteeID, MenteeName, and DiscussionGroup where DiscussionGroup is 1 and the length of the mentor name is 6. <br />
-> Use CREATE VIEW query, after that use SELECT query and filter the data using WHERE. Use SELECT query to display the view.

Result: <br />
![jawaban_mssql_no_8](https://github.com/user-attachments/assets/39699b41-a503-4874-8458-80378ddd92a6)
