CREATE DATABASE Pizza;
USE Pizza;

-- 1st Table --
CREATE TABLE Employees(
employee_id INT PRIMARY KEY,
first_name VARCHAR(40),
last_name VARCHAR(40),
job_title VARCHAR(40),
salary DECIMAL(5,3),
birth_date DATE,
address VARCHAR(40),
city VARCHAR(40),
postalcode VARCHAR(40)
);

INSERT INTO Employees VALUES
('111', 'Jeff', 'Jones', 'Chef', '41.000', '1977-01-01', '30 Darling Road', 'London', 'SE13 3TN'),
('222', 'Natasha', 'Marks', 'Head Chef', '42.000', '1978-01-01', '09 Dalrymple Road', 'London', 'SE13 9HD'),
('333', 'John', 'Stewart', 'Waiter', '35.000', '1980-01-01', '02 Signal Road', 'Essex', 'SE13 8GD'),
('444', 'Xanthe', 'Kutcher', 'Waitress', '35.000', '1980-01-01', '11 Ralph Road', 'London', 'SE13 3AF'),
('555', 'George', 'Lowson', 'Chef', '30.000', '1980-04-11', '34 Army Road', 'London', 'SE13 6EK'),
('666', 'Lewis', 'Mitchell', 'Chef', '30.000', '1980-03-11', '54 Lawrence Road', 'Essex', 'SE13 6ND'),
('777', 'Hugo', 'Smith', 'Administrator', '60.000', '1980-08-17', '23 Honesty Road', 'London', 'SE16 6GN'),
('888', 'Sabela', 'Torres', 'Accountant', '70.000', '1980-03-23', '86 Love Lane', 'Kent', 'SE18 6FC'),
('999', 'Martina', 'James', 'Head Chef', '42.000', '1967-06-11', '23 Start Street', 'London', 'SE13 66R'),
('1000', 'Ste', 'Stone', 'Chef', '40.000', '2000-01-12', '64 Data Street', 'London', 'SE13 6DA'),
('1111', 'Joseph', 'Jon', 'Chef', '41.000', '1977-01-01', '30 Spray Road', 'London', 'SE13 3TN'),
('2222', 'Nate', 'Mass', 'Head Chef', '42.000', '1978-01-01', '09 Tree Road', 'London', 'SE13 9HD'),
('3333', 'Joe', 'Wart', 'Waiter', '35.000', '1980-01-01', '02 Mirror Road', 'Kent', 'SE13 8GD'),
('4444', 'Xen', 'Cher', 'Waitress', '35.000', '1980-01-01', '11 Lamp Road', 'London', 'SE13 3AF'),
('5555', 'Jen', 'Son', 'Chef', '30.000', '1980-04-11', '34 Donut Road', 'Essex', 'SE13 6EK'),
('6666', 'Len', 'Shell', 'Chef', '30.000', '1980-03-11', '54 Code Road', 'Kent', 'SE13 6ND'),
('7777', 'Roger', 'Mitch', 'Administrator', '60.000', '1980-08-17', '23 Roll Road', 'London', 'SE16 6CD'),
('8888', 'Ela', 'Tour', 'Accountant', '70.000', '1980-03-23', '86 Royce Lane', 'Kent', 'SE18 6HG'),
('9999', 'Mart', 'Jam', 'Head Chef', '42.000', '1967-06-11', '23 Module Street', 'Kent', 'SE13 6GH'),
('10000', 'Steven', 'Sore', 'Chef', '40.000', '2000-01-12', '64 Course Street', 'Kent', 'SE13 6AS');

-- 2nd Table -- 
CREATE TABLE Customers(
customer_id INT PRIMARY KEY,
order_id INT,
first_name VARCHAR(40),
last_name VARCHAR(40),
mobile_number VARCHAR(11),
address VARCHAR(40),
city VARCHAR(40),
postalcode VARCHAR(40)
);

