/* 
!작은 따옴표를 큰 따옴표로 쓰는 실수때문에 계속 오류남... 주의하기... 
*/

SELECT SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM(
SELECT TO_CHAR(SALES_DATE, 'YYYY-MM-DD') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE 
WHERE TO_CHAR(SALES_DATE,'YYYY-MM')='2022-03'
UNION
SELECT TO_CHAR(SALES_DATE, 'YYYY-MM-DD') AS SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE 
WHERE TO_CHAR(SALES_DATE,'YYYY-MM')='2022-03')
ORDER BY SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC

