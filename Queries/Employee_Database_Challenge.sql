-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT e.emp_no, e.first_name, 
e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_title
FROM employees AS e
INNER JOIN titles AS ti
	ON e.emp_no = ti.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
--GROUP BY e.emp_no, e.first_name, e.last_name, e.birth_date, ti.from_date, ti.to_date
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, 
e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_title
FROM employees AS e
INNER JOIN titles AS ti
	ON e.emp_no = ti.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
--GROUP BY e.emp_no, e.first_name, e.last_name, e.birth_date, ti.from_date, ti.to_date
ORDER BY e.emp_no;

SELECT COUNT(ue.title), ue.title 
INTO title_count
FROM unique_title AS ue
GROUP BY ue.title
ORDER BY COUNT(ue.title) DESC;


SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name,
e.last_name, e.birth_date, 
de.from_date, de.to_date, 
ti.title
INTO mentorship
FROM employees AS e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
LEFT JOIN titles as ti
	ON e.emp_no = ti.emp_no
WHERE e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
	AND  de.to_date='9999-01-01'
ORDER BY e.emp_no, ti.title ASC;