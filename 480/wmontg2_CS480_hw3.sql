-----------------------------------------------
-- William Montgomery
-- CS 480
-- Homework 3
-- Spring 2014
-----------------------------------------------

-- Below is the SQL for the table creation and
-- sample data that I used.  I assume that you
-- already have the data and tables created, so 
-- you can skip to the "Homework Problems" 
-- section
USE hw3;

-----------------------------------------------
-- Create the tables
-----------------------------------------------
CREATE TABLE  IF NOT EXISTS Customer
(
   SSN INT NOT NULL PRIMARY KEY,
   cname CHAR(25),
   cgender CHAR(25),
   ccity CHAR(25)
);


CREATE TABLE IF NOT EXISTS BuyVehicle
(
   SSN INT NOT NULL,
   vin INT NOT NULL,
   price DOUBLE,
   byear INT,
   PRIMARY KEY(SSN, vin)
);


CREATE TABLE IF NOT EXISTS Vehicle
(
   vin INT NOT NULL PRIMARY KEY, 
   vmaker CHAR(25), 
   vmodel CHAR(25),
   vyear INT
);


COMMIT;

-----------------------------------------------
-- Insert some data for validation
-----------------------------------------------

-- Insert some customers
INSERT INTO Customer VALUES (123450, "John", "male", "Chicago");
INSERT INTO Customer VALUES (123451, "Paul", "male", "Atlanta");
INSERT INTO Customer VALUES (123452, "Ringo", "male", "New York");
INSERT INTO Customer VALUES (123453, "George", "male", "Baltimore");
INSERT INTO Customer VALUES (123454, "Susan", "female", "Washington");
INSERT INTO Customer VALUES (123455, "Bethany", "female", "Philadelphia");
INSERT INTO Customer VALUES (123456, "Ann", "female", "Cleveland");
INSERT INTO Customer VALUES (123457, "Denise", "female", "Miami");
INSERT INTO Customer VALUES (123458, "Ed", "male", "Los Angeles");
INSERT INTO Customer VALUES (123459, "Tiffany", "female", "San Francisco");
COMMIT;

-- Insert Vehicles
INSERT INTO Vehicle VALUES (12340, "Honda", "Accord", 2005);
INSERT INTO Vehicle VALUES (12341, "Honda", "Accord", 2006);
INSERT INTO Vehicle VALUES (12342, "Honda", "Prelude", 2012);
INSERT INTO Vehicle VALUES (12343, "Honda", "Prelude", 2013);
INSERT INTO Vehicle VALUES (12344, "Nissan", "Pathfinder", 2000);
INSERT INTO Vehicle VALUES (12345, "Nissan", "Pathfinder", 2001);
INSERT INTO Vehicle VALUES (12346, "Nissan", "Pathfinder", 2002);
INSERT INTO Vehicle VALUES (12347, "Nissan", "Leaf", 2000);
INSERT INTO Vehicle VALUES (12348, "Toyota", "Land Cruiser", 2000);
INSERT INTO Vehicle VALUES (12349, "Toyota", "Camry", 1999);
COMMIT;

-- Insert Purchases
INSERT INTO BuyVehicle VALUES (123450, 12340, 21000, 2013);
INSERT INTO BuyVehicle VALUES (123450, 12341, 16000, 2005);
INSERT INTO BuyVehicle VALUES (123451, 12340, 23000, 2007);
INSERT INTO BuyVehicle VALUES (123454, 12346, 7000, 2000);
INSERT INTO BuyVehicle VALUES (123454, 12347, 6000, 2001);
INSERT INTO BuyVehicle VALUES (123453, 12347, 9000, 2003);
INSERT INTO BuyVehicle VALUES (123458, 12349, 2000, 1999);
INSERT INTO BuyVehicle VALUES (123450, 12349, 2000, 2000);
INSERT INTO BuyVehicle VALUES (123452, 12349, 2000, 2001);
INSERT INTO BuyVehicle VALUES (123455, 12349, 2000, 2002);
INSERT INTO BuyVehicle VALUES (123456, 12349, 2000, 2003);
INSERT INTO BuyVehicle VALUES (123457, 12349, 2000, 2004);
COMMIT;

-----------------------------------------------
-- Homework problems
-----------------------------------------------
-- 1
-- Find the name of those customers who bough vehicles in year 2005

-- Should return John with above data
SELECT
DISTINCT(Customer.cname) AS cname
FROM Customer NATURAL
JOIN BuyVehicle
WHERE BuyVehicle.byear = '2005';


-- 2
-- Find the names of those customers who have bought at least one vehicle made
-- by Honda, during the period from 2005 to 2010, whose price is higher than
-- $20,000

-- Should return Paul with above data
SELECT
DISTINCT(Customer.cname) as cname
FROM Customer NATURAL
JOIN BuyVehicle NATURAL
JOIN Vehicle
WHERE BuyVehicle.byear >= '2005'
AND BuyVehicle.byear <= '2010'
AND BuyVehicle.price > 20000
AND Vehicle.vmaker = 'Honda';


-- 3
-- Find the names of all customers who NEVER bought a vehicle

