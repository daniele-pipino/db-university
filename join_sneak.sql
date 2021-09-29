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

-- selezionare tutti i corsi in cui insegna fulvio amato

SELECT `courses`.`name`,`courses`.`id`,`course_teacher`.`teacher_id` 
FROM `courses`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`teacher_id`
WHERE `teacher_id` = 44;

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `degrees`.`name`,`departments`.`name`,`students`.`name`,`students`.`surname`  
FROM `students`
JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`name`,`students`.`surname`;

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

SELECT `degrees`.`id`,`degrees`.`name`,`courses`.`degree_id`,`courses`.`name`,`course_teacher`.`teacher_id`,`teachers`.`id`,`teachers`.`name`,`teachers`.`surname`
FROM `degrees`
JOIN`courses`
ON `degrees`.`id` = `courses`.`degree_id`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`teacher_id`
JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`;

-- 