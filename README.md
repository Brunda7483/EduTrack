# EduTrack - Student Management System

## Introduction
EduTrack is a simple web app to manage students. You can see all students, add new ones and edit details.

Tech used: Spring Boot backend, Angular frontend, MySQL database.

## Features
- View student list
- Add student
- Edit student
- Data saved in database

## What you need
- MySQL installed
- Java 21
- Node.js
- VS Code

## How to run
1. Run mysql_auto_setup.bat to setup database. It creates edutrack3 database and table.
2. Open terminal in backend folder: mvn spring-boot:run
3. Open terminal in frontend folder: ng serve
4. Go to http://localhost:4200

Backend runs on port 8080, frontend on 4200.

## Folder structure
- backend: Java code and API
- frontend: Website code
- db: Database file schema.sql
- mysql bat files: For database setup

## API
- GET /students: Get list
- POST /students: Add student

## Development
Edit code in backend or frontend folders. Run mvn or ng serve again.

If MySQL error, check password.

## Conclusion
EduTrack is ready to use. Enjoy!


