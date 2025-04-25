
CREATE DATABASE COLLAGE;
USE COLLAGE;


CREATE TABLE Students (
    student_id Int(10),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    email VARCHAR(100),
    phone VARCHAR(15),
    gender CHAR(1),
    department VARCHAR(50),
    enrollment_year INT,
    status VARCHAR(20)
);

CREATE TABLE Courses (
    course_id Int(20),
    course_name VARCHAR(100),
    department VARCHAR(50),
    credits INT,
    semester INT,
    instructor VARCHAR(100),
    course_code VARCHAR(20),
    level VARCHAR(20),
    duration_weeks INT,
    mode VARCHAR(20)
);

CREATE TABLE Faculty (
    faculty_id INT (10),
    name VARCHAR(100),
    department VARCHAR(50),
    dob DATE,
    email VARCHAR(100),
    phone VARCHAR(15),
    hire_date DATE,
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    status VARCHAR(20)
);

CREATE TABLE Library (
    book_id INT (10),
    title VARCHAR(100),
    author VARCHAR(100),
    publisher VARCHAR(100),
    year_published INT,
    isbn VARCHAR(20),
    genre VARCHAR(50),
    shelf_no VARCHAR(10),
    availability_status VARCHAR(20),
    language VARCHAR(30)
);

CREATE TABLE Hostel (
    hostel_id INT (20),
    name VARCHAR(100),
    warden_name VARCHAR(100),
    capacity INT,
    occupied INT,
    contact VARCHAR(15),
    location VARCHAR(100),
    type VARCHAR(20),
    maintenance_cost DECIMAL(10,2),
    gender CHAR(1)
);


ALTER TABLE Students
ADD guardian_name VARCHAR(100);
   



ALTER TABLE Courses
ADD syllabus_url VARCHAR(200);
    


ALTER TABLE Faculty
ADD experience_years INT;
    


ALTER TABLE Library
ADD pages INT;


ALTER TABLE Hostel
ADD no_of_rooms INT;

ALTER TABLE Students DROP COLUMN status;
ALTER TABLE Courses DROP COLUMN mode;
ALTER TABLE Faculty DROP COLUMN status;
ALTER TABLE Library DROP COLUMN availability_status;
ALTER TABLE Hostel DROP COLUMN gender;

ALTER TABLE Students
RENAME COLUMN first_name TO fname,
RENAME COLUMN last_name TO lname,
RENAME COLUMN email TO student_email,
RENAME COLUMN phone TO contact_no;


ALTER TABLE Courses
RENAME COLUMN course_name TO title,
RENAME COLUMN instructor TO prof_name,
RENAME COLUMN course_code TO code,
RENAME COLUMN department TO dept;


ALTER TABLE Faculty
RENAME COLUMN name TO full_name,
RENAME COLUMN email TO faculty_email,
RENAME COLUMN phone TO mobile,
RENAME COLUMN designation TO job_title;


ALTER TABLE Library
RENAME COLUMN title TO book_title,
RENAME COLUMN author TO book_author,
RENAME COLUMN isbn TO isbn_code,
RENAME COLUMN genre TO category;

ALTER TABLE Hostel
RENAME COLUMN name TO hostel_name,
RENAME COLUMN contact TO contact_no,
RENAME COLUMN type TO hostel_type;

select* from Students;
select * from Courses;
select * from Faculty;

select* from Students;













