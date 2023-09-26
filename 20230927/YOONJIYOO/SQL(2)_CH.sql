/* 계층형 쿼리 LEVEL~CONNECT BY절 -1=<X=<24 걸면 0~23 반환 
!주의: COUNT같은 집계함수 사용할 때 GROUP BY 안걸어주면 오류발생!!!
자꾸 잊어버리는 사항 체크...꼭
*/

SELECT HOUR, COUNT(B.DATETIME)
FROM (
    SELECT LEVEL-1 AS HOUR
    FROM DUAL
    CONNECT BY LEVEL<=24
)A LEFT JOIN ANIMAL_OUTS B
ON A.HOUR=TO_CHAR(B.DATETIME,'HH24')
GROUP BY HOUR
ORDER BY HOUR