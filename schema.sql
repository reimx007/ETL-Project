drop table crime;
drop table income;
drop table accidents;
-- Create tables for data to be loaded into
create table crime(
	id INT PRIMARY KEY,
	year int,
	updated_county text,
	VehicleTheft_sum int,
	Violent_sum int
);
CREATE TABLE income (
  id INT PRIMARY KEY,
  full_name TEXT,
  med_HHI INT,
  county TEXT
);
CREATE TABLE accidents (
  ID TEXT PRIMARY KEY,
  Start_Time TEXT,
  End_Time TEXT,
  Description TEXT,
  County TEXT
);
-- Join the tables

SELECT crime.year, crime.updated_county, income.med_HHI, accidents.description, accidents.Start_Time, accidents.End_Time, crime.VehicleTheft_sum, crime.Violent_sum
FROM crime
JOIN income ON crime.updated_county = income.county
JOIN accidents on income.county = accidents.County
