/*
* SQL Course - CASE Exercise - Start
*/

/* 
* Create a new column HospitalLocation
* Kings College is Urban, other hospitals are Rural 
* Use the simple CASE form
*/
 
SELECT
    ps.PatientId
    ,ps.Hospital
    ,CASE ps.hospital
        WHEN 'kings college'
        THEN 'Urban'
        ELSE 'Rural'
        END
    AS hospitallocation
FROM
    dbo.PatientStay ps
ORDER BY
	HospitalLocation;
 
/* 
* Create a new column WardType
* Any ward that contains 'Surgery' is 'Surgical', otherwise 'Non Surgical'
* Use the searched CASE form
*/
 
SELECT
	ps.PatientId
    ,ps.hospital
	,ps.Ward
        ,CASE WHEN ps.ward LIKE '%Surgery' THEN 'Surgical'
        ELSE 'Non Surgical'
        END
        AS WardType
FROM
	dbo.PatientStay ps
ORDER BY
	WardType;
 /*
* Create a new column PatientTariffGroup
* A patient with a Tariff of 7 or more is in the 'High Tariff' group
* A patient with a Tariff of 4 or more but below 7 is in the 'Medium Tariff' group
* A patient with a Tariff below 4 is is in the 'Low Tariff' group
* 
* Optional advanced question: how many patients are in each PatientTariffGroup?
*/

SELECT
	ps.PatientId
    , ps.AdmittedDate
	, ps.Tariff
	, case
        WHEN ps.tariff >= 7 THEN 'High'
    WHEN ps.tariff >= 4 THEN 'Medium'
    else 'low'
    end AS PatientTariffGroup
FROM
	dbo.PatientStay ps
ORDER BY
	PatientTariffGroup
	, ps.Tariff
	, ps.PatientId;
 
 select DATEADD(day,2, datefromparts(2025, 12, 9))

 SELECT DATEADD(week, 2, '1/3/2025')