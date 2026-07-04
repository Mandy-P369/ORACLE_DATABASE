Select * from traindata ;
Select * from traindata limit 50;

WITH my_cte as 
(
	 Select * ,
	 avg(amt)over(order by t.transaction_id ) as "Average_Amount",
	 count(cc_num) over (order by  t.transaction_id) as "Count"
	 from traindata as t 
)
select * from my_cte;