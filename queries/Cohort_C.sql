-- Solution 1: Detecting customers between 60 and 90 days ago
select customer_id
		from cohort_orders
	where cast(order_date as date) > cast('2017-02-28' as date) - '90 days'::interval
	  	and cast(order_date as date) <= cast('2017-02-28' as date) - '60 days'::interval
	  	and order_number = 1
	order by customer_id;