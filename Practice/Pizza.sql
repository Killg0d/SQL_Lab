
--Pizza_house(HouseCode, StreetNo, City) 
--Pizza_flavours(Itemcode, ItemName, Price) 
--Pizza_Flavours_Avaialble(HouseCode, Itemcode) 
--Pizza_Cust(Custid, CustName, Phone, StreetNo, City, Bonus_points) 
--Pizza_Order(Orderid, Custid, Itemcode, Order date, Qty, Amount) 
--i. Find the HouseCodes at which pizza items with price more than 500 available. 
--ii. Add 10 bonus points to the customers who placed order for amount more than 1000 during Jan-2019 to May-2019. 
--iii. Find all the Pizza Houses and available Item Names in the location where customer with name 'Ajay' lives. 
--iv. List the name of customers who have placed highest total ordered amount during month of February 2021. 
--v. Find the Item names for which total sales quantity is more than 1000 during the year 2018. 

CREATE TABLE Pizza_house (
    HouseCode VARCHAR(10) PRIMARY KEY,
    StreetNo VARCHAR(50),
    City VARCHAR(50)
);
CREATE TABLE Pizza_flavours (
    Itemcode VARCHAR(10) PRIMARY KEY,
    ItemName VARCHAR(100),
    Price DECIMAL(10, 2)
);
CREATE TABLE Pizza_Cust (
    Custid INT PRIMARY KEY,
    CustName VARCHAR(100),
    Phone VARCHAR(20),
    StreetNo VARCHAR(50),
    City VARCHAR(50),
    Bonus_points INT
);
CREATE TABLE Pizza_Order (
    Orderid INT PRIMARY KEY,
    Custid INT,
    Itemcode VARCHAR(10),
    Order_date DATE,
    Qty INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (Custid) REFERENCES Pizza_Cust(Custid),
    FOREIGN KEY (Itemcode) REFERENCES Pizza_flavours(Itemcode)
);

-- Inserting the first row
INSERT INTO Pizza_house (HouseCode, StreetNo, City)
VALUES ('PH001', '123 Main St', 'New York');

-- Inserting the second row
INSERT INTO Pizza_house (HouseCode, StreetNo, City)
VALUES ('PH002', '456 Elm St', 'Los Angeles');

-- Inserting the third row
INSERT INTO Pizza_house (HouseCode, StreetNo, City)
VALUES ('PH003', '789 Oak St', 'Chicago');

-- Inserting into Pizza_flavours Table
INSERT INTO Pizza_flavours (Itemcode, ItemName, Price)
VALUES ('PZ001', 'Margherita', 10.99);

INSERT INTO Pizza_flavours (Itemcode, ItemName, Price)
VALUES ('PZ002', 'Pepperoni', 12.99);

INSERT INTO Pizza_flavours (Itemcode, ItemName, Price)
VALUES ('PZ003', 'Vegetarian', 11.99);

-- Inserting into Pizza_Flavours_Available Table
INSERT INTO Pizza_Flavours_Available (HouseCode, Itemcode)
VALUES ('PH001', 'PZ001');

INSERT INTO Pizza_Flavours_Available (HouseCode, Itemcode)
VALUES ('PH001', 'PZ002');

INSERT INTO Pizza_Flavours_Available (HouseCode, Itemcode)
VALUES ('PH002', 'PZ003');

-- Inserting into Pizza_Cust Table
INSERT INTO Pizza_Cust (Custid, CustName, Phone, StreetNo, City, Bonus_points)
VALUES (101, 'John Doe', '555-123-4567', '123 Oak St', 'New York', 50);

INSERT INTO Pizza_Cust (Custid, CustName, Phone, StreetNo, City, Bonus_points)
VALUES (102, 'Jane Smith', '555-987-6543', '456 Maple St', 'Los Angeles', 30);

INSERT INTO Pizza_Cust (Custid, CustName, Phone, StreetNo, City, Bonus_points)
VALUES (103, 'Bob Johnson', '555-567-8901', '789 Pine St', 'Chicago', 40);
-- Inserting into Pizza_Order Table
INSERT INTO Pizza_Order (Orderid, Custid, Itemcode, Order_date, Qty, Amount)
VALUES (201, 101, 'PZ001', TO_DATE('2023-09-25', 'YYYY-MM-DD'), 2, 21.98);

INSERT INTO Pizza_Order (Orderid, Custid, Itemcode, Order_date, Qty, Amount)
VALUES (202, 102, 'PZ002', TO_DATE('2023-09-26', 'YYYY-MM-DD'), 3, 38.97);

INSERT INTO Pizza_Order (Orderid, Custid, Itemcode, Order_date, Qty, Amount)
VALUES (203, 103, 'PZ003', TO_DATE('2023-09-27', 'YYYY-MM-DD'), 1, 11.99);

-- Inserting customer records
INSERT INTO Pizza_Cust (Custid, CustName, Phone, StreetNo, City, Bonus_points)
VALUES (101, 'John Doe', '555-123-4567', '123 Oak St', 'New York', 0);

INSERT INTO Pizza_Cust (Custid, CustName, Phone, StreetNo, City, Bonus_points)
VALUES (102, 'Jane Smith', '555-987-6543', '456 Maple St', 'Los Angeles', 0);

-- Inserting order records for January 2019 to May 2019
-- Customer 101 placed orders with amounts more than 1000
INSERT INTO Pizza_Order (Orderid, Custid, Itemcode, Order_date, Qty, Amount)
VALUES (201, 101, 'PZ001', TO_DATE('2019-01-15', 'YYYY-MM-DD'), 2, 2000.00);

-- Customer 102 placed orders with amounts more than 1000
INSERT INTO Pizza_Order (Orderid, Custid, Itemcode, Order_date, Qty, Amount)
VALUES (202, 102, 'PZ002', TO_DATE('2019-04-10', 'YYYY-MM-DD'), 3, 1200.00);

-- Customer 101 placed another order with amount more than 1000
INSERT INTO Pizza_Order (Orderid, Custid, Itemcode, Order_date, Qty, Amount)
VALUES (203, 101, 'PZ003', TO_DATE('2019-05-20', 'YYYY-MM-DD'), 1, 1500.00);

-- Customer 103 placed orders, but none with amount more than 1000
INSERT INTO Pizza_Order (Orderid, Custid, Itemcode, Order_date, Qty, Amount)
VALUES (204, 103, 'PZ001', TO_DATE('2019-02-05', 'YYYY-MM-DD'), 2, 600.00);

-- Customer 103 placed orders, but none with amount more than 1000
INSERT INTO Pizza_Order (Orderid, Custid, Itemcode, Order_date, Qty, Amount)
VALUES (205, 103, 'PZ002', TO_DATE('2019-03-12', 'YYYY-MM-DD'), 3, 1500.00);

-- Inserting customer records
INSERT INTO Pizza_Cust (Custid, CustName, Phone, StreetNo, City, Bonus_points)
VALUES (104, 'Ajay', '555-111-2222', '456 Oak St', 'New York', 0);

-- Inserting Pizza House records
INSERT INTO Pizza_house (HouseCode, StreetNo, City)
VALUES ('PH001', '123 Main St', 'New York');

-- Inserting available Pizza Flavours
-- Pizza House PH001 has Margherita and Pepperoni available
INSERT INTO Pizza_Flavours_Available (HouseCode, Itemcode)
VALUES ('PH001', 'PZ001');

INSERT INTO Pizza_Flavours_Available (HouseCode, Itemcode)
VALUES ('PH001', 'PZ002');
