--Drops all tables if they exist, otherwise these lines of code are ignored
DROP TABLE IF EXISTS carts CASCADE;
DROP TABLE IF EXISTS battery_measurements CASCADE;
DROP TABLE IF EXISTS cart_location CASCADE;

--This is the table that has all of our cart information
CREATE TABLE carts(
	cartID INT PRIMARY KEY,
	groupID INT
);

--This is the table that will gather the battery measurements
CREATE TABLE battery_measurements(
	cartID INT,
	battery_voltage DECIMAL(6,3),
	battery_current DECIMAL(6,3),
	battery_state_of_charge DECIMAL(6,3),
	PRIMARY KEY (cartID),
	FOREIGN KEY (cartID) REFERENCES carts(cartID)
);

--This is the table that will gather the geo-location of the cart
CREATE TABLE cart_location(
	cartID INT,
	cart_longitude decimal(21,14),
	cart_latitude decimal(21,14),
	PRIMARY KEY (cartID),
	FOREIGN KEY (cartID) REFERENCES carts(cartID)
);