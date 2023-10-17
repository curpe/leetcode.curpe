

SELECT
    v.customer_id,
    COUNT(v.customer_id) as count_no_trans
FROM Visits as v
LEFT JOIN Transactions as t USING (visit_id)
WHERE amount IS NULL 
GROUP BY 1
ORDER BY 2 ASC;