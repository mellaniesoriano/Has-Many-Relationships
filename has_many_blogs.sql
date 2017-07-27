DROP USER IF EXISTS has_many_user;
CREATE USER has_many_user;

DROP DATABASE IF EXISTS has_many_blogs;
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

DROP TABLE IF EXISTS users;
CREATE TABLE users (

);