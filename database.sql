CREATE DATABASE lesson_platform;
USE lesson_platform;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(255),
  role ENUM('TEACHER','STUDENT')
);

CREATE TABLE courses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(100),
  teacher_id INT,
  FOREIGN KEY (teacher_id) REFERENCES users(id)
);

CREATE TABLE lessons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  course_id INT,
  topic VARCHAR(150),
  description TEXT,
  lesson_date DATE,
  FOREIGN KEY (course_id) REFERENCES courses(id)
);
