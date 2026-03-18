CREATE DATABASE IF NOT EXISTS edutrack;

USE edutrack;

CREATE TABLE users (
    id BIGINT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE,
    name VARCHAR(255),
    password VARCHAR(255),
    role VARCHAR(255),
    PRIMARY KEY (id)
);