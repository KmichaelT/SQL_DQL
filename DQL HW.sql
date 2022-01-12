

--Q1
select count(*)
from actor
where last_name = 'Wahlberg';
 --> Ans: 2

-- Q2

select count(*)
from payment
where amount between 3.99 and 5.99;

--> Ans: 5,607

-- Q3

select film_id, count(*)
from inventory
group by film_id 
order by COUNT(*) desc 
limit 1;

--> Ans: 350




-- Q4
select count(*)
from customer
where last_name = 'William';
--> Ans: 0



-- Q5
select rental_id, COUNT(*)
from rental
group by rental_id
order by COUNT(*)
limit 1;
--> Ans: 11,233



--Q6

select COUNT(distinct district)
from address;
--> Ans: 378


--Q7

select film_id, COUNT(*) as num_actors
from film_actor
group by film_id
order by num_actors desc 
limit 1;
--> Ans: 508


--Q8

select COUNT(*)
from customer
where store_id =1 and last_name like '%es';

--> Ans: 13

--Q9
select amount, count(*)
from payment
where customer_id between 380 and 430
group by amount
having COUNT(*)>250;
--> Ans: 3

--Q10

select rating, COUNT(*)
from film
group by rating
order by COUNT(*) desc;
--> Ans: 5
