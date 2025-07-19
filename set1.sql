--Q1: Who is the senior most employee based on job title?--

select last_name,first_name,title
from employee
order by levels
limit 1

--Q2: Which countries have the most Invoices?--

select invoice_id,billing_city,total
from invoice
order by total desc
limit 1

--Q3: What are top 3 values of total invoice?--

select total
from invoice
order by total desc
limit 3

--Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. --
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals/-

select billing_city,
sum(total) as invoicetotal
from invoice
group by billing_city
order by invoicetotal desc

--Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer.-- 
Write a query that returns the person who has spent the most money./-

select customer_id,sum (total)as totalspending
from invoice
group by customer_id
order by totalspending desc
limit 1

-/script to find customer name! who is the best customer?/-

select last_name,first_name
from customer
where customer_id=5

