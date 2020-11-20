drop database if exists medicalcentre;
create database medicalcentre;
use medicalcentre;
create table IF NOT EXISTS doctor
(DrCode int PRIMARY KEY NOT NULL,
first_name VARCHAR(20),
last_name VARCHAR(20),
address VARCHAR(100),
contact VARCHAR(10),
field_of_specialization VARCHAR(20));  

CREATE TABLE IF NOT EXISTS PATIENT(
patientId INT PRIMARY KEY NOT NULL,
first_name VARCHAR(25),
last_name VARCHAR(25),
gender VARCHAR(10),
age INT,
address VARCHAR(100),
contact VARCHAR(20));

