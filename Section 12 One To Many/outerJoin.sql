-- LEFT JOIN
SELECT first_name, 
       last_name, 
       order_date, 
       IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders  
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;