DROP TABLE countries;
CREATE TABLE countries(
	CountryID int NOT NULL PRIMARY KEY auto_increment,
	Country varchar (100), 
    Capital varchar(100), 
	Region varchar (100)
);
SELECT * FROM countries;

INSERT INTO countries (Country,Capital,Region) VALUES ('Albania', 'Tirana', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Andorra', 'Andorra la Vella', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Austria', 'Vienna', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Belarus', 'Minsk', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Belgium', 'Brussels', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Bosnia and Herzegovina', 'Sarajevo', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Bulgaria', 'Sofia', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Croatia', 'Zagreb', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Czechia', 'Prague', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Denmark', 'Copenhagen', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Estonia', 'Tallinn', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Finland', 'Helsinki', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('France', 'Paris', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Germany', 'Berlin', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Greece', 'Athens', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Hungary', 'Budapest', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Iceland', 'Reykjavik', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Ireland', 'Dublin', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Italy', 'Rome', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Latvia', 'Riga', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Liechtenstein', 'Vaduz', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Lithuania', 'Vilnius', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Luxembourg', 'Luxembourg', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Malta', 'Valletta', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Moldova', 'Chisinau', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Monaco', 'Monaco', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Montenegro', 'Podgorica', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Netherlands', 'Amsterdam & Haag', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('North Macedonia', '	Skopje', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Norway', 'Oslo', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Poland', 'Warsaw', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Portugal', 'Lisbon', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Romania', 'Bucharest', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('San Marino', 'San Marino', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Serbia', 'Belgrade', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Slovakia', 'Bratislava', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Slovenia', 'Ljubljana', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Spain', 'Madrid', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Sweden', 'Stockholm', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Switzerland', 'Bern', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('Ukraine', 'Kiev', 'Europe');
INSERT INTO countries (Country,Capital,Region) VALUES ('United Kingdom', 'London', 'Europe');



DROP TABLE gameUsers;
CREATE TABLE gameUsers (
	UserID int PRIMARY KEY AUTO_INCREMENT, 
    UserName varchar(100),
    FullName varchar(100)
    -- Password varchar (100)
);
INSERT INTO gameUsers (UserName, FullName) VALUES ('sample', 'another sample');
SELECT * FROM gameUsers;

DROP TABLE results;
CREATE TABLE results(
	ResultID int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    Username varchar (100) REFERENCES gameUsers (username),
    Score int,
    Time date
);

-- INSERT INTO results (Username, Score, Time) VALUES ('sample', 9, 2008-10-31);

SELECT *FROM results;