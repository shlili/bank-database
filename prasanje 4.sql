USE sistem;
/*CREATE VIEW m AS 
SELECT E.emp_id,E.FIRST_NAME,E.LAST_NAME,E.START_DATE,E.END_DATE,E.SUPERIOR_EMP_ID as superior,E.TITLE,
TIMESTAMPDIFF(YEAR,E.start_date,IFNULL(E.end_date,CURDATE())) AS YEARS_WORKING
FROM employee AS E
ORDER BY E.START_DATE ASC
LIMIT 1;*/
SELECT p.*,e.first_name AS superior_name,e.last_name AS superior_surname
FROM m AS p, employee AS e
WHERE p.superior=e.emp_id