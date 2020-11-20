create database if not exists craiglist;
use craiglist;

CREATE TABLE IF NOT EXISTS USER(
userID INT PRIMARY KEY NOT NULL,
first_name VARCHAR(20),
last_name VARCHAR(20),
preferred_region VARCHAR(25));

CREATE TABLE IF NOT EXISTS POSTS
(postId INT PRIMARY KEY NOT NULL,
title VARCHAR(25),
userID INT,
location VARCHAR(30),
region VARCHAR(30),
category VARCHAR(40),
FOREIGN KEY (userID) REFERENCES USER(userID));

INSERT INTO USER VALUES(1,'John','Smith','Toronto');

INSERT INTO POSTS VALUES(1,'Selling Airpods',1,'Toronto','Ontario','Electronics');

