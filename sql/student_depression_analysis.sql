-- Total students
SELECT COUNT(*) AS total_students FROM student_data;

-- Total depressed students
SELECT COUNT(*) AS depressed_students
FROM student_data
WHERE depression = 1;

-- Depression percentage
SELECT 
ROUND(
    (COUNT(CASE WHEN depression = 1 THEN 1 END) * 100.0) / COUNT(*),
    2
) AS depression_rate
FROM student_data;

-- DEPRESSION BY GENDER
SELECT gender,
       COUNT(*) AS total,
       SUM(depression) AS depressed
FROM student_data
GROUP BY gender;

-- DEPRESSION BY AGE GROUP (VERY IMPORTANT)
SELECT
CASE
    WHEN age BETWEEN 18 AND 22 THEN '18-22'
    WHEN age BETWEEN 23 AND 26 THEN '23-26'
    WHEN age BETWEEN 27 AND 30 THEN '27-30'
    ELSE '30+'
END AS age_group,
COUNT(*) AS total_students,
SUM(depression) AS depressed_students
FROM student_data
GROUP BY age_group;

-- ACADEMIC PRESSURE VS DEPRESSION
SELECT academic_pressure,
       COUNT(*) AS total,
       SUM(depression) AS depressed
FROM student_data
GROUP BY academic_pressure
ORDER BY academic_pressure;

-- SLEEP DURATION IMPACT
SELECT sleep_duration,
       COUNT(*) AS total,
       SUM(depression) AS depressed
FROM student_data
GROUP BY sleep_duration;

-- WORK/STUDY HOURS IMPACT
SELECT work_study_hours,
       COUNT(*) AS total,
       SUM(depression) AS depressed
FROM student_data
GROUP BY work_study_hours
ORDER BY work_study_hours;

-- FINANCIAL STRESS IMPACT
SELECT financial_stress,
       COUNT(*) AS total,
       SUM(depression) AS depressed
FROM student_data
GROUP BY financial_stress;

-- FAMILY HISTORY IMPACT
SELECT family_history_mental_illness,
       COUNT(*) AS total,
       SUM(depression) AS depressed
FROM student_data
GROUP BY family_history_mental_illness;

-- HIGH-RISK PROFILE (VERY STRONG)
SELECT gender, age, degree, sleep_duration, academic_pressure, work_study_hours
FROM student_data
WHERE depression = 1
ORDER BY academic_pressure DESC, work_study_hours DESC;
