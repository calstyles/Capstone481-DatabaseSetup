DROP TABLE IF EXISTS battery_information;
CREATE TABLE battery_information(
	battery_voltage decimal(6,6) NOT NULL,
	battery_current decimal(6,6) NOT NULL,
	battery_power decimal(6,6) NOT NULL,
	battery_charge decimal(6,6) NOT NULL,
	battery_discharge decimal(6,6) NOT NULL,
	battery_watt_hours decimal(6,6) NOT NULL,
	battery_health VARCHAR NOT NULL,
	cart_longitude decimal(10,7),
	cart_latitude decimal(10,7)
);
