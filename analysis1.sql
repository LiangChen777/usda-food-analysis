--Find the total milk production for the year 2023.
select
    sum(Value)
from milk_production
where year=2023;

--Show coffee production data for the year 2015.
What is the total value?
SELECT
    sum(Value)
from coffee_production
where Year=2015;

--Find the average honey production for the year 2022.
select
    avg(value)
from honey_production
where year = 2022;

--Get the state names with their corresponding ANSI codes from the state_lookup table. What number is Iowa?
select State_ANSI
    from state_lookup
where State = 'Iowa';

--Find the highest yogurt production value for the year 2022.
select max(Value)
    from yogurt_production
where year=2022;

--Find states where both honey and milk were produced in 2022. Did State_ANSI "35" produce both honey and milk in 2022?
SELECT DISTINCT h.State_ANSI
FROM honey_production h
JOIN milk_production m ON h.State_ANSI = m.State_ANSI
WHERE h.Year = 2022 AND m.Year = 2022 AND h.State_ANSI = 35;


--Find the total yogurt production for states that also produced cheese in 2022.
SELECT SUM(y.Value)
FROM yogurt_production y
WHERE y.Year = 2022 AND y.State_ANSI IN (
    SELECT DISTINCT c.State_ANSI FROM cheese_production c WHERE c.Year = 2022
);
