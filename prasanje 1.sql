USE sistem;
SELECT COUNT(A.account_id) AS acc, B.city
FROM account AS A, branch AS B
WHERE A.OPEN_BRANCH_ID=B.branch_ID
GROUP BY B.city
ORDER BY acc DESC
limit 1