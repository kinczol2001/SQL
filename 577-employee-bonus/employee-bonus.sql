# Write your MySQL query statement below
SELECT employee.name, bonus.bonus
FROM employee
LEFT JOIN bonus ON employee.empId=bonus.empId
WHERE (bonus.bonus<1000 or bonus.bonus is NULL)