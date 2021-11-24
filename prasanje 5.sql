USE sistem;
SELECT IFNULL(COUNT(A.account_id),0) AS acc, B.city
FROM account AS A, branch AS B
WHERE A.OPEN_BRANCH_ID=B.branch_ID
GROUP BY B.city
ORDER BY acc DESC