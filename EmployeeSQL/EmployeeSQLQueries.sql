SELECT "Employees"."emp_no", "last_name", "first_name", "sex", "salary"
FROM "Employees"
LEFT JOIN "Salaries" ON "Employees"."emp_no" = "Salaries"."emp_no";


SELECT "first_name", "last_name",  "hire_date"
FROM "Employees"
WHERE EXTRACT(YEAR FROM "hire_date") = 1986;


SELECT "Department_Manager"."dept_no", "dept_name", "Department_Manager"."emp_no", "last_name", "first_name" 
FROM "Department_Manager"
LEFT JOIN "Departments" ON "Department_Manager"."dept_no" = "Departments"."dept_no"
LEFT JOIN "Employees" ON "Department_Manager"."emp_no" = "Employees"."emp_no";

SELECT "Department_Employee"."dept_no", "Department_Employee"."emp_no", "last_name", "first_name", "dept_name"
FROM "Department_Employee"
LEFT JOIN "Departments" ON "Department_Employee"."dept_no" = "Departments"."dept_no"
LEFT JOIN "Employees" ON "Department_Employee"."emp_no" = "Employees"."emp_no";

SELECT "emp_no", "last_name", "first_name", "sex"
FROM "Employees"
WHERE "first_name" = 'Hercules' AND "last_name" LIKE 'B%';

SELECT "Department_Employee"."emp_no", "last_name", "first_name", "dept_name"
FROM "Department_Employee"
LEFT JOIN "Departments" ON "Department_Employee"."dept_no" = "Departments"."dept_no"
LEFT JOIN "Employees" ON "Department_Employee"."emp_no" = "Employees"."emp_no"
WHERE "dept_name" = 'Sales';

SELECT "Department_Employee"."emp_no", "last_name", "first_name", "dept_name"
FROM "Department_Employee"
LEFT JOIN "Departments" ON "Department_Employee"."dept_no" = "Departments"."dept_no"
LEFT JOIN "Employees" ON "Department_Employee"."emp_no" = "Employees"."emp_no"
WHERE "dept_name" = 'Sales' OR "dept_name" = 'Development';

SELECT "last_name", COUNT(DISTINCT "last_name") AS "frequency_last_name"
FROM "Employees"
GROUP BY "last_name"
ORDER BY "frequency_last_name" DESC;