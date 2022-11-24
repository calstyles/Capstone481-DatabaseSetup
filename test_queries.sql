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
