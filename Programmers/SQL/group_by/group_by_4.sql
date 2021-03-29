SELECT L.lv AS HOUR , NVL(cnt, 0) AS COUNT

    FROM

        (SELECT TO_CHAR(DATETIME,'HH24') as HOUR ,COUNT(*) cnt 

            FROM ANIMAL_OUTS GROUP BY TO_CHAR(DATETIME,'HH24')

                ORDER BY HOUR) E,
        (SELECT (LEVEL -1)lv FROM DUAL CONNECT BY LEVEL <=24)L
        WHERE L.lv = E.HOUR(+) ORDER BY L.lv
