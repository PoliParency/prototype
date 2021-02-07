USE TP_DB;

-- Importing party leaders
LOAD DATA LOCAL INFILE 'house-officers.csv'
    INTO TABLE politician
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'
    IGNORE 1 LINES;

SELECT * FROM politician;

-- Importing leader votes
LOAD DATA LOCAL INFILE 'cleanVotes.csv'
    INTO TABLE records
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'
    -- ENCLOSED BY '"'

    -- IGNORE 1 LINES;

SELECT * FROM records;
-- LOAD DATA LOCAL INFILE 'house-officers .txt'
--     INTO TABLE politician
--     FIELDS TERMINATED BY ','
--     LINES TERMINATED BY '\n'
--     IGNORE 1 LINES
--     (hon_title,first_name, last_name, title, constit, province, party, @dummy, @dummy);

    -- (hon_title,first_name, last_name, title, constit, province, party, @dummy, @dummy);


-- INSERT INTO politician VALUES("OMAR","ALGHABRA", "Ontario", "Mississauga Center","Liberal");
-- INSERT INTO politician VALUES("JAMES","MALONEY", "Ontario", "Etobicoke-Lakeshore","Liberal");
-- INSERT INTO politician VALUES("KAREN","VECCHIO", "Ontario", "Elgin-Middlesex-London","Conservative");

gcloud sql import csv myinstance gs://poliparancy/house-officers.csv --database=TP_DB, -d TP_DB --table=politician