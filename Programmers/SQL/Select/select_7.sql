SELECT NAME FROM ANIMAL_INS WHERE DATETIME <= ALL (SELECT DATETIME FROM ANIMAL_INS)
