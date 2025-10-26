Select * from books ;
Select * from customers;
Select * from orders;
-- 1. Retrieve total book sold for each genre 
Select b.genre,sum(o.Quantity) as total_solds from orders o join books b on o.book_id = b.book_id group by b.genre;

-- 2. Find average price of books in Fantasy Genre 
Select * from books;
Select avg(price) as average_price from books where genre='Fantasy';
Select sum(price) as total_price from books where genre!='Fantasy';
Select sum(price) as Fantasy_price from books where genre ='Fantasy';
						--
-- 3. Find most frequently ordered books
Select book_id ,count(order_id) as order_count 
from orders group by book_id  order by order_count limit 1;
				    	 --
Select o.book_id ,b.title,count(o.order_id) as order_count from orders o 
join 
books b  on
b.book_id = o.book_id
group by  o.book_id,b.title  
order by  order_count desc limit 1;
-- 4.Show top 3 most expensive books of fantasy genre 
Select * from books;
Select * from books where genre ='Fantasy' order by price desc limit 3; --Final

--5.Retrieve the total quantity of books bought by each other ...
Select  b.author,sum(o.quantity) as total_book_sold from orders o 
join 
books b on o.book_id = b.book_id
group by b.author ;

-- 6. List customers who have placed atleast 2 orders
Select customer_id,count(order_id) as order_count 
from orders group by customer_id  having count(order_id) >=2;
				-- or
Select o.customer_id,c.name, count(o.order_id) as order_count from orders o
join
customers c on c.customer_id = o.customer_id
group by o.customer_id,c.name having count(order_id) >=2;

-- 7. List the cities where customer who spent over 600 are located...
Select distinct c.city, total_amount from orders o
join
customers c on 
o.customer_id = c.customer_id
where o.total_amount>1800;

-- 8. Find the customers who spent more on orders
Select  c.customer_id,c.name,sum(o.total_amount) as total_spent from customers c
join
orders o on
c.customer_id = o.customer_id 
group by c.customer_id , c.name
order by total_spent desc limit 1 ;

-- 9. Calculate the stock remaining after fulfilling all orders ...
Select b.book_id,b.title,b.stock,coalesce(sum(o.quantity),0) as order_quantity,
b.stock-coalesce(sum(o.quantity),0) as remaining_stock from books b
Left join 
orders o
on b.book_id = o.book_id
group by b.book_id ;  	-- We will use the left join in this becuase we will have the all the book_id
						    -- inside the book table but we donot have all the book_id inside the order_table ...
























