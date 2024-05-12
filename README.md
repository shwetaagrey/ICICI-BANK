# banking-data-warehouse
Welcome to banking-data-warehouse, a comprehensive SQL-based repository designed to streamline the management and analysis of banking data. This repository serves as a robust platform for financial institutions, developers, and data analysts to collaborate on creating, maintaining, and enhancing a structured database environment.
# Project Goals:
To provide a reliable and secure SQL database schema for banking transactions.
To facilitate easy integration with banking applications and services.
To offer a suite of analytical tools that empower data-driven decision-making.
 
# Peoblem Statements: 
# Problem: 
Find the first name of an employee with ID 52 who works at the branch named ‘icic_p’. 
# Solution: 
The query joins the employees and bank_details tables to match the employee’s first name with the branch name where they work. The WHERE clause filters the results for the specific employee ID and branch name.
SELECT ename.first_name, bname.branch_name
FROM employees AS ename
JOIN bank_details AS bname
ON ename.branch_id = bname.branch_id
WHERE ename.employee_id = 52 AND bname.branch_name = 'icic_p';

# Problem: 
Count the number of employees working in the Loan department and display the department’s opening dates and address. 
# Solution: 
The query counts the number of employees in the Loan department by matching the Department_id from the employees table with the Department_id of the Loan department found in the Department table.
SELECT COUNT(Employee_id) AS employee_count, D.Opening_Date, D.Address
FROM employees E
JOIN Department D ON E.Department_id = D.Department_id
WHERE D.Department_name = 'Loan';

# Problem: 
Retrieve details such as department name, address, branch code, department ID, and city for the account number 18190. 
# Solution: 
The query joins the bank_details and department tables to provide comprehensive information about the account with the specified account number.
SELECT D.Department_name, B.Address, B.Branch_code, D.Department_id, B.City
FROM bank_details B
JOIN department D ON B.department_id = D.department_id
WHERE B.account_no = 18190;

# Problem: 
Identify employees who work exclusively in the Loan, HR, or Admin departments. 
# Solution: 
The query selects the department ID, department name, and job ID of employees who work only in the specified departments. The GROUP BY and HAVING clauses ensure that each employee is counted only once for each department.
SELECT E.Department_id, D.Department_name, E.Job_id
FROM Employees E
JOIN Department D ON E.Department_id = D.Department_id
WHERE D.Department_name IN ('Loan', 'HR', 'Admin')
GROUP BY E.Department_id, D.Department_name, E.Job_id
HAVING COUNT(DISTINCT E.Job_id) = 1;

# Problem: 
Find the account type, state, and account number for a customer with a specific ATM number.
# Solution: 
The query retrieves the account type, state, and account number from the account_type, bank_details, and customer tables for the customer with the given ATM number.
SELECT a.type_account, a.account_no, s.state 
FROM account_type a
JOIN bank_details s ON a.account_id = s.account_id
JOIN customer c ON s.customer_id = c.customer_id
WHERE c.ATMNO = 422748663;

# Problem: 
Create a view that shows the address, branch name, department name, first name, and phone number.
# Solution: 
The query creates a view named icic_bank that consolidates information from the bank_details, department, and employees tables.
CREATE VIEW icic_bank AS
SELECT b.address, b.branch_name, d.department_name, e.first_name, e.phone_no
FROM bank_details b
JOIN department d ON b.department_id = d.department_id
JOIN employees e ON d.department_id = e.department_id;

# Problem: 
Create a view that lists the city and department name for accounts with an opening date earlier than May 24, 2004.
# Solution: 
The query creates a view named openingDate that selects the city and department name from the customer and account_type tables where the opening date is before the specified date.
CREATE VIEW openingDate AS
SELECT c.city, d.department_name
FROM customer c
JOIN account_type d ON c.account_id = d.account_id
WHERE d.Opening_Date < '2004-05-24';

# Problem: 
Create a view that includes job details for clerks, managers, and accountants. 
# Solution: 
The query creates a view named employeejobdetails that selects all details from the job_details table for the specified job titles.
CREATE VIEW employeejobdetails AS
SELECT *
FROM job_details
WHERE job_id IN ('clerk', 'manager', 'accountant');

# Problem: 
Change the ATM pin from 42321992 to 423295535 in the job details.
# Solution: 
The query updates the customer table to set the new ATM pin for the customer with the old ATM pin.
UPDATE customer
SET ATMNO = 423295535
WHERE ATMNO = 42321992;

# Problem: 
Change all accounts from the sales department to the admin department and update the account type to saving.
# Solution: 
The query updates the account_type table to set the department name to ‘admin’ and the account type to ‘saving’ for all accounts previously in the sales department.
UPDATE account_type
SET Department_Name = 'admin', Type_Account = 'saving'
WHERE Department_Name = 'sales';



