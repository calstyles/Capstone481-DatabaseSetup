--Drops all tables if they exist, otherwise these lines of code are ignored
DROP TABLE IF EXISTS battery_measurements;
DROP TABLE IF EXISTS cart_location;

--This is the table that will gather the battery measurements
CREATE TABLE battery_measurements(
	battery_voltage DECIMAL(6,3),
	battery_current DECIMAL(6,3),
	battery_state_of_charge DECIMAL(6,3)
);

--This is the table that will gather the geo-location of the cart
CREATE TABLE cart_location(
	cart_longitude decimal(21,14),
	cart_latitude decimal(21,14)
);
