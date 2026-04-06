Create database Health_Incidents;

SELECT 
    f.incident_id,
    d.date_id,
    e.employee_id ,
    l.location_id,
    i.incident_type_id ,
    s.severity_id,
    dep.department_name,
    f.lost_time_days,
    f.medical_cost
FROM [Fact_Incidents (1)] f
JOIN Dim_Date d ON f.date_id = d.date_id
JOIN Dim_Employee e ON f.employee_id = e.employee_id
JOIN Dim_Location l ON f.location_id = l.location_id
JOIN Dim_Incident_Type i ON f.incident_type_id = i.incident_type_id
JOIN Dim_Severity s ON f.severity_id = s.severity_id
JOIN Dim_Department dep ON f.department_id = dep.department_id;

SELECT *
FROM [Fact_Incidents (1)]
