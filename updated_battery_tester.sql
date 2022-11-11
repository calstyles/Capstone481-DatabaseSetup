DROP TABLE IF EXISTS battery_measurements;
DROP TABLE IF EXISTS battery_percentages;
DROP TABLE IF EXISTS cart_location;

CREATE TABLE battery_measurements(
	cart VARCHAR(30),
	battery_voltage DECIMAL(6,3),
	battery_current DECIMAL(6,3),
	battery_resistance DECIMAL(6,3),
	battery_power DECIMAL(6,3),
	battery_watt_hours DECIMAL(6,3)
);

CREATE TABLE battery_percentages(
	cart VARCHAR(30),
	battery_state_of_charge DECIMAL(6,3),
	battery_depth_of_discharge DECIMAL(6,3),
	battery_health NUMERIC(5, 2)
);

CREATE TABLE cart_location(
	cart VARCHAR(30),
	cart_geo_location VARCHAR(30),
	cart_longitude decimal(10,7),
	cart_latitude decimal(10,7)
);

SELECT * FROM battery_information;
SELECT * FROM battery_percentages;
SELECT * FROM cart_location;

INSERT VALUES INTO battery_information(

);
