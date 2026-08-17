SELECT tweet_count as tweet_bucket,
count(*) as users_num
from (SELECT user_id, count(*) as tweet_count from tweets
where extract (year from tweet_date) = '2022'
group by user_id)x
GROUP BY tweet_count
ORDER BY tweet_count;
