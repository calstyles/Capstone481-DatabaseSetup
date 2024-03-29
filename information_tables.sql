--Drops all tables if they exist, otherwise these lines of code are ignored; USE IF YOU ARE RESETTING THE battery_measurements TABLE!
DROP TABLE IF EXISTS battery_measurements CASCADE;

--This is the table that will gather the battery measurements
CREATE TABLE battery_measurements(
	cartID INT,
	timestamp BIGINT,
	battery_voltage DECIMAL(6,3),
	battery_current DECIMAL(6,3),
	battery_state_of_charge DECIMAL(6,3),
	cart_longitude DECIMAL(21,14),
	cart_latitude DECIMAL(21,14),
	altitude DECIMAL(6, 3), 
	speed DECIMAL(6, 3),
	FOREIGN KEY (cartID) REFERENCES carts(id)
);
