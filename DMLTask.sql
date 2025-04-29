create database Task2;
use Task2;

CREATE TABLE airlines_info (
    airline_id INT(10),
    name VARCHAR(100),
    iata_code CHAR(2),
    country_code CHAR(2),
    founded_year INT
);

CREATE TABLE country_info (
    country_code CHAR(2) ,
    country_name VARCHAR(100),
    continent VARCHAR(50),
    iso_code CHAR(3),
    calling_code VARCHAR(10)
);

CREATE TABLE state_info (
    state_id INT(50),
    state_name VARCHAR(100),
    country_code CHAR(2),
    capital VARCHAR(100),
    population INT
);


ALTER TABLE airlines_info ADD ceo_name VARCHAR(100);
ALTER TABLE airlines_info ADD headquarters VARCHAR(100);
ALTER TABLE airlines_info ADD status VARCHAR(20);

ALTER TABLE country_info ADD currency VARCHAR(50);
ALTER TABLE country_info ADD language VARCHAR(50);
ALTER TABLE country_info ADD population BIGINT;

ALTER TABLE state_info ADD area_sq_km INT;
ALTER TABLE state_info ADD timezone VARCHAR(50);
ALTER TABLE state_info ADD abbreviation CHAR(2);


ALTER TABLE airlines_info RENAME COLUMN name TO airline_name;
ALTER TABLE airlines_info RENAME COLUMN iata_code TO code;
ALTER TABLE airlines_info RENAME COLUMN status TO operating_status;

ALTER TABLE country_info RENAME COLUMN country_name TO name;
ALTER TABLE country_info RENAME COLUMN continent TO region;
ALTER TABLE country_info RENAME COLUMN language TO official_language;

ALTER TABLE state_info RENAME COLUMN capital TO capital_city;
ALTER TABLE state_info RENAME COLUMN population TO total_population;
ALTER TABLE state_info RENAME COLUMN timezone TO time_zone;


INSERT INTO airlines_info VALUES
(1, 'Delta Air Lines', 'DL', 'US', 1929, 'Ed Bastian', 'Atlanta, USA', 'Active'),
(2, 'Emirates', 'EK', 'AE', 1985, 'Tim Clark', 'Dubai, UAE', 'NO-Active'),
(3, 'Lufthansa', 'LH', 'DE', 1953, 'Carsten Spohr', 'Cologne, Germany', 'Active'),
(4, 'Qatar Airways', 'QR', 'QA', 1993, 'Akbar Al Baker', 'Doha, Qatar', 'NO-Active'),
(5, 'Singapore Airlines', 'SQ', 'SG', 1972, 'Goh Choon Phong', 'Singapore', 'NO-Active'),
(6, 'American Airlines', 'AA', 'US', 1930, 'Robert Isom', 'Fort Worth, USA', 'Active'),
(7, 'Air France', 'AF', 'FR', 1933, 'Anne Rigail', 'Paris, France', 'Active'),
(8, 'British Airways', 'BA', 'UK', 1974, 'Sean Doyle', 'London, UK', 'Active'),
(9, 'Turkish Airlines', 'TK', 'TR', 1933, 'Bilal ', 'Istanbul, Turkey', 'NO-Active'),
(10, 'Etihad Airways', 'EY', 'AE', 2003, 'Antonoaldo Neves', 'Abu Dhabi, UAE', 'Active'),
(11, 'Air India', 'AI', 'IN', 1932, 'Campbell Wilson', 'Delhi, India', 'Active'),
(12, 'ANA', 'NH', 'JP', 1952, 'Yuji Hirako', 'Tokyo, Japan', 'Active'),
(13, 'Korean Air', 'KE', 'KR', 1946, 'Walter Cho', 'Seoul, South Korea', 'Active'),
(14, 'Cathay Pacific', 'CX', 'HK', 1946, 'Ronald Lam', 'Hong Kong', 'Active'),
(15, 'Garuda Indonesia', 'GA', 'ID', 1947, 'Irfan Setiaputra', 'Jakarta, Indonesia', 'NO-Active'),
(16, 'Malaysia Airlines', 'MH', 'MY', 1947, 'Izham Ismail', 'Kuala Lumpur, Malaysia', 'Active'),
(17, 'Thai Airways', 'TG', 'TH', 1960, 'Chai Eamsiri', 'Bangkok, Thailand', 'Active'),
(18, 'Swiss International', 'LX', 'CH', 2002, 'Dieter Vranckx', 'Zurich, Switzerland', 'Active'),
(19, 'Air Canada', 'AC', 'CA', 1937, 'Michael Rousseau', 'Montreal, Canada', 'Active'),
(20, 'Avianca', 'AV', 'CO', 1919, 'Adrian Neuhauser', 'Bogotá, Colombia', 'Active');

