SELECT S.user_id, 
CASE 
    WHEN COUNT(C.action) = 0 THEN 0
    ELSE ROUND(COUNT(CASE WHEN C.action = 'confirmed' THEN 1 END)/COUNT(C.action), 2) 
    END AS confirmation_rate
FROM Signups S LEFT JOIN Confirmations C 
ON S.user_id = C.user_id
GROUP BY S.user_id;
