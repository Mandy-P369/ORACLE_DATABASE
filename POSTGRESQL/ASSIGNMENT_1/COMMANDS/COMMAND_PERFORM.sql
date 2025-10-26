-- Basic Queries 
-- 1. Retrieve all books in the fantasy genre
Select * from books;
Select * from books where genre='Fantasy';
Select * from 
Select sum(price) from books where genre='Fantasy';

-- 2. Find books published after year 1950
select * from books where published_year>1950; 
-- 3. Count of books published after year 1950 
Select count(*) from books where published_year>1950;
-- 4. List all customers from Pune
Select * from customers;
Select * from customers where city='Pune';
-- 5. Count of customers from pune
Select count(*) from customers where city='Pune';
-- 6. Show order placed in november 2023
Select * from orders;
alter table orders add column order_month varchar(50);
update orders set order_month = date_part('month',order_date);
Select * from orders;
--
select * from orders where extract(month from order_date)>9 and extract(year from order_date)=2023;
--
Select count(*) from orders where extract(month from order_date)>9 and extract(year from order_date)=2023;

-- 7.Retrieve total stocks of books available 
Select * from books;
Select count(stock) from books; -- Total stocks obtained is 105....

-- 8.Find details of most expensive books 
Select * from books order by price desc limit 1; 

-- 9.Show all customers who ordered more than 1 quantity of stocks 
Select * from customers;
Select * from orders;
Select name,quantity,order_date from customers,orders where quantity>1;


-- 10. Retrieve all orders where total amount exceed 20$
Select * from orders where total_amount>1600;

-- 11.List all genres available in book table 
Select distinct (genre) from books;
Select count(distinct(genre)) from books; --12

-- 12. Find books with lowest stocks 
Select *  from books ;
Select * from books order by stock asc limit 1;

-- 13. Calculate total revenue generated from all orders;
select  * from books;
Select * from customers;
Select * from orders;
Select sum(total_amount) from orders; -- 144283.77

