/*
Project Name: Mental Health Analysis Using DASS-21 Scores
Author: Kashish Sharma
Description: This SQL script cleans, transforms, and analyzes mental health data 
based on Anxiety, Stress, and Depression scores (DASS-21).

Dataset Size: 6230 rows (India Mental Health Survey)
Database: MySQL
Date: December 2025
*/

/*---------------------------------------------------------------------------------------------------------------------------------------------
Query 1) How many people fall into each mental health risk level and what percentage of the total population does each group represent?
-----------------------------------------------------------------------------------------------------------------------------------------------
*/
select 
Risk_level,
count(*) as total_people,
round(100 * count(*) / (select count(*) from mental_health_india),2) as pecentage
from mental_health_india
group by Risk_level;

/*
------------------------------------------------------------------------------------------------------------------------------------------------
Query 2) What is the average final DASS-21 score for each gender?
------------------------------------------------------------------------------------------------------------------------------------------------
*/
select 
gender, 
avg(rounded_dass21_raw_score * 2) as avg_score
from mental_health_india
group by gender;

/*
------------------------------------------------------------------------------------------------------------------------------------------------
Query 3)  How does mental health risk vary across different occupations?
------------------------------------------------------------------------------------------------------------------------------------------------
*/
select 
occupation, 
Risk_level  as category,
count(*) as total_people
from mental_health_india
group by occupation, Risk_level
order by occupation;

/*
-----------------------------------------------------------------------------------------------------------------------------------------------
Query 4) What are the average DASS-21 scores across different age groups?
-----------------------------------------------------------------------------------------------------------------------------------------------
*/
select
    case 
        when age_group between 21 and 30 then '21–30'
        when age_group between 31 and 40 then '31–40'
        when age_group between 41 and 50 then '41–50'
        when age_group > 50 THEN '50+'
        else 'Unknown'
    end as age_group,
    avg(rounded_dass21_raw_score * 2) as avg_final_score
from mental_health_india
group by  age_group;


/* 
-----------------------------------------------------------------------------------------------------------------------------------------------
QUERY 5) Which respondents show high risk due to having two or more elevated scores in anxiety, stress, or depression?
   Criteria:
     - Severe anxiety  (>= 15)
     - Severe stress   (>= 15)
     - Severe depression (>= 15)
     - High Risk = At least 2 severe conditions
-------------------------------------------------------------------------------------------------------------------------------------------------
*/
select 
    respondent_id,
    anxiety_score,
    stress_score,
    depression_score,
    (
        (case when anxiety_score >= 15 then 1 else 0 end) +
        (case when stress_score >= 15 then 1 else 0 end) +
        (case when depression_score >= 15 then 1 else 0 end)
    ) as severe_count,
    case
        when (
            (case when anxiety_score >= 15 then 1 else 0 end) +
            (case when stress_score >= 15 then 1 else 0 end) +
            (case when depression_score >= 15 then 1 else 0 end)
        ) >= 2 then 'High Risk'
        else 'Normal'
    end as risk_level
from mental_health_india
where 
    (
        (case when anxiety_score >= 15 then 1 else 0 end) +
        (case when stress_score >= 15 then 1 else 0 end) +
        (case when depression_score >= 15 then 1 else 0 end)
    ) >= 2;
