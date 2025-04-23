--Can you find out the total milk production for 2023? Your manager wants this information for the yearly report.
--What is the total milk production for 2023?
select sum(Value)
from milk_production
where year = 2023;


--Which states had cheese production greater than 100 million in April 2023? The Cheese Department wants to focus their marketing efforts there.
--How many states are there?
select State_ANSI
from cheese_production
where year=2023 and Period='apr' and Value>100000000;

--Your manager wants to know how coffee production has changed over the years.
--What is the total value of coffee production for 2011?
select sum(Value)
from coffee_production
WHERE year=2011;

--There's a meeting with the Honey Council next week. Find the average honey production for 2022 so you're prepared.
select avg(Value)
from honey_production
WHERE YEAR = 2022;

--The State Relations team wants a list of all states names with their corresponding ANSI codes. Can you generate that list?
--What is the State_ANSI code for Florida?
SELECT State_ANSI
FROM state_lookup
where State ='Florida';

--For a cross-commodity report, can you list all states with their cheese production values, even if they didn't produce any cheese in April of 2023?
--What is the total for NEW JERSEY?
select t1.State,SUM(t2.value)
from state_lookup as t1 left join test.cheese_production as t2 on t1.State_ANSI = t2.State_ANSI
AND year = 2023 and Period = 'apr'
GROUP BY t1.STATE;

--Can you find the total yogurt production for states in the year 2022 which also have cheese production data from 2023? This will help the Dairy Division in their planning.
select sum(Value)
from yogurt_production
where State_ANSI in
      (select State_ANSI from cheese_production where year=2023 and State_ANSI is not null)
and year = 2022;

--List all states from state_lookup that are missing from milk_production in 2023.
--How many states are there?
select State_ANSI
from state_lookup
where State_ANSI not in(
  select State_ANSI
  from milk_production
  where year = 2023);

--List all states with their cheese production values, including states that didn't produce any cheese in April 2023.
--Did Delaware produce any cheese in April 2023?
select t1.State,t2.Value
    FROM state_lookup AS t1 left join cheese_production as t2 on t1.State_ANSI = t2.State_ANSI
and t2.Value IN(select t2.Value from cheese_production where t2.year=2023 and t2.Period= 'APR');

--Find the average coffee production for all years where the honey production exceeded 1 million.
select avg(value)
from coffee_production where year in (select distinct year from honey_production where Value>1000000);
