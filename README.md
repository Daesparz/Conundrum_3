# Identifying Cohorts

### Conundrum 3 [Dataiku]

Today is February 28, 2017. You are given a data-set (attached) with the order date and whether or not it is the customer’s first ever order from Haiku T-Shirts.

Can we find the number of unique customers in each of the following cohorts?

Cohort A: All customers whose first order was in the last 30 days.

Cohort B: All customers whose first order was in the last 60 days who are not part of Cohort A.

Cohort C: All customers whose first order was in the last 90 days who are not part of Cohort A or B.

This exercise is solved writting postgreSQL queries through the intuitive interface of Tableplus.