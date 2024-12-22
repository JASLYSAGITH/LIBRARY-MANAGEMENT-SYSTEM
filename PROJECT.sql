
# LIBRARY MANAGEMENT SYSTEM

CREATE DATABASE LIBRARY; # CRETE DATABASE NAMED LIBRARY
USE LIBRARY;

#CREATE TABLES

CREATE TABLE BRANCH
  ( BRANCH_NO INT PRIMARY KEY NOT NULL, 
	MANAGER_ID INT,
    BRANCH_ADRESS VARCHAR(255),
    CONTACT_NO VARCHAR(20)
  );
    
CREATE TABLE EMPLOYEE
   ( EMP_ID INT PRIMARY KEY,
     EMP_NAME CHAR(100),
     POSITION CHAR(200),
     SALARY DECIMAL(10,2),
     BRANCH_NO  INT,
     FOREIGN KEY (BRANCH_NO) REFERENCES BRANCH(BRANCH_NO)
	);
     
CREATE TABLE BOOK
   ( ISBN INT PRIMARY KEY,
     BOOK_TITLE VARCHAR(100),
     CATOGORY VARCHAR(200),
     RENTAL_PRIZE DECIMAL(10,2),
     STATUS VARCHAR(200) CHECK (STATUS IN ('YES' ,'NO')) NOT NULL,
     AUTHOR VARCHAR(150),
     PUBLISHER VARCHAR(225)
	);	


CREATE TABLE CUSTOMER
  (  CUSTOMER_ID  INT PRIMARY KEY,
     CUSTOMER_NAME VARCHAR(100),
     CUSTMER_ADDRESS VARCHAR(200),
     REGIST_DATE DATE
  );

CREATE TABLE ISSUE_STATUS
  (  ISSUE_ID  INT PRIMARY KEY,
     ISSUED_CUST INT,
     ISSUED_BOOKNAME VARCHAR(200),
     ISSUE_DATE DATE,
     ISBN_BOOK INT,
     FOREIGN KEY(ISSUED_CUST) REFERENCES CUSTOMER(CUSTOMER_ID ),
     FOREIGN KEY(ISBN_BOOK) REFERENCES BOOK(ISBN)
  );
  
CREATE TABLE RETURN_STATUS

  (  RETURN_ID INT PRIMARY KEY,
     RETURN_CUST INT,
     RETURN_BOOKNAME VARCHAR(200),
     RETURN_DATE DATE,
     ISBN_BOOK2 INT,
     FOREIGN KEY(ISBN_BOOK2) REFERENCES BOOK(ISBN)
  );
SET SQL_SAFE_UPDATES=0;
DELETE  FROM BRANCH;
SELECT * FROM BOOK;

#INSERT VALUES IN TO THE TABLE
INSERT INTO BRANCH(BRANCH_NO,MANAGER_ID,BRANCH_ADRESS,CONTACT_NO )
VALUES 
    (1, 101, '123 Elm Street, New York, NY', '212555123'),
    (2, 102, '456 Maple Avenue, Los Angeles, CA', '323555234'),
    (3, 103, '789 Pine Road, Chicago, IL', '312555345'),
    (4, 104, '321 Oak Street, Houston, TX', '713555456'),
    (5, 105, '654 Cedar Avenue, Phoenix, AZ', '602555567');
    
    
INSERT INTO EMPLOYEE (EMP_ID, EMP_NAME, POSITION, SALARY, BRANCH_NO)
VALUES
    (201, 'John Doe', 'Manager', 55000.00, 1),
    (202, 'Jane Smith', 'Assistant Manager', 45000.00, 2),
    (203, 'Michael Brown', 'Librarian', 40000.00, 3),
    (204, 'Emily Davis', 'Clerk', 35000.00, 4),
    (205, 'William Wilson', 'Manager', 56000.00, 5);

UPDATE EMPLOYEE SET POSITION='Assistant Manager' WHERE EMP_ID=205;

