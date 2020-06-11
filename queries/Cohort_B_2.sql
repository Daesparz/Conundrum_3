-- Solution 2: Filtering users from cohort A using outer join
with cohort_a as 
(select customer_id
	from cohort_orders
	where cast(order_date as date) > cast('2017-02-28' as date) - '30 days'::interval
	and order_number = 1)
	  	

select customer_id
	from cohort_orders 
	left join cohort_a using(customer_id)
	where cohort_a.customer_id is null
	and cast(order_date as date) > cast('2017-02-28' as date) - '60 days'::interval
	and order_number = 1
order by customer_id;