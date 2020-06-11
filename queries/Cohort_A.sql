select customer_id
		from cohort_orders
	where cast(order_date as date) > cast('2017-02-28' as date) - '30 days'::interval
	  	and order_number = 1;