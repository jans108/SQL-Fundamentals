CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	homeroom_number INTEGER NOT NULL,
	phone VARCHAR(15) NOT NULL UNIQUE,
	email VARCHAR(100) UNIQUE,
	graduation_year DATE NOT NULL
)

SELECT * FROM students

CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	homeroom_number INTEGER NOT NULL,
	department VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE,
	phone VARCHAR(15) UNIQUE NOT NULL
)

SELECT * FROM teachers

INSERT INTO students(first_name, last_name, homeroom_number, phone, graduation_year)
VALUES ('Mark', 'Watney', 5, '777-555-1234', '2035-01-01')

INSERT INTO teachers(first_name, last_name, homeroom_number, department, email, phone)
VALUES ('Jonas', 'Salk', 5, 'Biology department', 'jsalk@school.org', '777-555-4321')




