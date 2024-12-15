INSERT INTO account(username,password,email,create_on)
VALUES
('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP)

SELECT * FROM account

INSERT INTO job(job_name)
VALUES
('Astronaut')

SELECT * FROM job

INSERT INTO job(job_name)
VALUES
('President')

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
(1,1,CURRENT_TIMESTAMP)

SELECT * FROM account

UPDATE account
SET last_login = CURRENT_TIMESTAMP

UPDATE account
SET last_login = create_on

UPDATE account_job
SET hire_date = account.create_on
FROM account 
WHERE account_job.user_id = account.user_id

UPDATE account 
SET last_login = CURRENT_TIMESTAMP
RETURNING email, create_on, last_login

SELECT * FROM job

INSERT INTO job(job_name)
VALUES
('Cowboy')

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name

CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)

ALTER TABLE information
RENAME TO new_info

SELECT * FROM new_info

ALTER TABLE new_info
RENAME COLUMN person TO people

INSERT INTO new_info(title)
VALUES 
('some new title')

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL 

ALTER TABLE new_info
DROP COLUMN people

CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1900-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
	salary INTEGER CHECK (salary > 0)
)

SELECT * FROM employees

INSERT INTO employees(
first_name,
last_name,
birthdate,
hire_date,
salary
)
VALUES
('Sammy', 'Smith', '1990-11-03', '2010-01-01', 200)