INSERT INTO country_info VALUES
('IN', 'India', 'Asia', 'IND', 91, 'INR', 'Hindi', 1390000000),
('US', 'United States', 'North America', 'USA', 1, 'USD', 'English', 331000000),
('AE', 'United Arab Emirates', 'Asia', 'ARE', 971, 'AED', 'Arabic', 9890000),
('DE', 'Germany', 'Europe', 'DEU', 49, 'EUR', 'German', 83000000),
('QA', 'Qatar', 'Asia', 'QAT', 974, 'QAR', 'Arabic', 2800000),
('SG', 'Singapore', 'Asia', 'SGP', 65, 'SGD', 'English', 5700000),
('FR', 'France', 'Europe', 'FRA', 33, 'EUR', 'French', 67000000),
('UK', 'United Kingdom', 'Europe', 'GBR', 44, 'GBP', 'English', 67000000),
('TR', 'Turkey', 'Asia', 'TUR', 90, 'TRY', 'Turkish', 85000000),
('IN', 'India', 'Asia', 'IND', 91, 'INR', 'Hindi', 1390000000),
('JP', 'Japan', 'Asia', 'JPN', 81, 'JPY', 'Japanese', 125000000),
('KR', 'South Korea', 'Asia', 'KOR', 82, 'KRW', 'Korean', 52000000),
('HK', 'Hong Kong', 'Asia', 'HKG', 852, 'HKD', 'Chinese', 7500000),
('ID', 'Indonesia', 'Asia', 'IDN', 62, 'IDR', 'Indonesian', 273000000),
('MY', 'Malaysia', 'Asia', 'MYS', 60, 'MYR', 'Malay', 33000000),
('TH', 'Thailand', 'Asia', 'THA', 66, 'THB', 'Thai', 70000000),
('CH', 'Switzerland', 'Europe', 'CHE', 41, 'CHF', 'German', 8700000),
('CA', 'Canada', 'North America', 'CAN', 1, 'CAD', 'English', 38000000),
('CO', 'Colombia', 'South America', 'COL', 57, 'COP', 'Spanish', 51000000),
('BR', 'Brazil', 'South America', 'BRA', 55, 'BRL', 'Portuguese', 211000000),
('AU', 'Australia', 'Oceania', 'AUS', 61, 'AUD', 'English', 25000000);


INSERT INTO state_info VALUES
(1, 'Karnataka', 'IN', 'Bengaluru', 67700000),
(2, 'Arunachal Pradesh', 'IN', 'Itanagar', 1570000),
(3, 'Assam', 'IN', 'Dispur', 35600000),
(4, 'Bihar', 'IN', 'Patna', 124800000),
(5, 'Chhattisgarh', 'IN', 'Raipur', 29400000),
(6, 'Goa', 'IN', 'Panaji', 1540000),
(7, 'Gujarat', 'IN', 'Gandhinagar', 63800000),
(8, 'Haryana', 'IN', 'Chandigarh', 28700000),
(9, 'Himachal Pradesh', 'IN', 'Shimla', 7300000),
(10, 'Jharkhand', 'IN', 'Ranchi', 38400000),
(11, 'Karnataka', 'IN', 'Bengaluru', 67700000),
(12, 'Kerala', 'IN', 'Thiruvananthapuram', 35600000),
(13, 'Madhya Pradesh', 'IN', 'Bhopal', 85300000),
(14, 'Maharashtra', 'IN', 'Mumbai', 125000000),
(15, 'Manipur', 'IN', 'Imphal', 3090000),
(16, 'Meghalaya', 'IN', 'Shillong', 3360000),
(17, 'Mizoram', 'IN', 'Aizawl', 1250000),
(18, 'Nagaland', 'IN', 'Kohima', 2240000),
(19, 'Odisha', 'IN', 'Bhubaneswar', 46300000),
(20, 'Punjab', 'IN', 'Chandigarh', 30100000);


select* from  airlines_info;

select* from  country_info;


select * from state_info;
