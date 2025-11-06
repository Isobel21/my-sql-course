SELECT
    ps.patientid
    ,ps.hospital
    ,ps.Ward
    ,ps.admitteddate
    ,ps.DischargeDate
    ,datediff(day, admitteddate, DischargeDate)+1 AS DaysInHospitals
FROM PatientStay ps

WHERE ps.Hospital IN ('kingston', 'PRUH')
ORDER BY 
    ps.PatientId DESC

--JOINING
SELECT * FROM PatientStay
SELECT * FROM DimHospitalBad

SELECT * FROM PatientStay ps JOIN DimHospital h ON ps.Hospital = h.Hospital

-- preferred layout
SELECT
    p.PatientId
    ,p.AdmittedDate
    ,h.HospitalType
    ,p.Hospital
FROM PatientStay p RIGHT JOIN DimHospitalBad h ON p.Hospital = h.Hospital


SELECT * FROM DimHospitalBad



/*
-- ,DischargeDate DESC
-- AND Ward LIKE '%surgery%'
-- AND AdmittedDate BETWEEN '2024-02-27' AND '2024-03-02'


-- SELECT DATEDIFF(DAY, '2024-07-22')

-- SELECT DATEADD(WEEK, -2, '2025-11-06')
-- new column days in hospital
-- calc days in hosp
*/