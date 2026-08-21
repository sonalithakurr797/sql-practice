select city,count(city) as total_orders from users 
join trades 
on trades.user_id = users.user_id
where status = 'Completed'
GROUP by city
order by total_orders DESC
limit 3
