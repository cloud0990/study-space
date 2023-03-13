테이블 Alias 불일치, 컬럼명 오타 등등..
<br>

***Ex)***
 
~~~ MySql
SELECT
      TU.USRE_ID, TU.USER_NM
    , TB.BOARD_ID, TB.B_SUBJECT, TB.B_CONTENT
FROM TB_USER TU
LEFT JOIN TB_BOARD TB
    ON TB.USER_ID = TU.USER_ID
WHERE
    T1.USER_ID IN (SELECT USER_ID FROM TB_LOGIN_LOG WHERE LOG_YN = 'Y')
    /* T1은 쿼리에 존재하지않음 */
;
~~~