INSERT INTO Customers VALUES
('1', '4', 'Jose', 'Jones', '07723432453', '12 Sweet Road', 'London', 'SE13 3TN'),
('2', '5', 'Nigel', 'Marks', '07732423423', '30 Museum Street', 'London', 'SE13 4FN'),
('3', '3', 'Zack', 'Lewes', '07732423423', '20 Thamesview Road', 'London', 'SE13 3NF'),
('4', '2', 'Florence', 'Sid', '07732423423', '10 River Lane', 'Essex', 'CM5 3AF'),
('5', '9', 'Adele', 'Bell', '07732833420', '12 Long Road', 'Essex', 'CM0 6EK'),
('6', '10', 'Louie', 'Cruise', '07772423639', '20 Faraday Road', 'Essex', 'CM6 6ND'),
('7', '7', 'Helen', 'Presley', '07757427422', '22 Darwin Street', 'London', 'SE16 6GN'),
('8', '1', 'Paulina', 'Day', '07732423442', '12 Shakespeare Road', 'London', 'SE18 6FC'),
('9', '6', 'Evie', 'Steer', '07732423443', '10 Single Lane', 'Surrey', 'KT1 66R'),
('10', '8', 'Antonio', 'Rock', '07737323423', '12 Liver Road', 'London', 'SE13 6DA');

ALTER TABLE Customers
ADD FOREIGN KEY (order_id) REFERENCES Orders(order_id);

