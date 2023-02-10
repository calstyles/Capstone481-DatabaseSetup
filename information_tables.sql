--Drops all tables if they exist, otherwise these lines of code are ignored; USE IF YOU ARE RESETTING THE battery_measurements AND geo-location TABLES!
DROP TABLE IF EXISTS battery_measurements CASCADE;
DROP TABLE IF EXISTS cart_location CASCADE;

--This is the table that will gather the battery measurements
CREATE TABLE battery_measurements(
	cartID INT,
	timestamp BIGINT,
	battery_voltage DECIMAL(6,3),
	battery_current DECIMAL(6,3),
	battery_state_of_charge DECIMAL(6,3),
	FOREIGN KEY (cartID) REFERENCES carts(id)
);

--This is the table that will gather the geo-location of the cart
CREATE TABLE cart_location(
	cartID INT,
	timestamp BIGINT,
	cart_longitude decimal(21,14),
	cart_latitude decimal(21,14),
	FOREIGN KEY (cartID) REFERENCES carts(id)
);