-- DELIVERABLE 1: The number of retiring Employees by Title
--- USE ERD as ref and prev queries to create Retirement Titles table that holds all
--- titles of current emp who were born b/w Jan 1, 1952 & Dec 31, 1955

-- Retrieve emp_no, first_name & last_name from Employees table:
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
-- Retrieve title, from_date, to_date from Titles table continuing on prev code:
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   t.title,
	   t.from_date,
	   t.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
	
-- remove duplicates using starter code & keep only most recent title of each employee
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, title DESC;
	
-- retrieve number of employees who are about to retire, by most recent job title
SELECT COUNT(ut.emp_no),
			 ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title) DESC;

-- DELIVERABLE 2: Employees Eligible for the Mentorship Program
-- Use ERD as ref and prev queries as example to create mentorship-eligibility table that holds current employees born b/w 01/01/1965 & 12/31/1965

--retrieve emp_no, first_name, last_name, & birth_date from Employees table & from_date, to_date from Dept_emp table and title from Titles table:
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO mentorship_eligibility
FROM employees as e
	LEFT OUTER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	LEFT OUTER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no DESC;