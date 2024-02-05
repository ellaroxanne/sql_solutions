WITH Managers AS (SELECT employee_id, name FROM Employees)
SELECT M.employee_id, M.name, COUNT(E.reports_to) AS reports_count, ROUND(AVG(E.age), 0) AS average_age
FROM Employees E LEFT JOIN Managers M
ON E.reports_to = M.employee_id
GROUP BY reports_to
HAVING reports_to IS NOT NULL
ORDER BY employee_id ASC;
