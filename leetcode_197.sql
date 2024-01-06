SELECT weather2.id 
FROM Weather weather1
JOIN Weather weather2
ON DATEDIFF(weather1.recordDate, weather2.recordDate) = -1
AND w2.temperature > w1.temperature;
