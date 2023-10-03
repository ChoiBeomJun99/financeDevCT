SELECT A.USER_ID, A.NICKNAME, B.TOTAL_SALES
FROM USED_GOODS_USER A
JOIN
(
SELECT WRITER_ID, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD
WHERE STATUS='DONE'
GROUP BY WRITER_ID
    )B ON A.USER_ID=B.WRITER_ID
WHERE B.TOTAL_SALES>=700000
ORDER BY B.TOTAL_SALES