-- 3rd Table -- 
CREATE TABLE Menu(
pizza_id VARCHAR(14) PRIMARY KEY,
pizza_name VARCHAR(42),
pizza_description VARCHAR(97),
employee_id INT,
FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
 
INSERT INTO Menu VALUES
('1', 'The Hawaiian Pizza', 'Sliced Ham, Pineapple, Mozzarella Cheese', '111'),
('2', 'The Classic Deluxe Pizza', 'Pepperoni, Mushrooms, Red Onions, Red Peppers, Bacon', '666'),
('3', 'The Five Cheese Pizza', 'Mozzarella Cheese, Provolone Cheese, Smoked Gouda Cheese, Romano Cheese, Blue Cheese, Garlic', '1000'),
('4', 'The Italian Supreme Pizza', 'Calabrese Salami, Capocollo, Tomatoes, Red Onions, Green Olives, Garlic','111'),
('5', 'The Mexicana Pizza', 'Tomatoes, Red Peppers, Jalapeno Peppers, Red Onions, Cilantro, Corn, Chipotle Sauce, Garlic', '666'),
('6', 'The Thai Chicken Pizza', 'Chicken, Pineapple, Tomatoes, Red Peppers, Thai Sweet Chilli Sauce', '111'),
('7', 'The Prosciutto and Arugula Pizza', 'Prosciutto di San Daniele, Arugula, Mozzarella Cheese', '999');

-- 4th Table --
CREATE TABLE Orders(
order_id INT PRIMARY KEY,
pizza_id VARCHAR(14),
quantity INT,
order_date DATE,
order_time VARCHAR(8),
Total DECIMAL(4, 2),
Size_id VARCHAR(4)
);

INSERT INTO Orders VALUES
('1', '1', '1', '2022-11-27', '11:57:10', '13.25','2'),
('2', '2', '1', '2022-11-27', '11:53:40', '13.25','2'),
('3', '3', '1', '2022-11-27', '11:54:40', '20.75','3'),
('4', '4', '2', '2022-11-27', '11:51:40', '41.50','2'),
('5', '5', '1', '2022-11-28', '11:57:40', '13.25','2'),
('6', '6', '1', '2022-11-28', '11:57:40', '20.75','3'),
('7', '4', '1', '2022-11-28', '12:12:28', '13.25','2'),
('8', '7', '1', '2022-11-28', '12:12:28', '20.75','3'),
('9', '4', '1', '2022-11-28', '12:16:31', '13.25','2'),
('10', '4', '1', '2022-11-28', '12:31:30', '13.25','2'),
('11', '1', '1', '2022-11-28', '11:17:40', '13.25','2'),
('12', '2', '1', '2022-11-28', '11:37:40', '13.25','2'),
('13', '3', '1', '2022-11-25', '11:47:40', '20.75','3'),
('14', '4', '1', '2022-11-25', '11:37:40', '20.75','3'),
('15', '5', '1', '2022-11-26', '11:27:40', '13.25','2'),
('16', '6', '1', '2022-11-26', '11:54:40', '20.75','3'),
('17', '4', '1', '2022-11-26', '12:22:48', '13.25','2'),
('18', '7', '1', '2022-11-29', '12:42:38', '20.75','3'),
('19', '4', '1', '2022-11-29', '12:46:31', '13.25','2'),
('20', '4', '1', '2022-11-29', '12:51:30', '13.25','2');


ALTER TABLE Orders
ADD CONSTRAINT FK_Pizza_ID 
FOREIGN KEY (pizza_id) REFERENCES  Menu(pizza_id);

ALTER TABLE Orders
ADD CONSTRAINT FK_Size_id
FOREIGN KEY (size_id) REFERENCES  Pizza_sizes(Size_id);

-- 5th Table -- 
CREATE TABLE Pizza_sizes (
Size_id VARCHAR(4) PRIMARY KEY,
pizza_type VARCHAR(10),
unit_price DECIMAL(4, 2)
);

INSERT INTO Pizza_sizes VALUES
('1', 'Slice', '11'),
('2', 'Half', '13.25'),
('3', 'Whole', '20.75');


-- Core Req - Using any type of the joins create a view that combines multiple tables in a logical way --
-- Inner join -- combines customers information with their pizza name and orders --
SELECT c.customer_id AS 'Customer ID', m.pizza_name AS 'Pizza name', c.first_name AS 'Customers First Name', c.last_name as 'Customers Last Name', o.order_date AS 'Order date'
FROM Customers c
INNER JOIN Orders o
ON c.order_id = o.order_id
INNER JOIN Menu m
ON m.pizza_id = o.pizza_id;

-- Core Req - In your database, create a stored function that can be applied to a query in your DB -- 
 -- Stored function (SUM), I have the total sales for orders on the 28th Nov --
SELECT SUM(Total) AS 'Total Sales' FROM Orders
WHERE order_date = "2022-11-28";

-- Core Req - Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis --
-- Subquery for the staff member and salary of chef who makes The Hawaiian Pizza --
SELECT e.first_name, e.last_name, e.salary
FROM employees e
WHERE employee_id IN (
	SELECT employee_id
	FROM Menu m
	WHERE pizza_name = "The Hawaiian Pizza");

-- My 1st Advanced option - In your database, create a trigger and demonstrate how it runs --
-- Triggers - I created a table to check changes to the Employees table --

CREATE TABLE employees_check (
    check_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL  
   );
    
ALTER TABLE employees_check
ADD CONSTRAINT FK_employee_id
FOREIGN KEY (employee_id) REFERENCES Employees(employee_id);
    
    CREATE TRIGGER before_employee_update 
    BEFORE UPDATE ON employees
    FOR EACH ROW 
 INSERT INTO employees_check
 SET action= 'update',
     employee_id = OLD.employee_id,
     last_name = OLD.last_name,
     changedat = NOW();

-- Now if we change the last name of one of the employees it will be updated in the employee checks table --
UPDATE employees 
SET 
    last_Name = 'Smith'
WHERE
    employee_id = 1111;

SELECT * FROM employees_check;

-- My 2nd advanced option -- In your database, create a stored procedure and demonstrate how it runs --
-- This is a stored procedure by salary of employees-- 

DELIMITER $$

CREATE PROCEDURE GetEmployees()
BEGIN
	SELECT 
		first_name, 
		last_name, 
		salary
		FROM
		employees
	ORDER BY salary DESC;    
END$$
DELIMITER ;

CALL GetEmployees();

-- 3rd Advanced Options - Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis --
-- I have grouped the customers table by city --

SELECT COUNT(Customer_ID), City
FROM Customers
GROUP BY City;

SELECT AVG(salary), City
FROM employees
WHERE job_title = 'Chef'
GROUP BY City;





