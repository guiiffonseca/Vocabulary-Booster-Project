SELECT 
UCASE(CONCAT(T1.FIRST_NAME, ' ',T1.LAST_NAME)) AS `Nome completo`,
T2.START_DATE AS `Data de início`,
T1.SALARY AS `Salário`
FROM hr.employees AS T1
INNER JOIN hr.job_history AS T2 ON T2.EMPLOYEE_ID = T1.EMPLOYEE_ID
WHERE MONTH(T2.START_DATE) IN (01,02,03)
ORDER BY `Nome completo`, `Data de início`;
