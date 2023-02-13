--Drops all tables if they exist, otherwise these lines of code are ignored; USE IF YOU ARE RESETTING THE battery_measurements AND geo-location TABLES!
DROP TABLE IF EXISTS carts CASCADE;

--This is the table that has all of our cart information
CREATE TABLE carts(
	id bigserial PRIMARY KEY,
	cartID INT
);
