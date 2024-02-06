WITH Primary_Departments AS (
    SELECT employee_id, department_id 
    FROM Employee
    WHERE primary_flag = 'Y'
),
Single_Departments AS (
    SELECT employee_id, department_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(*) = 1
)
SELECT * FROM Primary_Departments 
UNION 
SELECT * FROM Single_Departments;
