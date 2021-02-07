SHOW DATABASES;

DROP DATABASE IF EXISTS TP_DB;

CREATE DATABASE TP_DB;

USE TP_DB;

SHOW TABLES;

CREATE TABLE politician(

    hon_title      VARCHAR(50),
    first_name     VARCHAR(50)      NOT NULL,
    last_name      VARCHAR(50)      NOT NULL,
    title          VARCHAR(50)      NOT NULL, 
    constit        VARCHAR(100)     NOT NULL,
    province       VARCHAR(50)      NOT NULL,
    party          VARCHAR(30)      NOT NULL,
    start_time     VARCHAR(30),
    end_time     VARCHAR(30),
    PRIMARY KEY (first_name, last_name)
);

CREATE TABLE records(

    first_name     VARCHAR(20)      NOT NULL,
    last_name      VARCHAR(20)      NOT NULL,
    province       VARCHAR(30),
    constit        VARCHAR(15),
    party          VARCHAR(30),
    vote           VARCHAR(10),
    parliament_num INT              NOT NULL,
    session_num    INT,
    session_date   DATETIME,
    vote_number    INT,
    vote_subject   MEDIUMTEXT,
    vote_result    VARCHAR(20),
    yeas           INT,
    nays           INT,
    paired         INT,
    bill_num        VARCHAR(20), 
    PRIMARY KEY (first_name,last_name,parliament_num,session_num,bill_num,session_date)
);

-- CREATE TABLE votes(

--     parliament_num  INT              NOT NULL, 
--     session_num    INT              NOT NULL,
--     vote_num       INT              NOT NULL,
--     vote_subject   VARCHAR(300)     NOT NULL,
--     vote_result    CHAR(3)          NOT NULL,
--     vote_date      DATE             NOT NULL,
--     PRIMARY KEY (parliament_num, session_num, vote_num)
-- );

-- CREATE TABLE participation(

--     first_name     VARCHAR(50)      NOT NULL,
--     last_name      VARCHAR(50)      NOT NULL,
--     parliament_num INT              NOT NULL, 
--     session_num    INT              NOT NULL,
--     vote_num       INT              NOT NULL,
--     vote_casted    CHAR(3)          NOT NULL,
--     PRIMARY KEY (first_name, last_name, parliament_num, session_num, vote_num),
--     FOREIGN KEY (first_name, last_name) REFERENCES politician(first_name, last_name),
--     FOREIGN KEY (parliament_num, session_num, vote_num) REFERENCES votes(parliament_num, session_num, vote_num)
-- );

SHOW TABLES;