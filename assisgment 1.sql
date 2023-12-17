use mavenmovies;

-- Q.2 = list all details of actor
select * from actor;


-- Q.3 = list all customer information from db
select * from customer;


-- Q.4 = list diffrent country
select distinct country from country;


-- Q.5 = display all active customber
select * from customer where active = 1;


-- Q.6 = list of all rental ids for customer with id 1
select rental_id from rental where customer_id = 1;


-- Q.7 = display all the films whose rental duration is greater than 5
select * from film where rental_duration > 5;


-- Q.8 = list the total of the  film whose replacemnet cost is greater than $15 and less than $20
select * from film where replacement_cost > 15 and replacement_cost <20;


-- Q.9 = display the count of unique first names of actors 
select count(distinct(first_name)) as first_name from actor;


-- Q.10 = display the first 10 records from the customer table 
select * from customer  limit 10;


-- 11. = display the first 3 records from the customer table whose first name starts with 'b' 
select * from customer where first_name like 'b%' limit 3;


-- 12. = display the names of the first 5 movies which are rated as G 
select title, rating from film where rating = 'G' limit 5;


-- 13. = find all customers whose first name starts with 'a'
select * from customer where first_name like 'a%';

-- 14.= find all customer whose first name ends with 'a'
select * from customer where first_name like '%a';

-- 15. = display the list of first 4 cities which starts and end with a 
select city from city where city like 'a%a' limit 4;

-- 16.= find all customer whose first name have 'ni' in any postion
select first_name  from customer where first_name like '%NI%'


-- 17. = find all customer whose first name have 'r' in the secound postion
select first_name from customer where first_name like '_r%';


-- 18. = find all customer whose first name starts with 'a' and are at least 5 character in length
select first_name from customer where first_name like 'a%' and length(first_name) >= 5;


-- 19. = find all customer whose first name starts with 'a' and ends with 'o'
select first_name from customer where first_name like 'a%o';

-- 20 = get the films with pg and pg- 13 rating using IN opertors
select title, rating from film where rating IN ('PG','PG-13');

-- 21 .= get the films with length between 50 to 100 using between opertor
select title, length from film where length between 50 and 100;

-- 22. = get the top 50 actors using limit opertor 
select * from actor limit 50;

-- 23. = get the distinct film ids from inventory table
select distinct film_id from inventory;
