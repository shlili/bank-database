USE sistem;
SELECT A.*
FROM account AS A
ORDER BY A.avail_balance DESC
LIMIT 1