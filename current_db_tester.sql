--Table Creation and Updates
DROP TABLE IF EXISTS battery_measurements;
DROP TABLE IF EXISTS cart_location;

CREATE TABLE battery_measurements(
	battery_voltage DECIMAL(6,3),
	battery_current DECIMAL(6,3),
	battery_state_of_charge DECIMAL(6,3)
);

CREATE TABLE cart_location(
	cart_longitude decimal(21,14),
	cart_latitude decimal(21,14)
);

--Table Queries
SELECT * FROM battery_measurements;
SELECT * FROM cart_location;

--Voltage, Volts
SELECT battery_voltage
FROM battery_measurements;

--Current, Amps
SELECT battery_current
FROM battery_measurements;

--Resistance, Ohms
SELECT battery_voltage/battery_current AS "battery_resistance"
FROM battery_measurements;

--Power, Watts
SELECT battery_voltage * battery_current AS "battery_power"
FROM battery_measurements;

--State of Charge
SELECT battery_state_of_charge
FROM battery_measurements;

--Depth of Discharge
SELECT 100 - battery_state_of_charge AS "battery_depth_of_discharge"
FROM battery_measurements;
