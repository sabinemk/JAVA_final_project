DROP TABLE countries;
CREATE TABLE countries(
	CountryID int NOT NULL PRIMARY KEY auto_increment,
	Country varchar (100), 
    Capital varchar(100), 
	Region varchar (100)
);
SELECT * FROM countries;

INSERT INTO countries (Country,Capital,Region) VALUES ('Afghanistan', 'Kabul', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Azerbaijan', 'Baku', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Armenia', 'Yerevan', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Bahrain', 'Manama', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Bangladesh', 'Dhaka', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Bhutan', 'Thimphu', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Brunei', 'Bandar Seri Begawan', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Cambodia', 'Phnom Penh', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('China', 'Beijing', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Georgia', 'Tbilisi', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('India', 'New Delhi', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Indonesia', 'Jakarta', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Iran', 'Tehran', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Israel', 'Jerusalem', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Japan', 'Tokyo', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Jordan', 'Amman', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Kazakhstan', 'Astana', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('North Korea', 'Pyongyang', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('South Korea', 'Seoul', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Kuwait', 'Kuwait City', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Kyrgyzstan', 'Bishkek', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Laos', 'Vientiane', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Lebanon', 'Beirut', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Malaysia', 'Kuala Lumpur', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Maldives', 'Malé', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Mongolia', 'Ulaanbaatar', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Myanmar', 'Naypyidaw', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Nepal', 'Kathmandu', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Oman', 'Muscat', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Pakistan', 'Islamabad', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Palestine', 'East Jerusalem', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Russia', 'Moscow', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Philippines', 'Manila', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Qatar', 'Doha', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Saudi Arabia', 'Riyadh', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Singapore', 'Singapore', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Sri Lanka', 'Sri Jayawardenapura Kotte', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Syria', 'Damascus', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Taiwan', 'Taipei', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Tajikistan', 'Dushanbe', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Thailand', 'Bangkok', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Turkey', 'Ankara', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Turkmenistan', 'Ashgabat', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('United Arab Emirates', 'Abu Dhabi', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Uzbekistan', 'Tashkent', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Vietnam', 'Hanoi', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Yemen', 'Sana\'a', 'Asia');
INSERT INTO countries (Country,Capital,Region) VALUES ('Argentina', 'Buenos Aires', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Bolivia', 'Sucre', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Brazil', 'Brasilia', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Venezuela', 'Caracas', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Guyana', 'Georgetown', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Colombia', 'Bogota', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Paraguay', 'Asuncion', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Peru', 'Lima', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Suriname', 'Paramaribo', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Uruguay', 'Montevideo', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Chile', 'Santiago', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Ecuador', 'Quito', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('French Guiana', 'Cayenne', 'South America');
INSERT INTO countries (Country,Capital,Region) VALUES ('United States', 'Washington', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Antigua and Barbuda', 'Saint Johns', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Bahamas', 'Nassau', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Barbados', 'Bridgetown', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Belize', 'Belmopan', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Dominica', 'Roseau', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Dominican Republic', 'Santo Domingo', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Grenada', 'St.Georges', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Guatemala', 'Guatemala City', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Haiti', 'Port-Au-Prince', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Honduras', 'Tegucigalapa', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Jamaica', 'Kingston', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Canada', 'Ottawa', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Costa Rica', 'San Jose', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Cuba', 'Havana', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Mexico', 'Mexico City', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Nicaragua', 'Managua', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Panama', 'Panama City', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('El Salvador', 'San Salvador', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Saint Kitts and Nevis', 'Basseterre', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Saint Lucia', 'Castries', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Saint Vincent and the Grenadines', 'Kingstown', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Trinidad and Tobago', 'Port of Spain', 'North America');
INSERT INTO countries (Country,Capital,Region) VALUES ('Algeria', 'Algiers', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Egypt', 'Cairo', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Libya', 'Tripoli', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Morocco', 'Rabat', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Sudan', 'Khartoum', 'Africa');	
INSERT INTO countries (Country,Capital,Region) VALUES ('Tunisia', 'Tunis', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Burundi', 'Gitega', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Comoros', 'Moroni', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Djibouti', 'Djibouti', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Eritrea', 'Asmara', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Ethiopia', 'Addis Ababa', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Kenya', 'Nairobi', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Madagascar', 'Antananarivo', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Malawi', 'Lilongwe', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Mauritius', 'Port Louis', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Mozambique', 'Maputo', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Rwanda', 'Kigali', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Somalia', 'Mogadishu', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('South Sudan', 'Juba Juba', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Tanzania', 'Dodoma Dodoma', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Seychelles', 'Victoria', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Uganda', 'Kampala', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Zambia', 'Lusaka', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Zimbabwe', 'Harare', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Angola', 'Luanda', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Cameroon', 'Yaounde', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Central African Republic', 'Bangui', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Chad', 'N’Djamena', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Botswana', 'Gaborone', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Burkina Faso', 'Uagadugu', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Cabo Verde', 'Praia', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Congo, The Democratic Republic', 'Kinshasa', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Congo Republic', 'Brazzaville', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Cote d’Ivoire', 'Yamoussoukro', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Equatorial Guinea', 'Malabo', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Eswatini(Swaziland)', 'Mbabane', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Gabon', 'Libreville', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Gambia', 'Banjul', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Ghana', 'Accra', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Guinea', 'Conakry', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Guinea-Bissau', 'Bissau', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Lesotho', 'Maseru', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Liberia', 'Monrovia', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Mali', 'Bamako', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Mauritania', 'Nouakchott', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Namibia', 'Windhoek', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Niger', 'Niamey', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Nigeria', 'Abuja', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Sao Tome and Principe', 'Sao Tome', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Senegal', 'Dakar', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Sierra Leone', 'Free Town', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('South Africa', 'Pretoria ', 'Africa');
INSERT INTO countries (Country,Capital,Region) VALUES ('Togo', 'Lome', 'Africa');
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
INSERT INTO countries (Country,Capital,Region) VALUES ('Netherlands', 'Amsterdam', 'Europe');
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
