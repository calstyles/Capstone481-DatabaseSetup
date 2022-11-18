DROP TABLE battery_measurements;

CREATE TABLE battery_measurements(
-- 	cart VARCHAR(30),
	battery_voltage DECIMAL(6,3),
	battery_current DECIMAL(6,3),
-- 	battery_resistance DECIMAL(6,3),
	battery_state_of_charge DECIMAL(6,3)
-- 	battery_watt_hours DECIMAL(6,3)
);


SELECT * FROM battery_measurements;
