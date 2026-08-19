SELECT customers.id,
customers.first_name,
SUM(total_order_cost)
FROM orders
JOIN customers ON customers.id = orders.cust_id
GROUP BY customers.id,
customers.first_name
ORDER BY customers.first_name ASC;
