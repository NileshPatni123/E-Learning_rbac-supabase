-- Database Schema for e-Learning System

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username TEXT,
    role TEXT
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name TEXT,
    instructor_id INT
);

CREATE TABLE grades (
    grade_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade TEXT
);
