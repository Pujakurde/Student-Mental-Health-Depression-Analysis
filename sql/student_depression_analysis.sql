CREATE DATABASE student_mental_health;
USE student_mental_health;
CREATE TABLE student_data (
    id INT PRIMARY KEY,
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    profession VARCHAR(50),
    academic_pressure INT,
    work_pressure INT,
    cgpa DECIMAL(3,2),
    study_satisfaction INT,
    job_satisfaction INT,
    sleep_duration VARCHAR(30),
    dietary_habits VARCHAR(20),
    degree VARCHAR(50),
    suicidal_thoughts VARCHAR(5),
    work_study_hours INT,
    financial_stress INT,
    family_history_mental_illness VARCHAR(5),
    depression INT
);