INSERT INTO EMPLOYEE (EMP_ID, EMP_NAME, POSITION, SALARY, BRANCH_NO)
VALUES
    (206, 'Alice Johnson', 'Senior Librarian', 50000.00, 3),
    (207, 'Bob Miller', 'Librarian', 42000.00, 3),
    (208, 'Charlie Taylor', 'Assistant Librarian', 40000.00, 3),
    (209, 'David Anderson', 'Clerk', 35000.00, 3),
    (210, 'Eve Martinez', 'Janitor', 30000.00, 3),
    (211, 'Michael Brown', 'Librarian', 42000.00, 2),
    (212, 'Emily Davis', 'Clerk', 36000.00, 2),
    
    
    (213, 'William Wilson', 'Janitor', 30000.00, 2),
    (214, 'Olivia Taylor', 'Assistant Librarian', 40000.00, 2),
    (215, 'James Anderson', 'IT Support', 45000.00, 2);
    
    
    INSERT INTO EMPLOYEE (EMP_ID, EMP_NAME, POSITION, SALARY, BRANCH_NO)
VALUES
    (101, 'Alice BABY', 'MANAGER', 50000.00, 1),
    (102, 'Bob Miller KING', 'MANAGER', 42000.00, 2),
    (103, 'Charlie Taylor FRANCIS', 'MANAGER', 40000.00, 3),
    (104, 'David Anderson hang', 'MANAGER', 35000.00, 4),
    (105, 'Eve Martinez kim', 'MANAGER', 30000.00, 5);
    
INSERT INTO BOOK(ISBN,BOOK_TITLE,CATOGORY,RENTAL_PRIZE,STATUS,AUTHOR,PUBLISHER)
VALUES 
    (1001, 'The C Programming Language', 'Programming', 5.99, 'Yes', 'Brian W. Kernighan, Dennis M. Ritchie', 'Prentice Hall'),
    (1002, 'Head First Java', 'Programming', 6.50, 'No', 'Kathy Sierra, Bert Bates', 'O\'Reilly Media'),
    (1003, 'The Great Gatsby', 'Fiction', 3.75, 'Yes', 'F. Scott Fitzgerald', 'Scribner'),
    (1004, 'Introduction to Algorithms', 'Computer Science', 8.99, 'No', 'Thomas H. Cormen', 'MIT Press'),
    (1005, '1984', 'Dystopian', 4.25, 'Yes', 'George Orwell', 'Signet Classics');
  INSERT INTO BOOK (ISBN, BOOK_TITLE, CATOGORY, RENTAL_PRIZE, STATUS, AUTHOR, PUBLISHER)
VALUES
    (1006, 'The History of the Ancient World', 'History', 7.99, 'Yes', 'Susan Wise Bauer', 'W. W. Norton & Company'),
    (1007, 'Guns, Germs, and Steel', 'History', 6.50, 'No', 'Jared Diamond', 'W. W. Norton & Company'),
    (1008, 'The Silk Roads: A New History of the World', 'History', 8.25, 'Yes', 'Peter Frankopan', 'Vintage Books');


INSERT INTO CUSTOMER(CUSTOMER_ID,CUSTOMER_NAME,CUSTMER_ADDRESS,REGIST_DATE)
VALUES 
    (301, 'Alice Johnson', '789 Birch Lane, Seattle, WA', '2024-01-15'),
    (302, 'Bob Miller', '456 Oak Drive, Austin, TX', '2024-02-10'),
    (303, 'Charlie Taylor', '123 Pine Avenue, Boston, MA', '2024-03-05'),
    (304, 'David Anderson', '321 Elm Road, Denver, CO', '2024-04-01'),
    (305, 'Eve Martinez', '654 Cedar Street, Nashville, TN', '2024-05-12');
    
      INSERT INTO CUSTOMER(CUSTOMER_ID,CUSTOMER_NAME,CUSTMER_ADDRESS,REGIST_DATE)
VALUES 
    (306, 'EMMA MARIA', '432 SAND FRANCISCO, USA', '2020-01-15'),
	(307, 'TEKIE SEMAHAR', '775 JEBEL ALI, UAE', '2022-10-14');
    INSERT INTO CUSTOMER(CUSTOMER_ID,CUSTOMER_NAME,CUSTMER_ADDRESS,REGIST_DATE)
VALUES
    (308, 'JOHN LUKKA', '22 BLUE BERRY ROAD, CO', '2021-10-14');
    SELECT * FROM CUSTOMER;
    
    
    
    
     
INSERT INTO ISSUE_STATUS(ISSUE_ID,ISSUED_CUST,ISSUED_BOOKNAME,ISSUE_DATE,ISBN_BOOK)
VALUES 
    (401, 301, 'The C Programming Language', '2024-06-01', 1001),
    (402, 302, '1984','2024-06-15', 1005),
    (403, 303, 'Head First Java','2024-07-01', 1002),
    (404, 304, 'The Great Gatsby', '2024-07-10', 1003),
    (405, 305, 'Introduction to Algorithms', '2024-08-01', 1004);
    
    
