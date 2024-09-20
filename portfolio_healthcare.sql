Select * From braintumor;

#Enable Group By cause
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

#1, Type of tumor and what treat ment is given for each
SELECT Distinct Tumor_Type, Treatment, Count(Treatment) as Number_of_Treatment
FROM braintumor 
Group By Treatment
Order By Number_of_Treatment Desc;

#2 Survival Rate Depending on Tumor Grade

SELECT Tumor_Grade, AVG(Survival_Time) AS Avg_Survival_Time
FROM braintumor
GROUP BY Tumor_Grade
Order By Tumor_Grade;

#3 Which Treatment Works the best

Select Treatment, Tumor_Type, AVG(Time_toRecurrence) as AverageTime From braintumor
Group By Treatment
Order By AverageTime Desc;

#4 Influence of the Location of Tumor
Select Tumor_location, Treatment, Treatment_Outcome, Count(Treatment_Outcome) as Tre From braintumor
Group By Tumor_location, Treatment,Treatment_Outcome
Order By Tre Desc;

# Check if Tumor Grade affect the way of treatment
Select Tumor_Grade, Treatment, Count(Treatment) From braintumor
Group By Tumor_Grade, Treatment;






