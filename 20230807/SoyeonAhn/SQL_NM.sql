SELECT MEMBER_ID,MEMBER_NAME,GENDER,DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE GENDER='W'AND SUBSTR(DATE_OF_BIRTH,6,2)='03'AND TLNO IS NOT NULL