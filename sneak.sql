-- selezionare tutti gli studenti nati nel 1990

SELECT * 
FROM `students`
WHERE date_of_birth LIKE '1990%';

-- selezionare tutti i corsi che valgono piu di 10 crediti

SELECT * 
FROM `courses`
WHERE cfu >= '10';

-- selezionare tutti gli studenti che hanno più di 30 anni

SELECT * 
FROM `students` 
WHERE year(date_of_birth) < '1991';

-- selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea

SELECT * 
FROM `courses` 
WHERE year = '1' and period = 'I semestre';

-- selezionare tutti gli appelli di laurea che avvengono nel pomeriggio dopo le 14 del 20/06/2020

SELECT * 
FROM `exams`
WHERE date = '2020-06-20' AND hour > '14:00:00'