--Drops all tables if they exist, otherwise these lines of code are ignored; DO NOT USE UNLESS YOU ARE RESETTING THE CART SYSTEM!
DROP TABLE IF EXISTS carts CASCADE;

--This is the table that has all of our cart information
CREATE TABLE carts(
	id bigserial PRIMARY KEY,
	cartID INT
);
