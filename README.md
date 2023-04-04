# Capstone481 - DatabaseSetup
For this project, I am hosting a pgAdmin database through AWS and I have built the database structure that we've been using for a set of electric vehicles for Critical Microgrid Services. 
This project will be dealing with data analysis and managing how data is getting stored inside of the database. The database currently has the following battery information inside of it:
  
  -timestamp (milliseconds UNIX epoch)
  
  -voltage
  
  -current
  
  -state of charge
  
  -speed

I have also been focused on gathering the GPS data that will be keeping track of where the cart is at all times. 
The following information from the GPS will be provided in the database:
  
  -longitude
  
  -latitude
  
  -altitude

I will be utilizing a node-red structure that will output the data along with the SQL code that I have developed to insert and update the values within the database table. What we currently have in the database is values of the battery that has been uploaded over the past month. We have made this project scalable for all of the electric vehicles that are a part of the system and modifying the database to accompany these values. Now that we have the values from the cart, I've been analyzing and testing how the data is changing over time by analyzing the data while the cart is uploading.

Voltage Equation (Voltage): V = I * R

Power Equation (Watts): W = V * I

State of Charge and Depth of Discharge Calculation Source:
https://federalbatteries.com.au/news/what-depth-discharge-and-why-it-so-important#:~:text=Depth%20of%20discharge%20is%20normally,one%20increases%2C%20the%20other%20decreases.
