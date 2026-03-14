-- Use the EduTrack database
USE edutrack;

-- Create students table
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    grade VARCHAR(10)
);

-- Create attendance table
CREATE TABLE IF NOT EXISTS attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    attendance_date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Add students
INSERT INTO students (name,email,grade) VALUES
('Rahul','rahul@gmail.com','A'),
('Anita','anita@gmail.com','B');

-- Mark attendance
INSERT INTO attendance (student_id,attendance_date,status) VALUES
(1,'2026-03-14','Present'),
(2,'2026-03-14','Absent');

-- View attendance history
SELECT s.name, a.attendance_date, a.status
FROM attendance a
JOIN students s ON a.student_id = s.id;