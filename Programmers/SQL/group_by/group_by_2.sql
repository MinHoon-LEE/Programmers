SELECT NAME, COUNT(*) AS COUNT  FROM ANIMAL_INS GROUP BY NAME HAVING COUNT(*) >=2  AND NAME <> "NULL" ORDER BY NAME ;
