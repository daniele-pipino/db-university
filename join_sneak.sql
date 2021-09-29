-- selezionare tutti gli studenti iscritti al corso di Laurea in Economia

SELECT `students`.`name`,`students`.`surname`,`degrees`.`name`
FROM `students`
join `degrees`
ON `students`.`id` = `degrees`.`department_id`
WHERE `degrees`.`name`= 'Corso di Laurea in Economia';

-- Selezionare tutti i corsi di Laurea del dipartimento di Neuroscienze

SELECT `departments`.`name`,`degrees`.`name` 
FROM `departments`
JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

-- 