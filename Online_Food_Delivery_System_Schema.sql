-- =========================
-- TABLES
-- =========================

CREATE TABLE Customer (
    Customer_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(50) UNIQUE,
    Phone VARCHAR2(15)
);

CREATE TABLE Restaurant (
    Restaurant_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Location VARCHAR2(50)
);

CREATE TABLE Menu (
    Item_ID NUMBER PRIMARY KEY,
    Restaurant_ID NUMBER,
    Item_Name VARCHAR2(50),
    Price NUMBER,
    FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant(Restaurant_ID)
);

CREATE TABLE Orders (
    Order_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Order_Date DATE,
    Total_Amount NUMBER DEFAULT 0,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Order_Details (
    Order_ID NUMBER,
    Item_ID NUMBER,
    Quantity NUMBER,
    PRIMARY KEY (Order_ID, Item_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Item_ID) REFERENCES Menu(Item_ID)
);

CREATE TABLE Payment (
    Payment_ID NUMBER PRIMARY KEY,
    Order_ID NUMBER,
    Method VARCHAR2(20),
    Status VARCHAR2(20) CHECK (Status IN ('Paid','Pending')),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

-- =========================
-- VIEW
-- =========================

CREATE VIEW Customer_Orders AS
SELECT C.Name, O.Order_ID, O.Total_Amount
FROM Customer C
JOIN Orders O ON C.Customer_ID = O.Customer_ID;

-- =========================
-- INDEX
-- =========================

CREATE INDEX idx_customer_email
ON Customer(Email);

-- =========================
-- STORED PROCEDURE
-- =========================

CREATE OR REPLACE PROCEDURE GetTotalOrders
IS
    total NUMBER;
BEGIN
    SELECT COUNT(*) INTO total FROM Orders;
    DBMS_OUTPUT.PUT_LINE('Total Orders: ' || total);
END;
/

-- =========================
-- TRIGGER
-- =========================

CREATE OR REPLACE TRIGGER update_total
AFTER INSERT ON Order_Details
FOR EACH ROW
BEGIN
    UPDATE Orders
    SET Total_Amount = Total_Amount + 
        (SELECT Price FROM Menu WHERE Item_ID = :NEW.Item_ID) * :NEW.Quantity
    WHERE Order_ID = :NEW.Order_ID;
END;
/