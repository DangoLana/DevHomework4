-- Database: MegaSoft

-- DROP DATABASE IF EXISTS "MegaSoft";

CREATE DATABASE "MegaSoft"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Ukrainian_Ukraine.1251'
    LC_CTYPE = 'Ukrainian_Ukraine.1251'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


CREATE TABLE worker (
	ID BIGSERIAL PRIMARY KEY,
	NAME VARCHAR(1000) NOT NULL CHECK (LENGTH(NAME) >= 2),
	BIRTHDAY DATE CHECK (EXTRACT(YEAR FROM BIRTHDAY) > 1900),
	LEVEL VARCHAR(20) NOT NULL CHECK (LEVEL IN ('Trainee', 'Junior', 'Middle', 'Senior')),
	SALARY INTEGER CHECK (SALARY >= 100 AND SALARY <= 100000)

);

CREATE TABLE client (
	ID BIGSERIAL PRIMARY KEY,
	 NAME VARCHAR(1000) NOT NULL CHECK (LENGTH(NAME) >= 2)
);

CREATE TABLE project (
	ID BIGSERIAL PRIMARY KEY,
	CLIENT_ID INTEGER NOT NULL,
	START_DATE DATE,
	FINISH_DATE DATE,
	FOREIGN KEY (CLIENT_ID) REFERENCES client(ID)
);

CREATE TABLE project_worker (
	PROJECT_ID INTEGER NOT NULL,
	WORKER_ID INTEGER NOT NULL,
	PRIMARY KEY (PROJECT_ID, WORKER_ID),
	FOREIGN KEY (PROJECT_ID) REFERENCES project(ID),
	FOREIGN KEY (WORKER_ID) REFERENCES worker(ID)
);