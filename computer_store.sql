DROP DATABASE if exists manufacturers;
CREATE DATABASE computer_store;

DROP TABLE if exists manufacturers;
CREATE TABLE manufacturers (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
	);

DROP TABLE if exists products;
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	price REAL NOT NULL,
	manufacturer_id INTEGER NOT NULL, 
	FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id)
	);


INSERT INTO manufacturers (name) VALUES ('Sony');
INSERT INTO manufacturers (name) VALUES ('Creative Labs');
INSERT INTO manufacturers (name) VALUES ('Hewlett-Packard');
INSERT INTO manufacturers (name) VALUES ('Iomega');
INSERT INTO manufacturers (name) VALUES ('Fujitsu');
INSERT INTO manufacturers (name) VALUES ('Winchester');
INSERT INTO manufacturers (name) VALUES ('Apple');


INSERT INTO products (name,price,manufacturer_id) VALUES ('Hard drive',240,5);
INSERT INTO products (name,price,manufacturer_id) VALUES ('Memory',120,6);
INSERT INTO products (name,price,manufacturer_id) VALUES ('ZIP drive',150,4);
INSERT INTO products (name,price,manufacturer_id) VALUES ('Floppy disk',5,6);
INSERT INTO products (name,price,manufacturer_id) VALUES ('Monitor',240,1);
INSERT INTO products (name,price,manufacturer_id) VALUES ('DVD drive',180,2);
INSERT INTO products (name,price,manufacturer_id) VALUES ('CD drive',90,2);
INSERT INTO products (name,price,manufacturer_id) VALUES ('Printer',270,3);
INSERT INTO products (name,price,manufacturer_id) VALUES ('Toner cartridge',66,3);
INSERT INTO products (name,price,manufacturer_id) VALUES ('DVD burner',180,2);

--1
SELECT name FROM products;

--2
SELECT name, price FROM products;

--3
SELECT name FROM products WHERE price <= 200;

--4
SELECT name FROM products WHERE price BETWEEN 60 AND 120;

--5
UPDATE products SET price = price * 100;
SELECT name, price FROM products; 

--6
SELECT AVG (price) FROM products; 


--7
SELECT AVG (price) FROM products WHERE manufacturer_id = 2;

--8
SELECT COUNT(*) FROM products WHERE price >=180;

--9
SELECT name, price FROM products WHERE price >= 180 ORDER BY price DESC, name ASC;

--10
SELECT * FROM products INNER JOIN manufacturers ON manufacturers.id = manufacturer_id;

--10 bez dublowania ID
SELECT products.name,price,manufacturer_id, manufacturers.name FROM products INNER JOIN manufacturers ON manufacturers.id = manufacturer_id;

--11 bez dublowania ID
SELECT products.name,price, manufacturers.name FROM products INNER JOIN manufacturers ON manufacturers.id = manufacturer_id;

--15 bez nazwy na razie
SELECT  name, MIN(price)  FROM products;


--17
SELECT  * FROM manufacturers LEFT OUTER JOIN products ON manufacturers.id = manufacturer_id WHERE products.name IS NULL;

--18
INSERT INTO products (name,price,manufacturer_id) VALUES ('Loudspeakers',70,2);
--zeby sprawdzic czy jest
SELECT * FROM products WHERE manufacturer_id = 2;


--19
UPDATE products SET name = 'Laser Printer' WHERE id = 8;
--zeby sprawdzic
SELECT name,price,manufacturer_id FROM products WHERE id = 8;

--20
UPDATE products SET price = (9 * price)/ 10;
--zeby sprawdzic
SELECT name,price,manufacturer_id FROM products;

--21
UPDATE products SET price = (9 * price)/ 10 WHERE price >= 120;
--zeby sprawdzic
SELECT name,price,manufacturer_id FROM products;
