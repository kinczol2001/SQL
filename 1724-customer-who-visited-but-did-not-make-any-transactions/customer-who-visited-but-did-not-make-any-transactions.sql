# Write your MySQL query statement below
SELECT visits.customer_id, count(visits.customer_id) as count_no_trans 
FROM visits
LEFT JOIN transactions on visits.visit_id=transactions.visit_id
WHERE transaction_id is NULL
GROUP BY visits.customer_id