-- Should be Tiffany with above data
SELECT
DISTINCT(Customer.cname) AS cname
FROM Customer
WHERE SSN NOT IN (SELECT SSN
					FROM BuyVehicle);


-- 4
-- Find SSN pairs of different customers who have bought vehicles with same maker,
-- model, and year.  You should avoid printing (SSN1, SSN2) if (SSN2, SSN1) has
-- been included.

-- Should include the pairs: 
--	(123450, 123451)
--   (123453, 123454)
-- and all possible pairs from:
--   (123450, 123452, 123455, 123456, 123457, 123458)
SELECT
lbv.SSN AS SSN1, rbv.SSN AS SSN2
FROM BuyVehicle AS lbv NATURAL
JOIN Vehicle AS lv, 
		BuyVehicle AS rbv NATURAL
JOIN Vehicle AS rv
WHERE lbv.SSN < rbv.SSN
AND lv.vmaker = rv.vmaker
AND lv.vmodel = rv.vmodel
AND lv.vyear = rv.vyear
ORDER BY SSN1 ASC, SSN2 ASC;


-- 5
-- Find the SSNs of those female customers who have bought ALL vehicles made 
-- by Nissan.
					
-- Should be 123454
SELECT
c.SSN
FROM Customer AS c,
(
   SELECT
   DISTINCT SSN
   FROM BuyVehicle AS b
   WHERE NOT EXISTS
   (
      SELECT
      *
      FROM
      (
         SELECT
         DISTINCT vmodel
         FROM Vehicle
         WHERE vmaker = 'Nissan'
      )
      AS nissan_models
      WHERE nissan_models.vmodel NOT IN
      (
         SELECT
         vmodel
         FROM BuyVehicle AS bv2 NATURAL
         JOIN Vehicle
         WHERE b.SSN = bv2.SSN
      )
   )
)
AS y
WHERE c.SSN = y.SSN
AND c.cgender = 'female';

	         								   
-- 6
-- Find the makers and models of those vehicles such that every customer who
-- bought such vehicles paid at least $10,000 for them.

-- Should be Honda Accord
SELECT
v.vmaker, v.vmodel
FROM Vehicle AS v NATURAL
JOIN BuyVehicle AS bv
WHERE v.vin NOT IN
(
   SELECT
   bv2.vin
   FROM BuyVehicle AS bv2
   WHERE bv2.price < 10000
)
GROUP BY v.vmaker, v.vmodel;


-- 7
-- Find the maker and model of the most popular vehicle.  (The number of customers,
-- who bought such vehicle, is the most).

-- Should be Toyota Camry

-- This demonstrates the techniques we learned in class
SELECT
v.vmaker, v.vmodel
FROM Vehicle AS v NATURAL
JOIN BuyVehicle as bv
GROUP BY v.vmaker,
v.vmodel
	HAVING COUNT(*) >= ALL
		(SELECT COUNT(*)
			FROM BuyVehicle
			GROUP BY vin);

-- This is the way I would write this query normally
SELECT
v.vmaker, v.vmodel
FROM Vehicle AS v NATURAL
JOIN BuyVehicle as bv
GROUP BY v.vmaker, v.vmodel
ORDER BY COUNT(*) DESC
	LIMIT 1;


-- 8
-- Find the names of all customers who paid a higher price for some vehicle than
-- the average sale price of the same vehicle (same maker, same model, and 
-- same year)

-- Should be Paul and George
SELECT
DISTINCT(c1.cname) AS customer_name
FROM Customer AS c1 NATURAL
JOIN BuyVehicle AS bv1 NATURAL
JOIN Vehicle AS v1
WHERE bv1.price >
(
   SELECT
   AVG(bv2.price) AS average_price
   FROM BuyVehicle AS bv2
   WHERE bv2.VIN = bv1.VIN
);


-- 9
-- Find the vehicle with the highest sale price for each maker.

-- Should be Toyota Camry, Nissan Leaf, Honda Accord
SELECT
DISTINCT v.vmaker, v.vmodel
FROM Vehicle AS v NATURAL
JOIN BuyVehicle AS bv
WHERE bv.price >= ALL
(
   SELECT
   MAX(bv2.price)
   FROM BuyVehicle AS bv2 NATURAL
   JOIN Vehicle AS v2
   WHERE v.vmaker = v2.vmaker
   GROUP BY v2.vmaker
);


-- 10
-- Find the total sale price of all vehicles, bought by customers who bought at 
-- least three vehicles, grouped by the maker.

-- Should be (Honda, 37,000), (Toyota, 2000)
SELECT
v.vmaker, SUM(bv1.price) AS total_price
FROM BuyVehicle AS bv1 NATURAL
JOIN Vehicle AS v
WHERE bv1.SSN IN
(
   SELECT
   bv2.SSN
   FROM BuyVehicle AS bv2
   GROUP BY bv2.SSN
			HAVING COUNT(*) >= 3
)
GROUP BY v.vmaker;


-- 11
-- Find the average price of vehicles for each maker.

-- Should be (Honda, 20000), (Nissan, 7333.33), (Toyota, 2000)
SELECT
v.vmaker, AVG(bv.price) AS average_price
FROM BuyVehicle AS bv NATURAL
JOIN Vehicle AS v
GROUP BY v.vmaker;
