-- cartid is set to 1 in these tests to specify the prototype that we are analyzing for this project
-- To analyze more carts, we would need to set cartid to the value that it is assigned when it is added to the database 

--Table Queries For All Carts
SELECT * FROM carts;
SELECT * FROM battery_measurements;

--Voltage, Volts
SELECT battery_voltage
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--Current, Amps
SELECT battery_current
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--Resistance, Ohms
SELECT battery_voltage/battery_current AS "battery_resistance"
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--Power, Watts
SELECT battery_voltage * battery_current AS "battery_power"
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--State of Charge
SELECT battery_state_of_charge
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--Depth of Discharge
SELECT 100 - battery_state_of_charge AS "battery_depth_of_discharge"
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--Geo-location, Longitude
SELECT cart_longitude 
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--Geo-location, Latitude
SELECT cart_latitude 
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--Altitude
SELECT altitude
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--Speed
SELECT speed
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;

--Date Inserted
SELECT DATE('1970-01-01') + (timestamp * INTERVAL '1 millisecond') 
AS time_inserted
FROM battery_measurements
WHERE cartid = 1
ORDER BY timestamp DESC;
