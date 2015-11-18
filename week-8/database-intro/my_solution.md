1. select * from states;

2. select * from regions;

3. select state_name, population from states;

4. select state_name, population from states order by population desc;

5. select state_name from states where region_id in ('7');

6. SELECT state_name, population_density
	FROM states
	WHERE population_density >= '50'
	ORDER BY population_density asc;

7. select state_name
	from states
	where population >='1000000' and population <='1500000';

8. select state_name, region_id
	from states
	order by region_id asc;

9. select region_name
	from regions
	where region_name
	like '%central%';

10a. select region_name, state_name
	from regions, states
	order by region_id asc;

10b. select regions.region_name, states.state_name
	 from regions
	 inner join states
	 order by region_id asc;
