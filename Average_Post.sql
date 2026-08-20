SELECT user_id, extract(DAY FROM (max(post_date) - min(post_date)))
FROM posts
WHERE post_date >= '2021-01-01' and post_date <= '2021-12-31'
GROUP by user_id
having count(post_id) > 1;
