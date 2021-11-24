USE sistem;
SELECT ROUND(SUM(A.avail_balance),2) AS BANK_MONEY_FROM_LOANS,PT.product_type_cd
FROM account as A, product as P, product_type AS PT
WHERE P.product_type_cd=PT.product_type_cd AND P.product_cd=A.product_cd AND PT.product_type_cd LIKE 'L%'