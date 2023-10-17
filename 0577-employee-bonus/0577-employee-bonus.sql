# Write your MySQL query statement below
SELECT 
    e.name,
    b.bonus 
FROM Employee as e
LEFT JOIN Bonus as b
USING (empId)
WHERE bonus IS NULL or bonus < 1000;