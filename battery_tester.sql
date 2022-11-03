DROP TABLE IF EXISTS battery_information;
CREATE TABLE battery_information(
	battery_voltage decimal(6,6),
	battery_current decimal(6,6),
	battery_power decimal(6,6),
	battery_charge decimal(6,6),
	battery_discharge decimal(6,6),
	battery_watt_hours decimal(6,6),
	battery_health VARCHAR(10),
	geo_location VARCHAR(30),
	cart_longitude decimal(10,7),
	cart_latitude decimal(10,7)
);