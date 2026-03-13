CREATE DATABASE edutrack3;
USE edutrack3;
CREATE TABLE students (id BIGINT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL UNIQUE, grade VARCHAR(10));
INSERT INTO students (name, email, grade) VALUES ('John Doe', 'john@example.com', 'A'), ('Jane Smith', 'jane@example.com', 'B');
