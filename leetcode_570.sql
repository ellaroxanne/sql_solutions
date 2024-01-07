WITH Managers AS (
    SELECT managerId, COUNT(*) AS direct_reports FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)
SELECT E.name 
FROM Employee E INNER JOIN Managers M 
ON E.id = M.managerId;
