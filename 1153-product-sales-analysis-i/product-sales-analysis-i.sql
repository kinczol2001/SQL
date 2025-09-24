# Write your MySQL query statement below
SELECT product.product_name, sales.year, sales.price
FROM product
RIGHT JOIN sales on sales.product_id=product.product_id