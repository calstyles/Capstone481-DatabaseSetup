--Table Queries For All Carts
SELECT * FROM carts;
SELECT * FROM battery_measurements;
SELECT * FROM cart_location;

--Voltage, Volts
SELECT battery_voltage
FROM battery_measurements
WHERE cartid = 1;

--Current, Amps
SELECT battery_current
FROM battery_measurements
WHERE cartid = 1;

--Resistance, Ohms
SELECT battery_voltage/battery_current AS "battery_resistance"
FROM battery_measurements
WHERE cartid = 1;

--Power, Watts
SELECT battery_voltage * battery_current AS "battery_power"
FROM battery_measurements
WHERE cartid = 1;

--State of Charge
SELECT battery_state_of_charge
FROM battery_measurements
WHERE cartid = 1;

--Depth of Discharge
SELECT 100 - battery_state_of_charge AS "battery_depth_of_discharge"
FROM battery_measurements
WHERE cartid = 1;

--Geo-location Longitude
SELECT cart_longitude 
FROM cart_location
WHERE cartid = 1;

--Geo-location latitude
SELECT cart_latitude 
FROM cart_location
WHERE cartid = 1;

-- cartid is set to 1 in these tests to specify the prototype that we are analyzing for this project
-- To analyze more carts, we would need to set cartid to the value that it is assigned when it is added to the database 