INSERT INTO ISSUE_STATUS(ISSUE_ID,ISSUED_CUST,ISSUED_BOOKNAME,ISSUE_DATE,ISBN_BOOK)
VALUES 
    (407, 302, '1984','2023-06-27', 1005);
DELETE FROM ISSUE_STATUS WHERE ISSUE_ID = 407; 
INSERT INTO RETURN_STATUS(RETURN_ID,RETURN_CUST,RETURN_BOOKNAME,RETURN_DATE,ISBN_BOOK2)
VALUES 
	(501, 301, 'The C Programming Language', '2024-06-20', 1001),
    (502, 302, '1984', '2024-06-25', 1005),
    (503, 303, 'Head First Java', '2024-07-15', 1002),
    (504, 304, 'The Great Gatsby', '2024-07-20', 1003),
    (505, 305, 'Introduction to Algorithms', '2024-08-15', 1004);
    
SELECT * FROM BOOK;
SELECT * FROM BRANCH;
SELECT * FROM CUSTOMER;
SELECT * FROM EMPLOYEE;
SELECT * FROM ISSUE_STATUS;
SELECT * FROM RETURN_STATUS;

	
# QU1.Retrieve the book title, category, and rental price of all available books.
    
SELECT BOOK_TITLE,CATOGORY,RENTAL_PRIZE FROM BOOK;

#QU2. List the employee names and their respective salaries in descending order of salary.

SELECT EMP_NAME,SALARY FROM EMPLOYEE ORDER BY SALARY DESC;


#QU3. Retrieve the book titles and the corresponding customers who have issued those books.

SELECT ISSUED_BOOKNAME,ISSUED_CUST FROM ISSUE_STATUS;

#QU4. Display the total count of books in each category. 

select CATOGORY, COUNT(CATOGORY) AS COUNT FROM BOOK GROUP BY CATOGORY;


#QU5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

SELECT EMP_NAME,POSITION,SALARY FROM EMPLOYEE WHERE SALARY>50000;


#QU6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 

SELECT CUSTOMER_ID,CUSTOMER_NAME,REGIST_DATE FROM CUSTOMER 
WHERE REGIST_DATE<'2022-01-01' and CUSTOMER_ID 
NOT in(select ISSUED_CUST from ISSUE_STATUS);


#QU7. Display the branch numbers and the total count of employees in each branch.

SELECT BRANCH_NO,COUNT(EMP_ID) AS NO_OF_EMP FROM EMPLOYEE GROUP BY BRANCH_NO;


#QU8. Display the names of customers who have issued books in the month of June 2023.

SELECT CUSTOMER_ID,CUSTOMER_NAME FROM CUSTOMER 
WHERE CUSTOMER_ID IN
(SELECT ISSUED_CUST FROM ISSUE_STATUS 
WHERE ISSUE_DATE between '2023-06-01'AND'2023-06-30');

select * from ISSUE_STATUS;
SELECT ISSUED_CUST FROM ISSUE_STATUS 
WHERE ISSUE_DATE between '2023-06-01'AND'2023-06-30';

#QU9. Retrieve book_title from book table containing history. 
SELECT BOOK_TITLE , CATOGORY FROM BOOK WHERE CATOGORY='HISTORY';


#QU10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees

SELECT BRANCH_NO, COUNT(EMP_ID) AS NO_OF_EMP FROM EMPLOYEE 
GROUP BY BRANCH_NO HAVING NO_OF_EMP >5;


#QU11. Retrieve the names of employees who manage branches and their respective branch addresses. 

SELECT EMPLOYEE.EMP_NAME,BRANCH.BRANCH_ADRESS FROM EMPLOYEE
 INNER JOIN BRANCH ON EMP_ID=MANAGER_ID;

#QU12. Display the names of customers who have issued books with a rental price higher than Rs. 25.

SELECT DISTINCT CUSTOMER.CUSTOMER_NAME FROM CUSTOMER 
INNER JOIN ISSUE_STATUS ON ISSUED_CUST=CUSTOMER_ID
 WHERE ISBN_BOOK IN (SELECT ISBN FROM BOOK WHERE RENTAL_PRIZE>25);

 
 


UPDATE BOOK SET RENTAL_PRIZE=30 WHERE ISBN=1002;

SELECT * FROM BOOK;
SELECT * FROM ISSUE_STATUS;