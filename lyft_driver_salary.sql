-- Find Lyft drivers earning $30,000 or less
-- or $70,000 or more.
select * from lyft_drivers
where yearly_salary <= '30000' or yearly_salary >= '70000';

Explanation:

SELECT * retrieves all details.
WHERE filters the records.
<= 30000 finds salaries of $30,000 or less.
>= 70000 finds salaries of $70,000 or more.
OR means either condition can be true.
